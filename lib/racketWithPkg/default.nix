{ pkgs, racketPkg ? pkgs.racket-minimal, packages ? [ ] }:
let
  path = "share/racket-pkgs";

  # This function is the builder for each racket package
  mkRacketPkg = { name, src, subpath ? "" }: pkgs.stdenvNoCC.mkDerivation {
    inherit src name;
    phases = "unpackPhase installPhase";
    installPhase = ''
      mkdir -p $out
      ${if subpath != "" then "cd ${subpath}" else ""}
      cp -r . $out
    '';
  };

  racketPkgDefs = (import ./racket-package-defs.nix) {
    fetchzip = pkgs.fetchzip;
    fetchFromGitHub = pkgs.fetchFromGitHub;
  };

  depsAttrExists = def: (builtins.hasAttr "deps" def);
  # Take each definition and add the name field equal to it's attrName.
  # Also convert array of string name deps to builds
  # Used for building
  racketPkgTransformed = builtins.foldl'
    (acc: cur: acc //
      {
        "${cur}" = (racketPkgDefs."${cur}" //
          {
            name = cur;
            deps =
              if (depsAttrExists racketPkgDefs."${cur}")
              then (map (x: racketPkgTransformed."${x}") racketPkgDefs."${cur}".deps)
              else [ ];
          });
      }
    )
    { }
    (builtins.attrNames racketPkgDefs);

  flattenDepsArray = pkgDefWithNames:
    let
      subpathAttrExists = def: (builtins.hasAttr "subpath" def);
      defToPkg = def: mkRacketPkg {
        name = def.name;
        src = def.src;
        subpath = if (subpathAttrExists def) then def.subpath else "";
      };
      flattenVisited = pkgDefWithName': visited:
        let
          getDeps = pkg:
            if builtins.hasAttr pkg.name visited
            then [ ]
            else
              if pkg.deps == [ ]
              then [ (defToPkg pkg) ]
              else (builtins.concatMap (pkg': flattenVisited pkg' (visited // { "${pkg.name}" = true; })) pkg.deps) ++ [ (defToPkg pkg) ];
        in
        if (depsAttrExists pkgDefWithName')
        then (builtins.concatMap getDeps pkgDefWithName'.deps) ++ [ (defToPkg pkgDefWithName') ]
        else [ (defToPkg pkgDefWithName') ];
    in
    pkgs.lib.lists.unique (builtins.concatMap (x: (flattenVisited x { "${x.name}" = true; })) pkgDefWithNames);
in
racketPkg.overrideAttrs (prev: {
  buildInputs = prev.buildInputs ++ [ racketPkg ];
  postBuild = ''
    export HOME=$out/etc
    mkdir -p $out/${path} $HOME
    ${builtins.concatStringsSep "\n" (map (racketPkgDrv: ''
        mkdir -p $out/${path}/${racketPkgDrv.name};
        cp -r ${racketPkgDrv}/* $out/${path}/${racketPkgDrv.name};
        chmod +w -R $out/${path}/${racketPkgDrv.name}
    '') (flattenDepsArray (map (x: racketPkgTransformed."${x}") packages)))}
    raco pkg install --deps fail --link $out/${path}/*
  '';
  postFixup = ''
    wrapProgram $out/bin/racket \
      --set PLTUSERHOME $out/etc
  '';
})
