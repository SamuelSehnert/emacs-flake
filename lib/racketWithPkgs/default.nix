pkgs:
let
  # Take each definition and add the name field equal to it's attrName.
  # Also convert array of string name deps to builds
  # Used for building
  racketPkgTransformed =
    let
      racketPkgDefs = (import ./racket-package-defs.nix) {
        fetchzip = pkgs.fetchzip;
      };
      depsAttrExists = def: (builtins.hasAttr "deps" def);
    in
    (builtins.foldl'
      (acc: cur: acc //
        {
          "${cur}" = (racketPkgDefs."${cur}" //
            {
              name = cur;
              deps = builtins.filter (x: x != "") (
                if (depsAttrExists racketPkgDefs."${cur}")
                then (map (x: if (x == "base" || x == "racket") then "" else racketPkgTransformed."${x}") racketPkgDefs."${cur}".deps)
                else [ ]
              );
            });
        }
      )
      { }
      (builtins.attrNames racketPkgDefs));

  flattenDepsSetArray = pkgDefWithNamesArray:
    let
      # This function is the builder for each racket package
      mkRacketPkg = { name, src, subpath ? "" }: pkgs.stdenvNoCC.mkDerivation {
        inherit src name subpath;
        phases = "unpackPhase installPhase";
        installPhase = ''
          mkdir -p $out
          cp -r . $out
        '';
      };

      defToPkg = def: mkRacketPkg {
        name = def.name;
        src = def.src;
        subpath = if (builtins.hasAttr "subpath" def) then def.subpath else "";
      };
      wrapper = pkgDefWithName: visited:
        let
          flattenVisited = pkgDefWithName': visited':
            let
              getDeps = pkg: visited'':
                let
                  newAttr'' = { "${pkg.name}" = (defToPkg pkg); };
                in
                if builtins.hasAttr pkg.name visited'' || pkg.deps == [ ]
                then visited'' // newAttr''
                else (builtins.foldl' (acc: cur: acc // flattenVisited cur (acc // newAttr'')) visited'' pkg.deps);
            in
            let
              newAttr' = { "${pkgDefWithName'.name}" = (defToPkg pkgDefWithName'); };
            in
            (
              if builtins.hasAttr pkgDefWithName'.name visited' || pkgDefWithName'.deps == [ ]
              then visited' // newAttr'
              else (builtins.foldl' (acc: cur: acc // getDeps cur (acc // newAttr')) visited' pkgDefWithName'.deps)
            );
        in
        let
          newAttr = { "${pkgDefWithName.name}" = (defToPkg pkgDefWithName); };
        in
        (
          if builtins.hasAttr pkgDefWithName.name visited || pkgDefWithName.deps == [ ]
          then visited // newAttr
          else
            builtins.foldl'
              (acc: cur: acc // (flattenVisited cur (acc // newAttr)))
              visited
              pkgDefWithName.deps
        );
    in
    (builtins.attrValues (builtins.foldl' (acc: cur: acc // (wrapper cur acc)) { } pkgDefWithNamesArray));
in
{
  racketPkgs = racketPkgTransformed;
  racketWithPkgs = pkgArray:
    let
      path = "share/racket-pkgs";
    in
    pkgs.racket-minimal.overrideAttrs (prev: {
      buildInputs = prev.buildInputs ++ [ pkgs.racket-minimal ];
      postBuild =
        let
          result = flattenDepsSetArray pkgArray;
          allPkgs =
            let
              appendSubPath = pkg: if (builtins.hasAttr "subpath" pkg) then pkg.subpath else "";
            in
            builtins.concatStringsSep " " (map (x: "$out/${path}/${x.name}/${appendSubPath x}") result);
        in
        ''
          export HOME=$out/etc
          mkdir -p $out/${path} $HOME
          ${builtins.concatStringsSep "\n" (map (racketPkgDrv: ''
              mkdir -p $out/${path}/${racketPkgDrv.name};
              cp -r ${racketPkgDrv}/* $out/${path}/${racketPkgDrv.name};
              chmod +w -R $out/${path}/${racketPkgDrv.name}
          '') result)}
          raco pkg install --deps fail --link ${allPkgs}
        '';
      postFixup = ''
        wrapProgram $out/bin/racket \
          --set PLTUSERHOME $out/etc
      '';
    });
}
