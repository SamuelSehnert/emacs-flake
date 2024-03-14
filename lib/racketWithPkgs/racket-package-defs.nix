# racket package definitions
# NOTE: These are not builds or derivations, but simply
#       definitions for each package to help determine
#       dependencies
{ fetchzip }: {
  "draw-x86_64-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-x86_64-macosx-3.zip";
      sha256 = "073kg059bsh68xzi609g7gfpynlgcxmjx2flabpv58y7khiin1b7";
    };
    deps = [
      "base"
    ];
  };
  "monadicrkt" = {
    src = fetchGit {
      url = "https://github.com/dbian/monadicrkt.git";
      rev = "676cf8c1c3a818fada498bf084a23aa28e90d9a8";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "endeavor" = {
    src = fetchGit {
      url = "https://codeberg.org/sunarch/endeavor.git#main";
      rev = "cb55498b07c99dd163b136d42559952589bfbfd6";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "unix-socket-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/unix-socket-doc.zip";
      sha256 = "0p51sgy76r4yawx881a3f499mhdp2cy9ssan7dv33kfadmjhrc8s";
    };
    deps = [
      "base"
      "net-lib"
      "unix-socket-lib"
      "web-server-lib"
      "scribble-lib"
      "net-doc"
      "racket-doc"
      "web-server-doc"
    ];
  };
  "cover-badge" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/cover-badge.git#develop";
      rev = "ad229da14a4d0c0edc38f4840e05f350303b76fe";
      ref = "develop";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "poppler-win32-i386" = {
    src = fetchGit {
      url = "https://github.com/soegaard/poppler-libs";
      rev = "f39e31f2b561b457fdbda50117f6bc4802ef14b6";
    };
    subpath = "poppler-win32-i386";
    deps = [
      "base"
    ];
  };
  "try-catch-finally-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/try-catch-finally.git";
      rev = "ae71f04fe3ef793ed9338a7ee662f72ccc32222b";
    };
    subpath = "try-catch-finally-lib";
    deps = [
      "base"
    ];
  };
  "pict3d-die-cut" = {
    src = fetchGit {
      url = "https://github.com/mflatt/pict3d-die-cut";
      rev = "29354f8dd2e9f964da834903332318a995d15727";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "pict3d"
      "glu-tessellate"
      "draw-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "fulmar" = {
    src = fetchGit {
      url = "https://github.com/cwearl/fulmar.git";
      rev = "4cf60699558b3bb28fa813443456993d1563bfb2";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "rackunit-lib"
      "sandbox-lib"
      "at-exp-lib"
      "at-exp-lib"
    ];
  };
  "k-lib" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/k.git";
      rev = "2b5f5066806a5bbd0733b781a2ed5fce6956a4f5";
      ref = "develop";
    };
    subpath = "k-lib";
    deps = [
      "base"
      "k-core"
      "rackunit-lib"
    ];
  };
  "net-cookies-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-cookies-test.zip";
      sha256 = "1d7czqxv6maf38ii8390n5pg0jcviawf24351hn3skhhlhx603al";
    };
    deps = [
      "base"
      "net-cookies-lib"
      "rackunit-lib"
    ];
  };
  "k" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/k.git";
      rev = "2b5f5066806a5bbd0733b781a2ed5fce6956a4f5";
      ref = "develop";
    };
    subpath = "k";
    deps = [
      "k-core"
      "k-lib"
      "k-test"
      "k-example"
      "k-doc"
    ];
  };
  "grift" = {
    src = fetchGit {
      url = "https://github.com/Gradual-Typing/Grift.git";
      rev = "5fa76f837a0d6189332343d7aa899892b3c49583";
    };

    deps = [
      "https://github.com/rjnw/sham.git/?path=sham-llvm#b4c1f1029a7b97de5c0c93f7399fdac38e4b5495"
      "https://github.com/rjnw/sham.git/?path=sham-lib#b4c1f1029a7b97de5c0c93f7399fdac38e4b5495"
      "https://github.com/rjnw/scf.git/?path=scf-lib#a9405041f636ac7c4368b736d10f3f8a858eed74"
    ];
  };
  "racket-cord" = {
    src = fetchGit {
      url = "https://github.com/simmsb/racket-cord.git";
      rev = "812f45cd0c5f5470ae6727856229dbda06d1be03";
    };

    deps = [
      "base"
      "http-easy"
      "rfc6455"
      "rackunit-lib"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "slideshow-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-doc.zip";
      sha256 = "1zq2ywsba51gw8igzk6fw1m0qcwfji698b856lzm4w63piablz63";
    };
    deps = [
      "scheme-lib"
      "draw-doc"
      "gui-doc"
      "pict-doc"
      "scribble-doc"
      "base"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "slideshow-lib"
      "racket-doc"
      "at-exp-lib"
    ];
  };
  "libsass-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsass-x86_64-macosx-3.6.5.2.tar.gz";
      sha256 = "0k5fbwxmkmxw77dlws4bmrqpmacf9p1kwiisn01w2wn3253crvfb";
    };
    deps = [
      "base"
    ];
  };
  "xsmith-examples" = {
    src = fetchGit {
      url = "https://gitlab.flux.utah.edu/xsmith/xsmith.git";
      rev = "de6ace161b0a09a8137c38a181a66c1403f5698a";
      ref = "current-release";
    };
    subpath = "xsmith-examples";
    deps = [
      "base"
      "version-string-with-git-hash"
      "rackunit-lib"
      "at-exp-lib"
      "pprint"
      "racr"
      "xsmith"
      "clotho"
      "math-lib"
      "scribble-lib"
    ];
  };
  "natural-cli" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/natural-cli.git";
      rev = "c7abc38d025159128d446ca1a6314ab909ffe920";
    };

    deps = [
      "base"
      "compatibility-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "compatibility-doc"
    ];
  };
  "db-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-test.zip";
      sha256 = "16j9vkdlc6asyrwxl2pq3wg0bskazbxb9gcl09ssfvz32wfjl1gz";
    };
    deps = [
      "base"
      "db-lib"
      "rackunit-lib"
      "web-server-lib"
      "srfi-lite-lib"
    ];
  };
  "helpful" = {
    src = fetchGit {
      url = "https://github.com/sorawee/helpful.git";
      rev = "47e4bf05db259208321105f653ea4bc975cd42cb";
    };

    deps = [
      "base"
      "levenshtein"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "rktermios" = {
    src = fetchGit {
      url = "https://gitlab.com/racketeer/rktermios.git";
      rev = "cbcdd5b15542bf6f45907e6a6ba2932f0c4cd501";
    };

    deps = [
      "base"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "at-exp-lib"
    ];
  };
  "scrapyard" = {
    src = fetchGit {
      url = "https://github.com/lassik/racket-scrapyard.git";
      rev = "23b49c3562f3b8fea01886a219230fe37e2abf2d";
    };

    deps = [
      "base"
      "html-parsing"
      "sxml"
      "txexpr"
    ];
  };
  "otp-doc" = {
    src = fetchGit {
      url = "https://github.com/yilinwei/otp.git";
      rev = "463985c11cfb229ca9846513065d1a5bfc1f76c7";
    };
    subpath = "otp-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "otp-lib"
      "crypto-lib"
      "crypto-doc"
    ];
  };
  "db-win32-x86_64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-win32-x86_64.zip";
      sha256 = "15p6fxfd29z6i0h5hlngklnalwzs1ynxva8wsiadb4v6z644dm0g";
    };
    deps = [
      "base"
    ];
  };
  "datadef" = {
    src = fetchGit {
      url = "https://github.com/adzai/datadef.git#main";
      rev = "6a8faa51127a1ba5a59eefe1660fc4ba95db9668";
      ref = "main";
    };

    deps = [
      "db-lib"
      "web-server-lib"
      "base"
      "scribble-lib"
      "db-doc"
      "at-exp-lib"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "graphic-block" = {
    src = fetchGit {
      url = "https://git.uwaterloo.ca/djholtby/uwaterloo-racket.git";
      rev = "c4848f9d32d83c385e7ae0a7efc8bc11ccb808a8";
    };
    subpath = "graphic-block";
    deps = [
      "drracket-plugin-lib"
      "gui-lib"
      "string-constants-lib"
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "vela-docs" = {
    src = fetchGit {
      url = "https://github.com/nuty/vela.git";
      rev = "ba00692452020136b4f629e729a7e58855db630a";
    };
    subpath = "vela-doc";
    deps = [
      "base"
      "base"
      "racket-doc"
      "data-doc"
      "data-lib"
      "vela-lib"
      "scribble-lib"
      "sandbox-lib"
    ];
  };
  "rash" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-rash.git";
      rev = "feb3ad16deb0b372a05f5d522f71e1746a3f96fd";
    };
    subpath = "rash";
    deps = [
      "base"
      "basedir"
      "shell-pipeline"
      "linea"
      "udelim"
      "scribble-lib"
      "scribble-doc"
      "racket-doc"
      "rackunit-lib"
      "readline-lib"
    ];
  };
  "goblins" = {
    src = fetchGit {
      url = "https://gitlab.com/spritely/goblins.git";
      rev = "d578c94401f8bf6b816798b24935a9bfd71f4b37";
      ref = "v0.12.0";
    };
    subpath = "goblins";
    deps = [
      "base"
      "crypto"
      "syrup"
      "pk"
      "rackunit-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
    ];
  };
  "sketching-lib" = {
    src = fetchGit {
      url = "https://github.com/soegaard/sketching.git";
      rev = "592c04229395212acc646b1278f14ff7a098c2d7";
      ref = "main";
    };
    subpath = "sketching-lib";
    deps = [
      "base"
      "draw-lib"
      "pict-lib"
      "math-lib"
      "noise"
      "gui-lib"
      "cairo-lib"
    ];
  };
  "slideshow-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-lib.zip";
      sha256 = "1msnjfl46mzy21jylmhwmn21fgvzxd68kkij33h8zpfi27gd0rf3";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "draw-lib"
      "pict-lib"
      "gui-lib"
    ];
  };
  "define-assets-from" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/define-assets-from.git";
      rev = "f41954f7d955fdabbd697976d73344a5aa733d31";
    };

    deps = [
      "base"
      "htdp-lib"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "x64asm" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/racket-x64asm.git";
      rev = "b8a4e9998428f4f0b1d083d74d9730e8369f0110";
    };
    subpath = "x64asm";
    deps = [
      "x64asm-lib"
      "x64asm-doc"
    ];
  };
  "racket-spider" = {
    src = fetchGit {
      url = "https://github.com/Syntacticlosure/racket-spider.git";
      rev = "1ed8e8996d296021a1adf7acb30190db301055f7";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "draw-x11-x86_64-linux-natipkg" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-x11-x86_64-linux-natipkg.zip";
      sha256 = "1s665dlk933m3jxwn1pk3661vyhamggx9d1plh7c8fyk66p76j81";
    };
    deps = [
      "base"
    ];
  };
  "north" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-north.git";
      rev = "9b0499fa071a8e405a6976170f3c45b2eae9c1d8";
    };
    subpath = "north";
    deps = [
      "base"
      "db-lib"
      "gregor-lib"
      "parser-tools-lib"
      "at-exp-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "non-det" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/non-det.git";
      rev = "4b6d4aec79680b362efcc32a0589e85e97d868c9";
    };

    deps = [
      "chk-lib"
      "base"
      "text-table"
    ];
  };
  "libsass-x86_64-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsass-x86_64-win32-3.6.5.2.tar.gz";
      sha256 = "10y3gd0xlm0kxr0rkk6xg5frddfdzgyl8fs3bwyhb7s6wifclnyg";
    };
    deps = [
      "base"
    ];
  };
  "gui-win32-i386" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-win32-i386.zip";
      sha256 = "0wns7xnmwiiaajlhrr5cp61yr8943hjkkn459p8xp4g2bzic26il";
    };
    deps = [
      "base"
    ];
  };
  "stretchable-snip" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/stretchable-snip.git";
      rev = "5953118ad3b3e9d60b350d57b5b5c9a653ee1a14";
    };

    deps = [
      "base"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "draw-doc"
      "gui-doc"
    ];
  };
  "image-colors" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/image-colors.git";
      rev = "1cd39f2ccacb2d6f12b577184e5b04f775a7bc4d";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "sandbox-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sandbox-lib.zip";
      sha256 = "17lagxhlz4mxsh6x82ccq4hna8mfdg559v4p3l42nv6c077zqdwl";
    };
    deps = [
      "scheme-lib"
      "base"
      "errortrace-lib"
    ];
  };
  "pareto-frontier" = {
    src = fetchGit {
      url = "https://github.com/sorawee/pareto-frontier.git";
      rev = "f2409c3ad5a411562e6358618b78c0b9541d8bf8";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "redis-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-redis.git";
      rev = "df397e05f6e65e3d12c2f1040bd716089644302c";
    };
    subpath = "redis-doc";
    deps = [
      "base"
      "racket-doc"
      "redis-lib"
      "scribble-lib"
    ];
  };
  "collector2" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-collector2.git";
      rev = "2e61ec9ce09a465081105300537b21930e76f24a";
    };
    subpath = "src/collector2";
    deps = [
      "base"
      "collector2-doc"
      "collector2-lib"
      "collector2-test"
    ];
  };
  "pict-abbrevs" = {
    src = fetchGit {
      url = "https://gitlab.com/bengreenman/pict-abbrevs.git";
      rev = "484729a93684a0210f73c6439ecf93629df2cf79";
    };

    deps = [
      "base"
      "pict-lib"
      "lang-file"
      "draw-lib"
      "slideshow-lib"
      "ppict"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
      "gui-doc"
      "pict-doc"
      "draw-doc"
      "plot-doc"
      "plot-lib"
      "scribble-lib"
      "slideshow-doc"
    ];
  };
  "mvar-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-mvar.git";
      rev = "aac2876805fd79257b4076b750f5b8a16667f595";
    };
    subpath = "mvar-test";
    deps = [
      "base"
      "mvar-lib"
      "rackunit-lib"
    ];
  };
  "sdl2" = {
    src = fetchGit {
      url = "https://github.com/lockie/racket-sdl2.git";
      rev = "52ce746829fe9130db64e52208c10830650a5ca5";
    };

    deps = [
      "base"
    ];
  };
  "planet-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-test.zip";
      sha256 = "0iz88zrisqi28hy0afszjn69r282q8jxls8dg26mrshvzl84f2n3";
    };
    deps = [
      "base"
      "racket-index"
      "eli-tester"
      "planet-lib"
      "rackunit-lib"
      "scheme-lib"
    ];
  };
  "ini-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ini.git";
      rev = "8ed624b74d42ab5ea3142c9af70285fe82d47590";
    };
    subpath = "src/ini-lib";
    deps = [
      "base"
    ];
  };
  "urlang" = {
    src = fetchGit {
      url = "https://github.com/soegaard/urlang";
      rev = "f7ac3390d73d7991bfb956d480042a2efdd68607";
    };

    deps = [
      "base"
      "html-parsing"
      "html-writing"
      "nanopass"
      "net-lib"
      "rackunit-lib"
      "scribble-html-lib"
      "scribble-text-lib"
      "srfi-lite-lib"
      "web-server-lib"
      "base"
      "nanopass"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "html-writing"
      "html-parsing"
    ];
  };
  "rackunit-abbrevs" = {
    src = fetchGit {
      url = "https://github.com/bennn/rackunit-abbrevs";
      rev = "83091b86a37cb8498d1b1d1645cf45529ebe458c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "uu-cs5510" = {
    src = fetchGit {
      url = "https://github.com/mflatt/uu-cs5510";
      rev = "d6736f807b31f637e141ae97d28d65e8e10465aa";
    };

    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "net-lib"
      "plai-typed"
      "plai-typed-s-exp-match"
      "plai-lazy"
    ];
  };
  "rackunit-macrotypes-lib" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "rackunit-macrotypes-lib";
    deps = [
      "base"
      "rackunit-lib"
      "macrotypes-lib"
    ];
  };
  "this-and-that" = {
    src = fetchGit {
      url = "https://github.com/soegaard/this-and-that";
      rev = "6884ba21b0a9d049716abc0b46cecd7f952c6a68";
      ref = "master";
    };
    deps = [
    ];
  };
  "ts-curric-puzzles" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/ts-curric-puzzles.git";
      rev = "21f38610755da3c49a36e7553bf30fc4c459d10a";
    };

    deps = [
      "https://github.com/thoughtstem/happy-names.git"
      "https://github.com/thoughtstem/ts-racket.git"
      "https://github.com/thoughtstem/ts-curric-common.git"
    ];
  };
  "basm" = {
    src = fetchGit {
      url = "https://gitlab.com/pythondude325/basm.git";
      rev = "02b7d75eaddda765729820f79a13b54da6e1db14";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "fme" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/fme#master";
      rev = "63075d432e7803b2822a78568306c29a6fde557c";
      ref = "master";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "alexknauth-music" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/music.git";
      rev = "e9dc2e3654d59d6eedbec3dfe67db77d0f8b0d16";
    };

    deps = [
      "base"
      "agile"
      "collections-lib"
      "htdp-lib"
      "math-lib"
      "graph"
      "txexpr"
      "reprovide-lang"
      "rsound"
      "unstable-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "k-core" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/k.git";
      rev = "2b5f5066806a5bbd0733b781a2ed5fce6956a4f5";
      ref = "develop";
    };
    subpath = "k-core";
    deps = [
      "base"
      "syntax-classes-lib"
      "rackunit"
    ];
  };
  "client-cookies" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/client-cookies.git";
      rev = "ea699f80c4865c71971a73b4cfc444969a633c6c";
    };

    deps = [
      "base"
    ];
  };
  "taglib" = {
    src = fetchGit {
      url = "https://github.com/takikawa/taglib-racket";
      rev = "69b0494bac4cf2d4c6b99701c7b586bdb827a0a3";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "megaparsack-parser-tools" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/megaparsack";
      rev = "0ccdee4270da0337700ac62aa106735d0d879695";
    };
    subpath = "megaparsack-parser-tools";
    deps = [
      "base"
      "functional-lib"
      "megaparsack-lib"
      "parser-tools-lib"
    ];
  };
  "tzgeolookup" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/tzgeolookup.git";
      rev = "d10c7d86a072ed7cb46b950361151753a0ae9d11";
    };

    deps = [
      "base"
      "math-lib"
      "db-lib"
      "geoid"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "racketui" = {
    src = fetchGit {
      url = "https://github.com/nadeemabdulhamid/racketui";
      rev = "045e0e647439623397cdf67e8e045ec7aa5e2def";
    };

    deps = [
      "base"
      "draw-lib"
      "htdp-lib"
      "srfi-lite-lib"
      "web-server-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "choose-out" = {
    src = fetchGit {
      url = "https://gitlab.com/bengreenman/choose-out.git";
      rev = "55d3e0349408733337381a307ada0e89b88ae699";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-abbrevs"
      "typed-racket-doc"
    ];
  };
  "redis-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-redis.git";
      rev = "df397e05f6e65e3d12c2f1040bd716089644302c";
    };
    subpath = "redis-test";
    deps = [
      "base"
      "rackunit-lib"
      "redis-lib"
    ];
  };
  "axe" = {
    src = fetchGit {
      url = "https://github.com/lotabout/axe";
      rev = "234c2d1f6849f3719c3fc3c2354a4d257e53943b";
    };

    deps = [
      "base"
      "collections"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-code-examples"
      "scribble-doc"
    ];
  };
  "mojilang" = {
    src = fetchGit {
      url = "https://github.com/a11ce/esAsm.git";
      rev = "895709fc4c46a8f366034497f2cadc3ae97d1c09";
    };
    subpath = "mojilang";
    deps = [
      "base"
      "esAsm"
      "parser-tools-lib"
    ];
  };
  "slatex" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slatex.zip";
      sha256 = "13wkk1n0fqv89x5av5hk5n3r5nmgz8hj82zqdid0pc9dc1gqnbp8";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "racket-index"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "layout" = {
    src = fetchGit {
      url = "https://github.com/SimonLSchlee/layout.git";
      rev = "88126ffb4b6bd164b5ce9b07d1336f402dffc9e7";
    };

    deps = [
      "base"
      "draw-lib"
      "pict-lib"
      "reprovide-lang-lib"
      "rackunit-chk"
    ];
  };
  "datatype" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/datatype#master";
      rev = "9f410bdf70adb760c044902f48c7cbae16343e8d";
      ref = "master";
    };

    deps = [
      "base"
      "typed-racket-lib"
    ];
  };
  "turnstile-lib" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "turnstile-lib";
    deps = [
      "base"
      "macrotypes-lib"
      "lens-lib"
    ];
  };
  "simple-svg" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-simple-svg.git";
      rev = "8a408947c007625cf0f65d25324a2b08307571e7";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "libargon2" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-libargon2.git";
      rev = "a4bd607e5835ff4a6d304d9a6d4adc58f66eddb5";
    };
    subpath = "libargon2";
    deps = [
      "base"
      "libargon2-aarch64-macosx"
      "libargon2-i386-win32"
      "libargon2-x86_64-linux"
      "libargon2-x86_64-macosx"
      "libargon2-x86_64-win32"
    ];
  };
  "job-queue-lib" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/job-queue";
      rev = "0a2c349636aa88b06c9c299ef201494df648b164";
    };
    subpath = "job-queue-lib";
    deps = [
      "base"
    ];
  };
  "sketching" = {
    src = fetchGit {
      url = "https://github.com/soegaard/sketching.git";
      rev = "592c04229395212acc646b1278f14ff7a098c2d7";
      ref = "main";
    };
    subpath = "sketching";
    deps = [
      "sketching-lib"
      "sketching-doc"
    ];
  };
  "gtp-measure" = {
    src = fetchGit {
      url = "https://github.com/utahplt/gtp-measure.git";
      rev = "985c62ffec08f5036092b97f808d74041e5138d3";
    };

    deps = [
      "at-exp-lib"
      "base"
      "basedir"
      "gtp-util"
      "lang-file"
      "scribble-lib"
      "sandbox-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
      "basedir"
      "require-typed-check"
      "typed-racket-doc"
      "typed-racket-lib"
    ];
  };
  "super" = {
    src = fetchGit {
      url = "https://github.com/soegaard/super.git#main";
      rev = "e1b18b30a1fbbb7da619e171bd5e96bd7e8ebd49";
      ref = "main";
    };

    deps = [
      "base"
    ];
  };
  "algebraic" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-algebraic.git";
      rev = "706b2d01ab735a01e372c33da49995339194e024";
    };

    deps = [
      "base"
      "draw-lib"
      "pict-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "texmath"
    ];
  };
  "pure-crypto" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-pure-crypto.git";
      rev = "65f054bd94a925699cde906b2a8bf2bf370a3b2a";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "2htdp-typed" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-2htdp-typed";
      rev = "b46c957f0ad7490bc7b0f01da0e80380f34cac2d";
    };

    deps = [
      "base"
      "draw-lib"
      "htdp-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "unstable-list-lib"
      "unstable-contract-lib"
      "scribble-lib"
      "racket-doc"
      "htdp-doc"
      "typed-racket-doc"
    ];
  };
  "statsd" = {
    src = fetchGit {
      url = "https://github.com/apg/statsd-rkt";
      rev = "39a640686053be83442bfb129a279b8d00d6a177";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "koyo-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo.git";
      rev = "9de9f3a26ffb8da6256c5191ed111ae8f0dbb514";
    };
    subpath = "koyo-doc";
    deps = [
      "base"
      "component-doc"
      "component-lib"
      "crontab"
      "db-lib"
      "gregor-lib"
      "koyo-lib"
      "libargon2"
      "mime-type"
      "mime-type-lib"
      "sandbox-lib"
      "scribble-lib"
      "srfi-lite-lib"
      "web-server-lib"
      "db-doc"
      "gregor-doc"
      "net-doc"
      "racket-doc"
      "srfi-doc"
      "web-server-doc"
    ];
  };
  "seq-lib" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/seq.git";
      rev = "0ff053ae869cbeebc13c6573fda28d4e9242b134";
      ref = "main";
    };
    subpath = "seq-lib";
    deps = [
      "base"
      "collections-lib"
      "version-case"
      "relation-lib"
      "social-contract"
    ];
  };
  "benchmark" = {
    src = fetchGit {
      url = "https://github.com/stamourv/racket-benchmark#master";
      rev = "de7e84539de23834508dba42e07859cf13bde20c";
      ref = "master";
    };

    deps = [
      "base"
      "math-lib"
      "plot-gui-lib"
      "plot-lib"
      "typed-racket-lib"
      "plot-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "noise-protocol" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-salty-crypto.git";
      rev = "81f9ce23af9ee493cfdf7947ae0bd1bc7deaabe3";
      ref = "main";
    };
    subpath = "noise-protocol";
    deps = [
      "base"
      "libsodium"
      "libb2"
      "rackunit-lib"
    ];
  };
  "swindle" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/swindle.zip";
      sha256 = "13i7hji0ckgicfvhjpjblvzq6h17v3964zjinplkp1h4l2vb4bcj";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "net-lib"
      "string-constants-lib"
      "compatibility-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "neuron" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-neuron.git";
      rev = "a8ecafec0c6398c35423348cb02ec229869c8b15";
    };
    subpath = "neuron";
    deps = [
      "neuron-lib"
      "neuron-doc"
    ];
  };
  "rawk-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-rawk.git";
      rev = "3098de5140da665e1259ebb087b29486298eed69";
    };
    subpath = "src/rawk-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "ziptie-git"
      "rawk-lib"
    ];
  };
  "tinybasic-lib" = {
    src = fetchGit {
      url = "https://github.com/winny-/tinybasic.rkt.git";
      rev = "bc8967bb2758eb464dd858de80ac6708d6a57805";
    };
    subpath = "tinybasic-lib";
    deps = [
      "base"
      "parser-tools-lib"
      "readline-lib"
    ];
  };
  "split-by" = {
    src = fetchGit {
      url = "https://github.com/samth/split-by";
      rev = "87fc10bda5e0394f78455a78183c3f3a16bc60df";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "rackunit-chk" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/rackunit-chk";
      rev = "62c80697d9e8c4a5f5b57832e3930313732836c4";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "rackunit-doc"
      "scribble-lib"
    ];
  };
  "functional" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/functional";
      rev = "be2285cd3da0e2fffe651a8ab723185bb669425d";
    };
    subpath = "functional";
    deps = [
      "base"
      "functional-lib"
      "functional-doc"
    ];
  };
  "kernel" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-kernel";
      rev = "8602042a9d6109399dfa7f492b5af7af6c88f597";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "rtnl"
      "sysfs"
    ];
  };
  "dssl" = {
    src = fetchGit {
      url = "https://github.com/tov/dssl.git";
      rev = "bb5040d0a608a3b6f7f16d6ae725b24388f6aa6c";
    };

    deps = [
      "base"
      "htdp-lib"
      "scribble-lib"
      "racket-doc"
      "htdp-doc"
      "at-exp-lib"
      "sandbox-lib"
      "compatibility-doc"
    ];
  };
  "alexis-multicast" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-alexis.git";
      rev = "0c4c03bf089a15347079d29e7910877a6b585f18";
    };
    subpath = "alexis-multicast";
    deps = [
      "base"
      "alexis-util"
      "rackunit-lib"
      "cover"
      "cover-coveralls"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "with-cache" = {
    src = fetchGit {
      url = "https://github.com/bennn/with-cache";
      rev = "ab37d6fceaf665de0881ca5d2b5d64de2018489d";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "basedir"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "pict-lib"
    ];
  };
  "sdraw" = {
    src = fetchGit {
      url = "https://github.com/jackrosenthal/sdraw-racket.git";
      rev = "b885937074fa2c8ac0db4df2f84f11ea3e52ddcf";
    };

    deps = [
      "base"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "pict-doc"
    ];
  };
  "keyring-keychain-test" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-keychain-test";
    deps = [
      "base"
      "keyring-keychain-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "pydrnlp" = {
    src = fetchGit {
      url = "https://bitbucket.org/digitalricoeur/pydrnlp.git";
      rev = "666c1e00b67c0cc1ee6b5e3fbcfbec498b3173ac";
    };

    deps = [
      "base"
      "ricoeur-kernel"
      "ricoeur-tei-utils"
      "adjutor"
      "python-tokenizer"
      "math-lib"
      "pict-lib"
      "draw-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "reprovide-lang"
      "db-lib"
      "sql"
      "gregor-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "markdown"
      "rackunit-typed"
      "_-exp"
      "at-exp-lib"
      "rackjure"
    ];
  };
  "tr-immutable" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/tr-immutable.git#main";
      rev = "218e8862718327696b2a7cd2e1ae82800a653306";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "typed-map-lib"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
    ];
  };
  "db-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-doc.zip";
      sha256 = "108f9gy0bia5fzrmd6sm7y2gzs7rmm4bix1g4pwbbdscj75q2my8";
    };
    deps = [
      "base"
      "srfi-lite-lib"
      "web-server-doc"
      "base"
      "scribble-lib"
      "sandbox-lib"
      "web-server-lib"
      "db-lib"
      "racket-doc"
    ];
  };
  "effection-doc" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/effection.git";
      rev = "012c8ab1b45993770ed240cae0831f09574fe976";
      ref = "main";
    };
    subpath = "effection-doc";
    deps = [
      "base"
      "parendown-lib"
      "scribble-lib"
    ];
  };
  "ebuild" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild";
    deps = [
      "base"
      "ebuild-doc"
      "ebuild-lib"
      "ebuild-modify-lang"
      "ebuild-templates"
      "ebuild-test"
      "ebuild-tools"
      "ebuild-transformers"
    ];
  };
  "play" = {
    src = fetchGit {
      url = "https://github.com/pleiad/play.git";
      rev = "34a145ffb815110bec33a48004e8897e48d11f51";
    };

    deps = [
      "base"
      "plai"
      "redex"
      "rackunit"
      "parser-tools-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "racketeer" = {
    src = fetchGit {
      url = "https://github.com/miraleung/racketeer#master";
      rev = "e3f703a46db1d97acbca361ebad3a21b3d4c2601";
      ref = "master";
    };

    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "htdp-lib"
      "rackunit-lib"
      "sandbox-lib"
      "syntax-color-lib"
      "wxme-lib"
    ];
  };
  "compiler-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compiler-test.zip";
      sha256 = "10dhla1yxrqm5r85rilhmkpkp8ly78gklq990q2iiky02zf7c44h";
    };
    deps = [
      "base"
      "icons"
      "compiler-lib"
      "eli-tester"
      "rackunit-lib"
      "net-lib"
      "scheme-lib"
      "compatibility-lib"
      "gui-lib"
      "htdp-lib"
      "plai-lib"
      "rackunit-lib"
      "dynext-lib"
      "mzscheme-lib"
    ];
  };
  "diagrama" = {
    src = fetchGit {
      url = "https://github.com/florence/diagrama.git";
      rev = "291f244843d7226df4b7cb763bc3d6b1e98af71b";
    };
    subpath = "diagrama";
    deps = [
      "base"
      "diagrama-lib"
      "diagrama-doc"
    ];
  };
  "distributed-places" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distributed-places.zip";
      sha256 = "14ddbl8znmv39v39cdph58rplxzhqik81c3zkks6hapk66ilblq1";
    };
    deps = [
      "distributed-places-lib"
      "distributed-places-doc"
    ];
  };
  "puresuri" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/puresuri";
      rev = "9744e849989867e7e002507cd1dfe18ffdf5b5e3";
      ref = "master";
    };
    deps = [
      "lux"
      "base"
      "gui-lib"
      "pict-lib"
      "ppict"
      "unstable-lib"
      "ppict"
      "gui-doc"
      "pict-doc"
      "racket-doc"
      "slideshow-doc"
      "unstable-doc"
      "scribble-lib"
    ];
  };
  "planet2-example" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/planet2-example";
      rev = "9d9e4dc77adfc7299987a4cbbe8ce43869eec53e";
    };

    deps = [
      "base"
    ];
  };
  "xdgbasedir0" = {
    src = fetchGit {
      url = "https://github.com/lawrencewoodman/xdgbasedir_rkt";
      rev = "ab6df3c5307b776547a9904625b2081a760e3045";
      ref = "v0.3";
    };
    deps = [
    ];
  };
  "rawk-tool" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-rawk.git";
      rev = "3098de5140da665e1259ebb087b29486298eed69";
    };
    subpath = "src/rawk-tool";
    deps = [
      "base"
      "rawk-lib"
    ];
  };
  "fiberweb" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/fiberweb.git";
      rev = "c2ea40456784fa45d682bc4230b49e07f862ae78";
    };

    deps = [
      "base"
      "rebellion"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "Agatha" = {
    src = fetchGit {
      url = "https://github.com/joseildofilho/Agatha-Lang.git";
      rev = "de9e340b97dbb22677dc3ba74d6ec8826bf9af90";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "brag-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "portaudio-x86_64-macosx" = {
    src = fetchGit {
      url = "https://github.com/jbclements/portaudio-x86_64-macosx.git";
      rev = "34efbd93f70d19a0b9e2deeb21caca124effe927";
    };

    deps = [
      "base"
    ];
  };
  "automata" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/automata/";
      rev = "6abe851b83b18fcdcb8f2b19ab87cdabc90c71ce";
    };
    subpath = "automata";
    deps = [
      "automata-lib"
      "automata-doc"
    ];
  };
  "forms-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-forms.git";
      rev = "e6ba9fa4a4e17d744760193dc7b8a4b399e9db71";
    };
    subpath = "forms-test";
    deps = [
      "base"
      "forms-lib"
      "rackunit-lib"
      "srfi-lite-lib"
      "web-server-lib"
    ];
  };
  "drracket-tool-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-tool-test.zip";
      sha256 = "11vr3i9vx8w1p8df7k4rv22adbq07bwbbdxwl8z9m8ddp898nwm7";
    };
    deps = [
      "base"
      "rackunit-lib"
      "drracket-tool-lib"
    ];
  };
  "c" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/c";
      rev = "c2efa315c13e420e6cf77ba8d5ce1f7eb9dbdc2c";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "parser-tools-doc"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "neologia" = {
    src = fetchGit {
      url = "https://github.com/robertkleffner/neologia.git";
      rev = "92d6ccde9041dc07b5c0db1849b4e1c65cb3cf2d";
    };

    deps = [
      "base"
      "rackunit-lib"
      "brag"
      "beautiful-racket"
      "beautiful-racket-lib"
      "br-parser-tools-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "jsonic-jf" = {
    src = fetchGit {
      url = "https://github.com/ErwinKotz/test_racket_package.git";
      rev = "de1a5a3b39f6f511536e2e53419a7deee2114641";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "brag"
      "draw-lib"
      "gui-lib"
      "br-parser-tools-lib"
      "rackunit-lib"
      "syntax-color-lib"
      "scribble-lib"
    ];
  };
  "commonmark-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-commonmark.git";
      rev = "d40156bce42088aea1a742d6cce4c8697318db70";
      ref = "master";
    };
    subpath = "commonmark-doc";
    deps = [
      "base"
      "commonmark-lib"
      "racket-doc"
      "scribble-lib"
      "threading-lib"
    ];
  };
  "music" = {
    src = fetchGit {
      url = "https://github.com/SuperDisk/lang-music.git#a5f9a6c";
      rev = "a5f9a6c456351d1b80950241cb1d82585043bc65";
      ref = "a5f9a6c";
    };

    deps = [
      "base"
      "binaryio-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "libargon2-x86_64-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libargon2-x86_64-linux-20190702.0.tar.gz";
      sha256 = "0sw3vl7rr8zlb50bsq7sq8f4ngvcl3hfy8sca0iwg4lcb3pcxkj3";
    };
    deps = [
      "base"
    ];
  };
  "double-linked-ring" = {
    src = fetchGit {
      url = "https://github.com/matteo-daddio/double-linked-ring.git";
      rev = "8f5b7a21c761c0c6ef331165feeb7771ae536a82";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "images-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-doc.zip";
      sha256 = "1m0idfp814bllfq8r5lns4b1hnvinwadfzpmj7fiic3qjn9ri61m";
    };
    deps = [
      "base"
      "images-lib"
      "draw-doc"
      "gui-doc"
      "pict-doc"
      "slideshow-doc"
      "typed-racket-doc"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "racket-doc"
      "scribble-lib"
      "slideshow-lib"
      "typed-racket-lib"
    ];
  };
  "softposit-rkt" = {
    src = fetchGit {
      url = "https://github.com/DavidThien/softposit-rkt.git";
      rev = "364469d5a219e61b29ed0d2d5048ed1ba29c66ba";
    };

    deps = [
      "math-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "github" = {
    src = fetchGit {
      url = "https://github.com/samth/github.rkt";
      rev = "3dcabdece43c6f46050966a51ad237c75032cd17";
    };

    deps = [
      "base"
      "drracket-plugin-lib"
      "gui-lib"
    ];
  };
  "multi-id" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/multi-id.git#main";
      rev = "6dbea1523d75a353b56d1bb63fbc15535d57f240";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "phc-toolkit"
      "type-expander"
      "scribble-lib"
      "hyper-literate"
      "scribble-lib"
      "racket-doc"
      "scribble-enhanced"
      "typed-racket-doc"
    ];
  };
  "bluetooth-socket" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/bluetooth-socket.git";
      rev = "bd48368028d2b0e69ba96399d2771d163d40cf46";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "set" = {
    src = fetchGit {
      url = "https://github.com/samth/set.rkt";
      rev = "655e2567cefe9684b0425a0ec601a97d1faf7d0e";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "macrokey-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-macrokey.git";
      rev = "7b7063fa5efee392f309b4b208df927868735495";
    };
    subpath = "src/macrokey-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "bip32" = {
    src = fetchGit {
      url = "https://github.com/marckn0x/bip32.git";
      rev = "19f4460abd1f5fdacaa651064c4d8353401294f0";
    };

    deps = [
      "base"
      "binaryio"
      "sha"
      "crypto"
      "base58"
      "ec"
      "typed-racket-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "rackunit-typed"
    ];
  };
  "qi-probe" = {
    src = fetchGit {
      url = "https://github.com/drym-org/qi.git";
      rev = "548bc76668d0dcd84cf15eddab3def6dd55e7656";
      ref = "main";
    };
    subpath = "qi-probe";
    deps = [
      "base"
      "qi-lib"
    ];
  };
  "racketscript" = {
    src = fetchGit {
      url = "https://github.com/racketscript/racketscript.git";
      rev = "bff853c802b0073d08043f850108a57981d9f826";
      ref = "master";
    };
    subpath = "racketscript";
    deps = [
      "base"
      "racketscript-compiler"
      "racketscript-extras"
      "racketscript-doc"
    ];
  };
  "graphics-engine" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-graphics-engine.git";
      rev = "94d492f057e1fa712ceab1823afca31ffc80f04d";
    };

    deps = [
      "base"
      "opengl"
      "glm"
      "glsl"
      "gui-lib"
      "reprovide-lang-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "k2" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "9ffa2368aef7ccc9f823fc28f99ba97a2327c4c9";
    };
    subpath = "k2";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=battlearena-avengers"
      "https://github.com/thoughtstem/TS-Languages.git?path=survival"
      "https://github.com/thoughtstem/ratchet.git"
    ];
  };
  "mongodb" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/mongodb";
      rev = "94d2c0e5a137a2910c54fb7da186a7885cf5a318";
      ref = "master";
    };
    deps = [
      "base"
      "web-server-lib"
      "srfi-lite-lib"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
      "srfi-doc"
      "web-server-doc"
    ];
  };
  "gui-i386-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-i386-macosx.zip";
      sha256 = "0d1kgq46iaiy528z7gm51rrfspj8d75p65cdpg0pfkamlxnyzmmd";
    };
    deps = [
      "base"
    ];
  };
  "fuse" = {
    src = fetchGit {
      url = "https://github.com/thinkmoore/racket-fuse.git";
      rev = "5c24b1e135e97ff6c8e49b363f01ff21c28ecf8b";
    };

    deps = [
      "scribble-lib"
      "base"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "combinator-parser" = {
    src = fetchGit {
      url = "https://github.com/takikawa/combinator-parser";
      rev = "e64f938862f47f0e8bab8d6f406a8fa6a203e435";
      ref = "master";
    };
    deps = [
      "base"
      "parser-tools-lib"
      "compatibility-lib"
      "scribble-lib"
      "parser-tools-doc"
      "racket-doc"
      "at-exp-lib"
      "lazy"
      "scheme-lib"
    ];
  };
  "upi-test" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-upi.git";
      rev = "bbe44269dec1be98996124dcfe5155400d425ddd";
    };
    subpath = "src/upi-test";
    deps = [
      "base"
      "rackunit-lib"
      "upi-lib"
    ];
  };
  "lmdb" = {
    src = fetchGit {
      url = "https://github.com/dergemkr/racket-lmdb.git#master";
      rev = "397e3e9f7ee84ef7ca4e46108e59b6f96d3bc3f5";
      ref = "master";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "openapi-type-provider" = {
    src = fetchGit {
      url = "https://github.com/stardust66/openapi-type-provider.git#main";
      rev = "ba298d11271bb08448f7a5d9f018f5f5c1b8f828";
      ref = "main";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "gtp-paper" = {
    src = fetchGit {
      url = "https://github.com/bennn/gtp-paper";
      rev = "4a276d3b71d0ff1921718442b350d2c29134255b";
    };

    deps = [
      "base"
      "scribble-abbrevs"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "sysfs" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-sysfs";
      rev = "80a68016bfd28fa5e86269e7bae0cbbe5ad8de87";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
    ];
  };
  "images-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-test.zip";
      sha256 = "1dx9cbkh1f97l70idhla4rwy8cip2y22vwkx1dyd91b6kp18pyrg";
    };
    deps = [
      "base"
      "images-lib"
      "pict-lib"
      "slideshow-lib"
      "racket-doc"
    ];
  };
  "drdr" = {
    src = fetchGit {
      url = "https://github.com/racket/drdr";
      rev = "a4efefc74adfdfabe465895fe055645e259394f0";
    };

    deps = [
      "base"
      "eli-tester"
      "net-lib"
      "web-server-lib"
      "web-server-test"
      "job-queue-lib"
      "at-exp-lib"
      "scheme-lib"
      "scribble-lib"
    ];
  };
  "jen-samples" = {
    src = fetchGit {
      url = "https://github.com/HeladoDeBrownie/jen.git";
      rev = "eb49e8f4a84f9a5deb93756669c2208e7590bb37";
      ref = "Unstable";
    };
    subpath = "jen-samples";
    deps = [
      "base"
      "jen-lib"
      "pict-lib"
    ];
  };
  "esterel-examples" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "56af2d1bd7697a327e4cd3d0a539101c88820fef";
    };
    subpath = "esterel-examples";
    deps = [
      "base"
      "esterel-lib"
      "esterel-rhombus-lib"
      "rhombus-prototype"
      "rackunit"
      "gui-lib"
      "pict-lib"
    ];
  };
  "racketscript-universe" = {
    src = fetchGit {
      url = "https://github.com/leiDnedyA/racketscript-universe.git#master";
      rev = "8602d8507fd557d1895e7ef48762360f402aff1e";
      ref = "master";
    };

    deps = [
      "base"
      "racketscript/base"
      "racketscript-compiler"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "sexp-diff-doc" = {
    src = fetchGit {
      url = "https://github.com/stamourv/sexp-diff.git";
      rev = "5791264cb7031308b81c8c91df457cd51888210f";
    };
    subpath = "sexp-diff-doc";
    deps = [
      "base"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
      "sexp-diff-lib"
    ];
  };
  "ratchet" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/ratchet.git";
      rev = "6dcd99e9ad43e37feeae41838282ce3b94945ca1";
    };

    deps = [
      "lang-file"
    ];
  };
  "scribble-math" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/scribble-math.git#main";
      rev = "a69b6fad193757de5a62b6a1cabacb7557d02ff7";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "at-exp-lib"
      "scribble-doc"
    ];
  };
  "towers-lib" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/towers.git";
      rev = "e6777c9259ab3dc687d3614d783316a2490438f2";
    };
    subpath = "towers-lib";
    deps = [
      "base"
      "compatibility-lib"
      "bazaar"
      "text-table"
    ];
  };
  "uwaterloo-racket-tools" = {
    src = fetchGit {
      url = "https://git.uwaterloo.ca/djholtby/uwaterloo-racket.git";
      rev = "c4848f9d32d83c385e7ae0a7efc8bc11ccb808a8";
    };
    subpath = "uwaterloo-racket-tools";
    deps = [
      "base"
      "htdp-trace"
      "graphic-block"
    ];
  };
  "racket-route-match" = {
    src = fetchGit {
      url = "https://github.com/Junker/racket-route-match.git";
      rev = "c9800e602f0e58bf6e0273d7dbdb86d28f9047cb";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "colors-as-strings" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/colors-as-strings.git";
      rev = "6f6f5594f46ebcdc96ab9c82edc4e5a90d6f0896";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "req-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-req.git";
      rev = "4826c86164a2713be161a7e9a8e952c042ef5f75";
    };
    subpath = "src/req-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "ziptie-git"
      "req-lib"
    ];
  };
  "rsharp" = {
    src = fetchGit {
      url = "https://github.com/derkachdaniil/rsharp.git#main";
      rev = "78b24bd16161b40d24a83eb10c929ccb00c67aba";
      ref = "main";
    };

    deps = [
      "brag-lib"
      "optimization-coach"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "reprovide-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/reprovide-lang.git";
      rev = "f38e629f9713d2bc2691538b2ce5784bb1187252";
    };
    subpath = "reprovide-lang";
    deps = [
      "base"
      "reprovide-lang-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "png-image" = {
    src = fetchGit {
      url = "https://github.com/lehitoskin/png-image";
      rev = "2515ab0af55f3d9e8aac92aaa3bc6a9dc571f60d";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "eclass2scrbl" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-eclass2scrbl.git";
      rev = "756edcb3c5b72664b67b58f29c13ab0fd070bf81";
    };

    deps = [
      "base"
      "brag-lib"
      "threading-lib"
      "upi-lib"
      "scribble-lib"
      "ziptie-git"
    ];
  };
  "sugar" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/sugar.git";
      rev = "c90834b77afad07f9b02986fc8e157ccf30b753c";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "net-ip-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-net-ip.git";
      rev = "be7075c78baf122dc05beaf71faf941159aaad64";
    };
    subpath = "net-ip-lib";
    deps = [
      "base"
    ];
  };
  "irc-client" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-irc-client";
      rev = "dc3958adf0d8e7a8bf34820cb7bc6630eb18d622";
    };

    deps = [
      "base"
      "irc"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-doc"
      "scribble-lib"
      "typed-racket-doc"
    ];
  };
  "pmsf-manifest" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-manifest";
    deps = [
      "base"
      "srfi-lite-lib"
      "brag-lib"
      "reprovide-lang-lib"
      "threading-lib"
      "pmsf-lib"
    ];
  };
  "multiscope" = {
    src = fetchGit {
      url = "https://github.com/michaelballantyne/multiscope.git";
      rev = "58af714ee263b3a34006b0aa810d0c6e34ba93f7";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "tasks" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-tasks";
      rev = "2d2e1e096fec61da49531a86421d7e7eb4a9f3df";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "hash-star" = {
    src = fetchGit {
      url = "https://github.com/priime0/hash-star.git#master";
      rev = "fbc634f2a546eddf4a09df0f3bd59ef55448c79e";
      ref = "master";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "javascript" = {
    src = fetchGit {
      url = "https://github.com/samth/javascript.plt";
      rev = "327c2de5e09f885b682f80524ff3c12ef6c47543";
    };

    deps = [
      "base"
      "compatibility-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "parameter"
      "parser-tools-lib"
      "planet-lib"
      "scheme-lib"
      "set"
      "srfi-lite-lib"
      "string-constants-lib"
      "unstable-contract-lib"
      "pprint"
      "in-new-directory"
      "parser-tools-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "unstable-doc"
    ];
  };
  "raco-find-collection" = {
    src = fetchGit {
      url = "https://github.com/takikawa/raco-find-collection";
      rev = "7ea60c39b48ac665da7673db53420ec57a3253bd";
    };

    deps = [
      "base"
      "compiler-lib"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "binary-class-exif" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/binary-class-exif";
      rev = "8d475c4dd72de90decedeb3fc0acd53d9cf6f60d";
    };

    deps = [
      "binary-class"
      "base"
    ];
  };
  "magenc" = {
    src = fetchGit {
      url = "https://gitlab.com/dustyweb/magenc.git";
      rev = "9667a4159810a4201380ab675e1ba7d20a30f65a";
    };
    subpath = "magenc";
    deps = [
      "base"
      "crypto-lib"
      "csexp"
      "db-lib"
      "gui-lib"
      "sql"
      "web-server-lib"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "bzip2" = {
    src = fetchGit {
      url = "https://github.com/97jaz/racket-bzip2";
      rev = "7ceadc95e6221fd9a46f2b009cfc302117fe7f02";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ffmpeg-x86_64-macosx-3-4" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "e8fb290d38e90800ffa1d105dbb540d28f931807";
      ref = "ffmpeg-3.4";
    };
    subpath = "ffmpeg-x86_64-macosx";
    deps = [
      "base"
      "openh264-x86_64-macosx"
    ];
  };
  "contract-profile" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/contract-profile.zip";
      sha256 = "16z3mlkf5fz3swqjazfhf5x06l3a3x9zd4yd9ih4rhb8j4dnk7dc";
    };
    deps = [
      "base"
      "math-lib"
      "profile-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "ruckus" = {
    src = fetchGit {
      url = "https://github.com/cbiffle/ruckus";
      rev = "62cd4a00837783a88a007c2d5979909a4e86ca0f";
    };

    deps = [
      "base"
      "gui-lib"
      "math-lib"
      "opengl"
      "racket-doc"
    ];
  };
  "php-parser" = {
    src = fetchGit {
      url = "https://github.com/antoineb/php-parser";
      rev = "159665a9078e46f1ea7712363f83cb8e5d9a2703";
    };

    deps = [
      "base"
      "parser-tools"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "errortrace-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/errortrace-lib.zip";
      sha256 = "19dyq2x88wbbvvwp1mas3rw076pkwiapisfgzsr3wrba4ckcw3al";
    };
    deps = [
      "base"
      "source-syntax"
    ];
  };
  "threading-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/threading";
      rev = "aedb198261cf73b3f9b282566e7e7dd9b9be63a6";
    };
    subpath = "threading-lib";
    deps = [
      "base"
    ];
  };
  "ANU-Web-Quantum-RNG" = {
    src = fetchGit {
      url = "https://bitbucket.org/Tetsumi/anu-web-quantum-rng.git";
      rev = "0264d35f5c5431d55ec0b22f2a51d314207e32a6";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "quad" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/typesetting.git";
      rev = "680422ea57fce4bc4280edb7412c161561d1641c";
      ref = "main";
    };
    subpath = "quad";
    deps = [
      "at-exp-lib"
      "base"
      "beautiful-racket-lib"
      "fontland"
      "hyphenate"
      "pitfall"
      "pollen"
      "rackunit-lib"
      "sugar"
      "txexpr"
      "markdown"
      "pict-lib"
      "debug"
      "words"
      "draw-lib"
      "draw-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "parsack-test" = {
    src = fetchGit {
      url = "https://github.com/stchang/parsack.git";
      rev = "57b21873e8e3eb7ffbdfa253251c3c27a66723b1";
      ref = "master";
    };
    subpath = "parsack-test";
    deps = [
      "base"
      "parsack-lib"
      "rackunit-lib"
    ];
  };
  "typed-racket-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-test.zip";
      sha256 = "1avdkvqqmq5jzrjslpg3fg0n474xpq90i1ab2gvi69za2lmsb31d";
    };
    deps = [
      "redex-lib"
      "sandbox-lib"
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "2d"
      "typed-racket-compatibility"
      "racket-index"
      "rackunit-lib"
      "compatibility-lib"
      "racket-test-core"
      "scheme-lib"
      "base"
      "racket-benchmarks"
      "compiler-lib"
      "htdp-lib"
    ];
  };
  "treap" = {
    src = fetchGit {
      url = "https://github.com/spencereir/treap";
      rev = "e703ae7f1bec7a7131eeb2e9e5e6b488c4b45d7e";
    };

    deps = [
    ];
  };
  "drracket-tool" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-tool.zip";
      sha256 = "0sdl3sdbbf09a16vki75nhgrs8qhldxj60h73ccsv4jkvn1jcfab";
    };
    deps = [
      "drracket-tool-lib"
      "drracket-tool-doc"
    ];
  };
  "riff" = {
    src = fetchGit {
      url = "https://github.com/lehitoskin/riff";
      rev = "459efecc4168cf922660f95b6195935d66cb6a2b";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "rtmidi" = {
    src = fetchGit {
      url = "https://github.com/jbclements/rtmidi";
      rev = "11879d2e6a3eea7d1766d58123fe89363831313f";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "irc" = {
    src = fetchGit {
      url = "https://github.com/schuster/racket-irc";
      rev = "ba160652e59b57e132ff9155509295484abe656b";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "gemtext" = {
    src = fetchGit {
      url = "https://github.com/bctnry/gemtext-racket.git#master";
      rev = "479172598771b69fbeb199037929c2ce0b37e22b";
      ref = "master";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "hyper-literate" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/hyper-literate.git#main";
      rev = "24fd9ca7ca9b96e3072d37306dc79edf24ba4ef1";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "at-exp-lib"
      "scheme-lib"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "typed-racket-doc"
      "scribble-enhanced"
      "sexp-diff"
      "tr-immutable"
      "typed-map-lib"
      "debug-scopes"
      "syntax-color-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
      "scribble-doc"
      "rackunit-doc"
    ];
  };
  "libsqlite3-aarch64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsqlite3-aarch64-macosx-3.43.1.tar.gz";
      sha256 = "0sdryaz7iypjiv9x0xij56rppyya262g5jhsmnyfakfb904xxs15";
    };
    deps = [
      "base"
    ];
  };
  "hackett" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/hackett.git";
      rev = "e90ace9e4a056ec0a2a267f220cb29b756cbefce";
    };
    subpath = "hackett";
    deps = [
      "hackett-doc"
      "hackett-lib"
    ];
  };
  "interconfection" = {
    src = fetchGit {
      url = "https://github.com/lathe/interconfection-for-racket.git";
      rev = "fc28969ac94ab3d7277b4b8771ecdc6c9bffc513";
      ref = "main";
    };
    subpath = "interconfection";
    deps = [
      "interconfection-doc"
      "interconfection-lib"
    ];
  };
  "pk" = {
    src = fetchGit {
      url = "https://gitlab.com/dustyweb/racket-pk.git";
      rev = "f39127f1c23c479390d32a8e32502a0dc14b8f7d";
    };
    subpath = "pk";
    deps = [
      "base"
    ];
  };
  "stream-etc" = {
    src = fetchGit {
      url = "https://github.com/camoy/stream-etc.git#main";
      rev = "771fe7ebe7c69039fed3f22e713a15d7ace79736";
      ref = "main";
    };

    deps = [
      "base"
      "chk-lib"
      "sandbox-lib"
      "threading-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "macrotypes-example" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "macrotypes-example";
    deps = [
      "base"
      "macrotypes-lib"
    ];
  };
  "disposable-test" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-disposable";
      rev = "843d3e224fd874b9c463b74cb5ef13d8a0b5766a";
    };
    subpath = "disposable-test";
    deps = [
      "base"
      "disposable"
      "doc-coverage"
      "fixture"
      "rackunit-lib"
    ];
  };
  "pkg-dep-draw" = {
    src = fetchGit {
      url = "https://github.com/mflatt/pkg-dep-draw";
      rev = "10ccd5208aab1c54cab3fe767c48b98f87f1e79d";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rwind" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/rwind";
      rev = "5a4f580b0882452f3938aaa1711a6d99570f006f";
      ref = "master";
    };
    deps = [
      "x11"
      "base"
      "rackunit-lib"
      "slideshow-lib"
      "readline-lib"
      "gui-lib"
    ];
  };
  "3s" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/3s";
      rev = "9a5036b0e6ec282223bebe8310bd8421ec60d3e5";
    };

    deps = [
      "lux"
      "base"
      "openal"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "beautiful-racket-lib" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/beautiful-racket.git";
      rev = "b0d133f4ba4149ea506d8b0dbd3845c915efdd06";
    };
    subpath = "beautiful-racket-lib";
    deps = [
      "base"
      "beautiful-racket-macro"
      "at-exp-lib"
      "sugar"
      "debug"
      "rackunit-lib"
      "gui-lib"
      "draw-lib"
    ];
  };
  "systemd" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-systemd";
      rev = "fd389e3d6369aeae47004deef9d1d93018db7da4";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "libuuid"
      "racket-doc"
    ];
  };
  "ebuild-transformers" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-transformers";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "threading-lib"
      "upi-lib"
      "ebuild-lib"
    ];
  };
  "racklog" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racklog.zip";
      sha256 = "1akyqxh3iac61vakmby3n1jw7pcyrkwbgfhkwqxdghnz0994sr94";
    };
    deps = [
      "base"
      "datalog"
      "eli-tester"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "dm" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-dm";
      rev = "15b137ef72b0bf1f10cfd1d14e80e2472e8a5df4";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "libuuid"
      "racket-doc"
    ];
  };
  "lathe-morphisms-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-morphisms-for-racket.git";
      rev = "07e4a0c299e1f015e531acf51393e6f8fd8d7354";
      ref = "main";
    };
    subpath = "lathe-morphisms-doc";
    deps = [
      "base"
      "lathe-comforts-doc"
      "lathe-comforts-lib"
      "lathe-morphisms-lib"
      "parendown-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "portaudio-aarch64-macosx" = {
    src = fetchGit {
      url = "https://github.com/jbclements/portaudio-aarch64-macosx.git#main";
      rev = "b7654210cfd530a05766bc8e1a3144a6af1d7147";
      ref = "main";
    };

    deps = [
      "base"
    ];
  };
  "semaphore-utils" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/semaphore-utils.git";
      rev = "a0c803cb60c78a45cdd457f2f85301bb86671806";
    };

    deps = [
      "base"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
      "test-more"
    ];
  };
  "common-icons" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/common-icons.git";
      rev = "ff6013cbb58ca0914b13a53bcdd2b4dd9bc609d3";
    };

    deps = [
      "base"
      "https://github.com/thoughtstem/define-assets-from.git"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "chk-doc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/chk";
      rev = "32fb635e19fa2dc2d9c35bac0964ab76dde1e89e";
    };
    subpath = "chk-doc";
    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "chk-lib"
    ];
  };
  "libvid-i386-macosx-0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "";
    };
    subpath = "libvid-i386-macosx";
    deps = [
    ];
  };
  "molis-hai" = {
    src = fetchGit {
      url = "https://github.com/jbclements/molis-hai/";
      rev = "6a335ec73c144f9d8ac538752ca8e6fd0b3b3cce";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "web-server-lib"
      "pfds"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "libgit2-aarch64-macosx" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/native-libs.git#aarch64-macosx";
      rev = "446e61a5b90a4d406f91bb80aaa7e93bc46b422d";
      ref = "aarch64-macosx";
    };

    deps = [
      "base"
    ];
  };
  "positional-tree-utils" = {
    src = fetchGit {
      url = "https://github.com/v-nys/positional-tree-utils.git";
      rev = "1ef3b3d188660b4849788872d6a2b3eaf5d355df";
    };

    deps = [
      "at-exp-lib"
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "list-utils"
    ];
  };
  "redex-parameter" = {
    src = fetchGit {
      url = "https://github.com/camoy/redex-parameter.git";
      rev = "c4b4fbb9815d577727e1a7333a2e7d1ede8a8a4c";
    };

    deps = [
      "base"
      "redex-lib"
      "chk-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "redex-doc"
      "sandbox-lib"
    ];
  };
  "dollar" = {
    src = fetchGit {
      url = "https://github.com/rogerkeays/racket-dollar.git#main";
      rev = "16fa7aec4e1cef43a7b678dc798b1a9c20a87bb6";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit"
    ];
  };
  "yotsubAPI" = {
    src = fetchGit {
      url = "https://github.com/g-gundam/yotsubAPI";
      rev = "cbf312862fc4e94deb74790a2756d5745e5463fc";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "get-bonus" = {
    src = fetchGit {
      url = "https://github.com/get-bonus/get-bonus";
      rev = "d9bb88d2940263641c35ad98912c5a2b3136cc96";
      ref = "master";
    };
    deps = [
      "3s"
      "openal"
      "lux"
      "dos"
      "fector"
      "opengl"
      "base"
      "compatibility-lib"
      "data-lib"
      "data-enumerate-lib"
      "draw-lib"
      "eli-tester"
      "gui-lib"
      "htdp-lib"
      "math"
      "pfds"
      "plot"
      "rackunit-lib"
      "redex-lib"
      "mode-lambda"
      "apse"
      "slideshow-lib"
      "typed-racket-lib"
      "racket-doc"
    ];
  };
  "laramie-lib" = {
    src = fetchGit {
      url = "https://github.com/jessealama/laramie.git";
      rev = "f9c9150e9afe8aadfa9251972ecc915f867657f3";
    };
    subpath = "laramie-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "txexpr"
      "http-easy"
      "rackunit-lib"
      "rackunit-typed"
      "http-easy"
    ];
  };
  "math-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-test.zip";
      sha256 = "183qayv9l25raax9dx01qhdhlklna8vgg8ykyy2ficg91yr7p4ac";
    };
    deps = [
      "base"
      "math-lib"
      "racket-test"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "eli-tester" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/eli-tester.zip";
      sha256 = "18iic63zm08vnpq0vcrmlsxkzbp9chiz1rh51r6xkzyqmshznvig";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "russian" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/russian.git";
      rev = "c536993445f3e34ed6baa614bf4f0f8be1d2e3aa";
    };

    deps = [
      "base"
      "srfi-lite-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "heresy" = {
    src = fetchGit {
      url = "https://github.com/jarcane/heresy";
      rev = "ff25fb3fcef82f0193bde345ae7eec193f2ff716";
    };

    deps = [
      "base"
      "unstable-lib"
      "rackjure"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "dbg-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-dbg.git";
      rev = "a265f4eeaf0b38fe2cb3196013fa698eb9f7a172";
    };
    subpath = "dbg-doc";
    deps = [
      "base"
      "dbg"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "unstable-parameter-group-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-parameter-group-lib";
      rev = "1906272f807c12a3d7e2a1c430c5b5745c2de6a4";
    };

    deps = [
      "base"
      "images-lib"
    ];
  };
  "portage-admin-test" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-portage-admin.git";
      rev = "84fc9d2e2838eca9d576ca0f6862ed0e10841c86";
    };
    subpath = "src/portage-admin-test";
    deps = [
      "base"
      "rackunit-lib"
      "portage-admin-lib"
    ];
  };
  "postnet" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/postnet.zip";
      sha256 = "08j2f44q2psqac6h79lxv73y8y17dfsycds9psbx26jywvfk3sqj";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "jsond" = {
    src = fetchGit {
      url = "https://github.com/benknoble/jsond.git#main";
      rev = "0d50717de5d2135751f9be07e7463b4739873d4d";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "mike" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-mike.git";
      rev = "4e6abb0f111080b13c5de40b7094e9df5820e2c2";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "list-utils" = {
    src = fetchGit {
      url = "https://github.com/v-nys/list-utils.git";
      rev = "d364b7d3e508abc4da31d6e600ee201f76d05217";
    };

    deps = [
      "at-exp-lib"
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "scribble-bettergrammar-lib" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-bettergrammar.git";
      rev = "75aa8759e19da7ed240acfbbdae9239126502866";
      ref = "main";
    };
    subpath = "scribble-bettergrammar-lib";
    deps = [
      "base"
      "scribble-lib"
      "sexp-diff-lib"
    ];
  };
  "monotonic" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-monotonic.git";
      rev = "d857b49046ec3466505c76701d08a9b48100af87";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "sau-cptr-405" = {
    src = fetchzip {
      stripRoot = false;
      url = "http://computing.southern.edu/rordonez/class/CPTR-405/sau-cptr-405.zip";
      sha256 = "1i8nqrb1nc9716ir301vsrcdl2mli80gr8f8kl4qydp0s8pjxj88";
    };
    deps = [
      "base"
      "compatibility-lib"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "htdp-lib"
      "net-lib"
      "pconvert-lib"
      "sandbox-lib"
      "rackunit-lib"
      "web-server-lib"
      "plait"
      "gui-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "htdp-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/htdp-test.zip";
      sha256 = "0kykxl386gf7vkgx7917i5ylipjgvacm7vv8w471lczing3ggyzr";
    };
    deps = [
      "base"
      "htdp-lib"
      "lazy"
      "deinprogramm"
      "pict-lib"
      "redex-lib"
      "racket-index"
      "scheme-lib"
      "srfi-lite-lib"
      "compatibility-lib"
      "gui-lib"
      "racket-test"
      "rackunit-lib"
      "profile-lib"
      "wxme-lib"
      "pconvert-lib"
      "at-exp-lib"
      "drracket-tool-lib"
    ];
  };
  "libvid-x86_64-linux-0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-x86_64-linux";
    deps = [
      "base"
    ];
  };
  "mosquitto-ffi" = {
    src = fetchGit {
      url = "https://github.com/bartbes/mosquitto-racket";
      rev = "03b969b3f8806f7cfeb31b281981628fe8e2ca8b";
    };

    deps = [
      "base"
    ];
  };
  "drcomplete-filename" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-filename";
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "srfi-lib"
      "drcomplete-base"
    ];
  };
  "object-backtrace" = {
    src = fetchGit {
      url = "https://github.com/samth/object-backtrace.git";
      rev = "154610bbe33f3fe0abdee6c016cde534048c50fb";
    };

    deps = [
      "base"
    ];
  };
  "x11" = {
    src = fetchGit {
      url = "https://github.com/kazzmir/x11-racket";
      rev = "97c4a75872cfd2882c8895bba88b87a4ad12be0e";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "compatibility-lib"
      "scheme-lib"
    ];
  };
  "ulid" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-ulid.git";
      rev = "20b452b923a133258da53e7b34fbf7860b63bb7c";
    };

    deps = [
      "base"
      "racket-doc"
      "rackcheck-lib"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "pict3d" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/pict3d";
      rev = "067944944d8c4b24893a48e0bcb188751e264183";
    };

    deps = [
      "base"
      "draw-lib"
      "srfi-lite-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "math-lib"
      "scribble-lib"
      "gui-lib"
      "pconvert-lib"
      "pict-lib"
      "profile-lib"
      "pfds"
      "draw-doc"
      "gui-doc"
      "gui-lib"
      "racket-doc"
      "plot-doc"
      "plot-lib"
      "plot-gui-lib"
      "images-doc"
      "images-lib"
      "htdp-doc"
      "htdp-lib"
      "pict-doc"
      "typed-racket-doc"
    ];
  };
  "socketcan" = {
    src = fetchGit {
      url = "https://github.com/abencz/racket-socketcan#master";
      rev = "744bf37d7a347a55d1ec72885f87d35919f68b7b";
      ref = "master";
    };

    deps = [
      "base"
      "make"
      "scribble-lib"
    ];
  };
  "ebuild-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-doc";
    deps = [
      "base"
      "racket-doc"
      "net-doc"
      "scribble-lib"
      "ziptie-git"
      "ebuild-lib"
      "ebuild-templates"
      "ebuild-tools"
      "ebuild-transformers"
    ];
  };
  "unstable-options-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-options-lib";
      rev = "5b9ff5e62319ddb929235c5ddcd4cee350ee9a9b";
    };

    deps = [
      "base"
      "option-contract-lib"
    ];
  };
  "esterel-redex" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "40b8f7f30299bf4b70efaa4664ba538a1b442e25";
    };
    subpath = "esterel-redex";
    deps = [
      "base"
      "redex-lib"
      "redex-gui-lib"
      "pict-lib"
      "scribble-lib"
    ];
  };
  "sentry-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-sentry.git";
      rev = "720daa812297328cd8d50852865b514143dad12d";
    };
    subpath = "sentry-doc";
    deps = [
      "base"
      "gregor-lib"
      "sentry-lib"
      "scribble-lib"
      "web-server-lib"
      "gregor-doc"
      "racket-doc"
      "web-server-doc"
    ];
  };
  "x509" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/crypto.git";
      rev = "129997ab537db2eea142b5eb25cf2fc74a19d4ec";
    };
    subpath = "x509";
    deps = [
      "base"
      "x509-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scramble"
      "asn1-lib"
      "asn1-doc"
      "crypto-lib"
      "crypto-doc"
    ];
  };
  "fundamentals" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "427efdec036df998b05553484f6ba5dd0f1bc4af";
    };
    subpath = "fundamentals";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
    ];
  };
  "css-expr" = {
    src = fetchGit {
      url = "https://github.com/leafac/css-expr.git";
      rev = "d060b2a76d08013c91318890dc5d9f6cc6c81138";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "nanopass"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
    ];
  };
  "base" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/base.zip";
      sha256 = "08ylx48qgrd2jr9n204np3zcxp2946zadx86rkfi2hfrbs3wxj7x";
    };
    deps = [
      "racket-lib"
      "racket"
    ];
  };
  "classicthesis-scribble" = {
    src = fetchGit {
      url = "https://github.com/stamourv/classicthesis-scribble";
      rev = "e6c3f2be24654cbf0b17d9027737c2d3eb1cddd1";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "leftist-tree" = {
    src = fetchGit {
      url = "https://github.com/97jaz/leftist-tree";
      rev = "3e4f55aecdd0978f282dde6964f444b5da71ed52";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "data-enumerate-lib"
    ];
  };
  "errortrace-pkg" = {
    src = fetchGit {
      url = "https://github.com/sorawee/errortrace-pkg.git";
      rev = "67719cce30a4b675b58dc882e99ac2ca29e00ab7";
    };

    deps = [
      "base"
      "custom-load"
      "errortrace-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "pdf-read" = {
    src = fetchGit {
      url = "https://github.com/gcr/pdf-read/";
      rev = "bc442055764128efb06badeac8b4bfd026475106";
    };

    deps = [
      "base"
      "gui-lib"
      "draw-lib"
      "slideshow-lib"
      "scribble-lib"
      "racket-doc"
      "pict-doc"
      "draw-doc"
    ];
  };
  "crypto-test" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/crypto.git";
      rev = "129997ab537db2eea142b5eb25cf2fc74a19d4ec";
    };
    subpath = "crypto-test";
    deps = [
      "base"
      "rackunit-lib"
      "asn1-lib"
      "crypto-lib"
    ];
  };
  "koyo-sessions-redis" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo-sessions-redis.git";
      rev = "4fcd1fba181e177ea2958df619e0810bac70d79a";
    };

    deps = [
      "base"
      "koyo-lib"
      "redis-lib"
      "koyo-doc"
      "racket-doc"
      "redis-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "forms-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-forms.git";
      rev = "e6ba9fa4a4e17d744760193dc7b8a4b399e9db71";
    };
    subpath = "forms-lib";
    deps = [
      "base"
      "srfi-lite-lib"
      "web-server-lib"
    ];
  };
  "math-x86_64-linux-natipkg" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-x86_64-linux-natipkg.zip";
      sha256 = "1r9a3swipw6zgxm0n0wqpc8kxdjljz6vfijnbkirp2iq4yrm1z43";
    };
    deps = [
      "base"
    ];
  };
  "cairo-lib" = {
    src = fetchGit {
      url = "https://github.com/soegaard/cairo.git";
      rev = "c31a089e749b4854ab4f63e427881f79bca615d2";
    };
    subpath = "cairo-lib";
    deps = [
      "base"
      "draw-lib"
    ];
  };
  "dallas" = {
    src = fetchGit {
      url = "https://github.com/jessealama/dallas.git";
      rev = "8cc132551326f28efc4536081b947a466429937b";
    };
    subpath = "dallas";
    deps = [
      "dallas-lib"
      "dallas-doc"
    ];
  };
  "picturing-programs-typed" = {
    src = fetchGit {
      url = "https://github.com/maueroats/picturing-programs-typed.git";
      rev = "82dd9c1938c0fa9fdb5ea95849f7ca6f3a082edd";
    };

    deps = [
      "base"
      "2htdp-typed"
      "picturing-programs"
      "draw-lib"
      "htdp-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "unstable-list-lib"
      "unstable-contract-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "google-spreadsheet-api" = {
    src = fetchGit {
      url = "https://gitlab.com/car.margiotta/google-spreadsheet-api.git";
      rev = "081c8a9543b5d1f0a5329de62c87eec5f12e8b9c";
    };

    deps = [
      "base"
      "crypto"
      "net-jwt"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-code-examples"
    ];
  };
  "brick-tool" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-blocks.git";
      rev = "e3653cac8500883e91feefd6462cb413751d0c16";
    };
    subpath = "brick-tool";
    deps = [
      "racket-bricks"
      "brick-snip"
    ];
  };
  "scone" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/racket-scone.git";
      rev = "6333b272b068b7b256150ef89dec43f402c7e84b";
    };

    deps = [
      "base"
      "text-table"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "math-quiz" = {
    src = fetchGit {
      url = "https://github.com/hrvoje064/math-quiz-jasna.git";
      rev = "71e46b6f0ddc9fcbc3510e38b358f55c63ffea4d";
    };

    deps = [
      "gui-pkg-manager-lib"
      "net-lib"
      "drracket"
      "gui-lib"
      "htdp-lib"
      "pict-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "raylib" = {
    src = fetchGit {
      url = "https://github.com/eutro/racket-raylib.git#main";
      rev = "974f8159a5b942219b211bb00a2ca560ad9e6f61";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "gui-lib"
      "net-doc"
    ];
  };
  "libopenal-racket" = {
    src = fetchGit {
      url = "https://github.com/lehitoskin/libopenal-racket";
      rev = "30ce8d3f2e225b65d0502a0c4feb75e1dea35cc6";
    };

    deps = [
    ];
  };
  "pollen-count" = {
    src = fetchGit {
      url = "https://github.com/malcolmstill/pollen-count";
      rev = "c4da923debcf40d0558ea4cb97c8a7bd4f35f34b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "txexpr"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "mintexpp-reader-lib" = {
    src = fetchGit {
      url = "https://github.com/shhyou/mintexpp.git";
      rev = "2d457fa70581b45871833405182a84f7de236b47";
    };
    subpath = "mintexpp-reader-lib";
    deps = [
      "base"
    ];
  };
  "bystroTeX" = {
    src = fetchGit {
      url = "https://github.com/amkhlv/amkhlv/";
      rev = "a2723bfe6f73655f5a2eb83504994ba8716bec00";
    };
    subpath = "bystroTeX";
    deps = [
      "base"
      "compatibility-lib"
      "db-lib"
      "scheme-lib"
      "scribble-lib"
      "net-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-doc"
      "at-exp-lib"
    ];
  };
  "java-processing" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/java-processing.git";
      rev = "8a232dac0405edf13067397364c9dbd702addca6";
    };

    deps = [
      "racket-to"
    ];
  };
  "circular-layout" = {
    src = fetchGit {
      url = "https://github.com/HouptLab/circular-layout.git#main";
      rev = "5776fa13358f9f9bde35aa407767b57247015487";
      ref = "main";
    };

    deps = [
      "base"
      "gui-lib"
      "scribble-lib"
      "at-exp-lib"
      "draw-doc"
      "racket-doc"
    ];
  };
  "future-visualizer" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer.zip";
      sha256 = "0jsh2bpbswa8vxmkk9w167z1n4049n593x90pz6sawjajr2g54nl";
    };
    deps = [
      "base"
      "data-lib"
      "draw-lib"
      "pict-lib"
      "gui-lib"
      "future-visualizer-pict"
      "scheme-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "redex-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-doc.zip";
      sha256 = "1pslx80d1fmqqh5pip81vaywbxfn5mw3f1va4jdm2d7k7iz1xd8s";
    };
    deps = [
      "base"
      "racket-doc"
      "draw-doc"
      "gui-doc"
      "htdp-doc"
      "pict-doc"
      "slideshow-doc"
      "at-exp-lib"
      "data-doc"
      "data-enumerate-lib"
      "scribble-lib"
      "gui-lib"
      "htdp-lib"
      "pict-lib"
      "redex-gui-lib"
      "redex-benchmark"
      "rackunit-lib"
      "sandbox-lib"
    ];
  };
  "polyglot-test" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/polyglot.git";
      rev = "d27ca7fe90fd4ba2a6c5bcd921fce89e72d2c408";
    };
    subpath = "polyglot-test";
    deps = [
      "base"
      "polyglot-lib"
      "aws"
      "unlike-assets-lib"
      "markdown"
      "rackunit-lib"
    ];
  };
  "smtp-server" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-smtp-server.git";
      rev = "c702e383617bef000442392bd83ec63168c7b48f";
    };
    subpath = "smtp-server";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "sameday" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-sameday.git";
      rev = "247071c522ce1bedef406ba3a430e05a95aa0159";
    };

    deps = [
      "base"
      "gregor-lib"
      "http-easy"
      "gregor-doc"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "compose-app" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/compose-app";
      rev = "b1ca7838740c3cc84e392ea17f9e57f0595c111f";
    };

    deps = [
      "base"
      "fancy-app"
      "racket-doc"
      "scribble-lib"
      "scribble-text-lib"
      "rackunit-lib"
    ];
  };
  "drracket-ayu-mirage" = {
    src = fetchGit {
      url = "https://github.com/oransimhony/drracket-ayu-mirage.git";
      rev = "5271740c3f0089e3958647353c24b73a3a80e401";
    };

    deps = [
      "base"
    ];
  };
  "GLPK" = {
    src = fetchGit {
      url = "https://github.com/jbclements/glpk";
      rev = "ff20adf1ea0f6792b6a858aa421c79ce22a8fd5d";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "racket-doc"
      "scribble-lib"
      "scribble-math"
      "typed-racket-more"
    ];
  };
  "fector" = {
    src = fetchGit {
      url = "https://github.com/dvanhorn/fector";
      rev = "269812d67549fbd77273f5025a4144214d790081";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "messagepack" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-messagepack.git";
      rev = "53074c338fa99102ac9c036311fba5c04f7e9049";
    };
    subpath = "messagepack";
    deps = [
      "base"
      "messagepack-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "racket-x86_64-macosx-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/8a9c9277bbd74d09afe8dba56c79ce12a10300dc/racket-x86_64-macosx-2.zip";
      sha256 = "17kn33wyl1qf3mcc1wckzk56xcvp7ms3r38r4k3ms0qpdl28yfzw";
    };
    deps = [
      "base"
    ];
  };
  "simple-obfuscation" = {
    src = fetchGit {
      url = "https://github.com/rfindler/simple-obfuscation.git";
      rev = "f6ff1afe75ae97994b351a9dc189c0e31d06fdf6";
    };

    deps = [
      "base"
    ];
  };
  "redex-benchmark" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-benchmark.zip";
      sha256 = "0rl15rsimhjjf2vh1k2gi7sm7zcrjj0f3ah02zz9nr5k8fxfx324";
    };
    deps = [
      "base"
      "compiler-lib"
      "rackunit-lib"
      "redex-lib"
      "redex-examples"
      "math-lib"
      "plot-lib"
    ];
  };
  "behavior" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/behavior.git";
      rev = "6585145db8ba7304c09248835c518ff9245385e3";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "scribble-math"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "mock-rackunit" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-mock";
      rev = "5e8e2a1dd125e5e437510c87dabf903d0ec25749";
    };
    subpath = "mock-rackunit";
    deps = [
      "base"
      "mock"
      "rackunit-lib"
      "racket-doc"
      "rackunit-doc"
      "scribble-lib"
      "sweet-exp"
    ];
  };
  "gui-pkg-manager" = {
    src = fetchGit {
      url = "https://github.com/racket/gui-pkg-manager/";
      rev = "70cc90538c5dffb722e17cabb769aeadfef32ec4";
    };
    subpath = "gui-pkg-manager";
    deps = [
      "gui-pkg-manager-lib"
      "gui-pkg-manager-doc"
      "gui-lib"
      "base"
    ];
  };
  "pitfall" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/typesetting.git";
      rev = "680422ea57fce4bc4280edb7412c161561d1641c";
      ref = "main";
    };
    subpath = "pitfall";
    deps = [
      "draw-lib"
      "with-cache"
      "at-exp-lib"
      "base"
      "beautiful-racket-lib"
      "brag"
      "fontland"
      "rackunit-lib"
      "srfi-lite-lib"
      "sugar"
      "gregor"
      "debug"
    ];
  };
  "lens-common" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/lens";
      rev = "733db7744921409b69ddc78ae5b23ffaa6b91e37";
    };
    subpath = "lens-common";
    deps = [
      "racket"
      "base"
      "fancy-app"
      "rackunit-lib"
      "reprovide-lang-lib"
      "lens-data"
      "sweet-exp-lib"
    ];
  };
  "metapict" = {
    src = fetchGit {
      url = "https://github.com/soegaard/metapict.git";
      rev = "119b2b37c52c1a6718304c6e8fc309ff9df94db5";
    };

    deps = [
      "base"
      "draw-lib"
      "math-lib"
      "gui-lib"
      "parser-tools-lib"
      "pict-lib"
      "slideshow-lib"
      "srfi-lite-lib"
      "ppict"
      "htdp-lib"
      "compatibility-lib"
      "graph-lib"
      "plot-gui-lib"
      "plot-lib"
      "rackunit-lib"
      "unstable-latent-contract-lib"
      "unstable-parameter-group-lib"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "draw-doc"
      "pict-doc"
      "racket-poppler"
    ];
  };
  "elasticsearch" = {
    src = fetchGit {
      url = "https://github.com/vishesh/elasticsearch.rkt";
      rev = "160e2be024a21e7b043b93a5d45eaaca8e3713a1";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "lens-unstable" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/lens";
      rev = "733db7744921409b69ddc78ae5b23ffaa6b91e37";
    };
    subpath = "lens-unstable";
    deps = [
      "base"
      "lens-lib"
      "reprovide-lang-lib"
      "sweet-exp-lib"
    ];
  };
  "rackpgmp" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/pgmp";
      rev = "405316e54f194a5d8cbf968bbcb96a0ef3ea70a3";
    };
    subpath = "rackpgmp";
    deps = [
      "base"
      "racket-doc"
      "errortrace-doc"
      "scribble-lib"
      "sandbox-lib"
      "errortrace-lib"
      "rackunit-lib"
      "r6rs-lib"
    ];
  };
  "racket-test-core" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-test-core.zip";
      sha256 = "0d3y6p7wagppsm2vsikpydd6aaw3sz2jhj82bgw8gb6a7fzqfs1i";
    };
    deps = [
      "base"
      "zo-lib"
      "at-exp-lib"
      "serialize-cstruct-lib"
      "dynext-lib"
      "sandbox-lib"
    ];
  };
  "pinyin" = {
    src = fetchGit {
      url = "https://github.com/xuchunyang/pinyin.git";
      rev = "568e626f8be36c311f40d3f6771cf4f4d1cee677";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "openweather" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/openweather.git";
      rev = "a0c4e4832b3ac05c1c38fbf64c6ce3ff583882e7";
    };

    deps = [
      "opt"
      "uri"
      "http11"
      "tjson"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "typed-racket-lib"
      "typed-racket-more"
      "rackunit-lib"
    ];
  };
  "drcomplete-user-defined" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-user-defined";
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "syntax-color-lib"
      "drcomplete-base"
      "rackunit-lib"
    ];
  };
  "morsel-lib" = {
    src = fetchGit {
      url = "https://github.com/default-kramer/morsel.git";
      rev = "10cf376f07755f066cbbfc2d242c104f103b33da";
    };
    subpath = "morsel-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "libvid-i386-linux" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-i386-linux";
    deps = [
      "base"
    ];
  };
  "math-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-lib.zip";
      sha256 = "00zp6ip4j58i63k5jf7ba91l9pf6p4mfrd44p8an1a6w6a3zh8k3";
    };
    deps = [
      "base"
      "r6rs-lib"
      "typed-racket-lib"
      "math-i386-macosx"
      "math-x86_64-macosx"
      "math-ppc-macosx"
      "math-aarch64-macosx"
      "math-win32-i386"
      "math-win32-x86_64"
      "math-win32-arm64"
      "math-x86_64-linux-natipkg"
    ];
  };
  "xexpr-path" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-xexpr-path";
      rev = "59f07164a5735441953c411a78d7dbe2f8ebcdc0";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "derp-3" = {
    src = fetchGit {
      url = "https://bitbucket.org/jbclements/derp-3.git";
      rev = "b26498d7bc7ab09a17b799c0e295f8e514930ca4";
    };

    deps = [
      "base"
      "math-lib"
      "srfi-lib"
    ];
  };
  "logo" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/logo.git";
      rev = "2e9f3f7ffb4b8100aeb52943098f150c1cf7441a";
    };

    deps = [
      "base"
      "htdp-lib"
      "math-lib"
      "parser-tools-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "mime-type" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-net-mime-type.git";
      rev = "961742e5517ddf0cde130f0a18ca532a9734e16e";
    };
    subpath = "mime-type";
    deps = [
      "base"
      "mime-type-lib"
      "base"
      "mime-type-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "gref-lib" = {
    src = fetchGit {
      url = "https://github.com/usaoc/gref.git";
      rev = "4520bf033c74b40c830400b65ac0cbb1d6b8623c";
      ref = "master";
    };
    subpath = "gref-lib";
    deps = [
      "base"
    ];
  };
  "cover-cobertura" = {
    src = fetchGit {
      url = "https://github.com/EFanZh/cover-cobertura.git";
      rev = "2a63c5ef4544b3c6ca928c596ae81e4490f14c14";
    };

    deps = [
      "base"
      "cover"
    ];
  };
  "progedit" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/progedit.zip";
      sha256 = "0avkql4w799ky7irxyl4ls0plz6b5bx8vrjhvcqda3qrv4j2pn0l";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "date" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/date.git";
      rev = "57d7adbbc09dffc26337bff1b1a3597c872be8ea";
    };

    deps = [
      "srfi-lite-lib"
      "typed-racket-lib"
      "base"
      "srfi-lite-lib"
      "typed-racket-more"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "automata-test" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/automata";
      rev = "6abe851b83b18fcdcb8f2b19ab87cdabc90c71ce";
    };
    subpath = "automata-test";
    deps = [
      "base"
      "automata-lib"
      "eli-tester"
    ];
  };
  "math-win32-i386" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-win32-i386.zip";
      sha256 = "05jxkh11nrd82rynxqvffw8qny9nnmpycw6ncyj89l82mizij9yx";
    };
    deps = [
      "base"
    ];
  };
  "base64-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-base64.git";
      rev = "8d6b6340d99f81ba2742ed36b359586f15562338";
    };
    subpath = "base64-lib";
    deps = [
      "base"
    ];
  };
  "postmark-client" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-postmark.git";
      rev = "eec066d44ddfd431de01c9ac0193231d8b9cfd8d";
    };
    subpath = "postmark";
    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "web-server-lib"
    ];
  };
  "http-easy" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-http-easy.git";
      rev = "1f79be1e420b111f17fac2b27573d2411c7445a2";
    };
    subpath = "http-easy";
    deps = [
      "base"
      "http-easy-lib"
      "net-cookies-doc"
      "net-cookies-lib"
      "net-doc"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "syncvar" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-syncvar.git";
      rev = "47d1694a8ab17c292999d53f1d7f30e81e47dbce";
      ref = "release";
    };
    subpath = "syncvar";
    deps = [
      "base"
      "syncvar-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "2d-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/2d-lib.zip";
      sha256 = "0qbblplndcqry62kksh9vffgppdb179p00cg0q2bl8s9dy0s5pkc";
    };
    deps = [
      "base"
      "scribble-lib"
      "syntax-color-lib"
    ];
  };
  "asn1-doc" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/asn1.git";
      rev = "3cd32b61a68b40ec03bed98cd0c4d4d4f72cacf2";
    };
    subpath = "asn1-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "asn1-lib"
    ];
  };
  "crontab-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-crontab.git";
      rev = "8540b0eb8c133497b315ed1f54fc5bd9e94225cb";
    };
    subpath = "crontab-test";
    deps = [
      "base"
      "crontab-lib"
      "base"
      "crontab-lib"
      "rackcheck-lib"
      "rackunit-lib"
    ];
  };
  "temp-c-lib" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/temp-c";
      rev = "43f7f2141c81a301aa229ef4105f458eee070653";
    };
    subpath = "temp-c-lib";
    deps = [
      "base"
      "automata-lib"
    ];
  };
  "ee-lib" = {
    src = fetchGit {
      url = "https://github.com/michaelballantyne/ee-lib.git";
      rev = "eca597bc5792ebe2343a8e71568da9c5e6ec02c7";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "drracket"
    ];
  };
  "video-v0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/video.git#v0.2";
      rev = "8828d1c287030691cbc12f75fb803265fc3d97bb";
      ref = "v0.2";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "draw-lib"
      "images-lib"
      "drracket-plugin-lib"
      "data-lib"
      "pict-lib"
      "wxme-lib"
      "sandbox-lib"
      "at-exp-lib"
      "scribble-lib"
      "bitsyntax"
      "opengl"
      "portaudio"
      "net-lib"
      "syntax-color-lib"
      "parser-tools-lib"
      "graph"
      "libvid-x86_64-macosx-0-2"
      "libvid-x86_64-win32-0-2"
      "libvid-i386-win32-0-2"
      "libvid-x86_64-linux-0-2"
      "libvid-i386-linux-0-2"
      "ffmpeg-x86_64-macosx-3-4"
      "ffmpeg-x86_64-win32-3-4"
      "ffmpeg-i386-win32-3-4"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "draw-doc"
      "ppict"
      "reprovide-lang"
    ];
  };
  "superv" = {
    src = fetchGit {
      url = "https://github.com/sleibrock/superv.git";
      rev = "23a7132484f293c3ca407db5b3e86a9e0a7a9708";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "buid-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-buid.git";
      rev = "cc016257fd517f5e17643a58e6062dc6119f2fe6";
    };
    subpath = "buid-test";
    deps = [
      "base"
      "buid-lib"
      "rackcheck-lib"
      "rackunit-lib"
    ];
  };
  "rince" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/rince.git";
      rev = "61664bfee27a53d18fcb9880e1202eb5cc8f4a5f";
    };

    deps = [
      "base"
      "c-utils"
      "parser-tools-lib"
      "rackunit-lib"
      "turnstile-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "feature-profile" = {
    src = fetchGit {
      url = "https://github.com/stamourv/feature-profile#master";
      rev = "cc96e3aa8efe71c013f662c60e2b0d9231b27f97";
      ref = "master";
    };

    deps = [
      "base"
      "contract-profile"
      "profile-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
    ];
  };
  "stencil-vector-utils" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-stencil-vector-utils.git#master";
      rev = "c06dd00e1aad61f3b7a4b0a5c6693e329f95b8b4";
      ref = "master";
    };

    deps = [
      "base"
      "racket"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "rtnl" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-rtnl";
      rev = "53cf9eb3d1927cd4357ebdf785ffb58cacff6c3e";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
    ];
  };
  "csc104" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.cs.toronto.edu/~gfb/racket-pkgs/csc104.zip";
      sha256 = "0a0n3fxcrwlrgz2ywnrsc4mszl9v4ri3ijkdxb4qlmdb7m8d6rlp";
    };
    deps = [
      "base"
      "tightlight"
      "snack"
      "draw-lib"
      "drracket-plugin-lib"
      "errortrace-lib"
      "gui-lib"
      "htdp-lib"
      "images-lib"
      "net-lib"
      "reprovide-lang"
      "snip-lib"
      "option-contract-lib"
      "parser-tools-lib"
      "syntax-color-lib"
    ];
  };
  "operational-transformation-lib" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-operational-transformation";
      rev = "685d60091bff0428c2ec3cd8c4f63c8ef8b28de5";
    };
    subpath = "operational-transformation-lib";
    deps = [
      "base"
      "rackunit-lib"
      "profile-lib"
    ];
  };
  "pmsf-keywords" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-keywords";
    deps = [
      "base"
      "reprovide-lang-lib"
    ];
  };
  "unstable-test" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable/";
      rev = "99149bf1a6a82b2309cc04e363a87ed36972b64b";
    };
    subpath = "unstable-test";
    deps = [
      "base"
      "racket-index"
      "scheme-lib"
      "at-exp-lib"
      "compatibility-lib"
      "eli-tester"
      "gui-lib"
      "planet-lib"
      "racket-test"
      "rackunit-lib"
      "srfi-lib"
      "syntax-color-lib"
      "typed-racket-lib"
      "unstable-contract-lib"
      "unstable-debug-lib"
      "unstable-lib"
      "unstable-list-lib"
      "unstable-options-lib"
      "unstable-parameter-group-lib"
      "unstable-2d"
    ];
  };
  "r6rs" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs.zip";
      sha256 = "0kpawbwbl0zmbd9rj4xcbm462snhgzqbscff4pm93y7818icjwmd";
    };
    deps = [
      "r6rs-lib"
      "r6rs-doc"
    ];
  };
  "typed-racket-datatype" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/typed-racket-datatype.git";
      rev = "70af100b2035ee9383c63c0d969194659af233f2";
      ref = "main";
    };
    subpath = "typed-racket-datatype";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-datatype-lib"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "rackunit-lib"
      "rackunit-typed"
    ];
  };
  "pie-a-let-mode" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/pie.git#a-let-mode";
      rev = "77d183629f3d09f2d0b79a5bcd3b16e92ecf5f19";
      ref = "a-let-mode";
    };

    deps = [
      "base"
      "data-lib"
      "gui-lib"
      "slideshow-lib"
      "pict-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "parser-tools-lib"
      "syntax-color-lib"
      "rackunit-lib"
      "todo-list"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
    ];
  };
  "sasl-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sasl-test.zip";
      sha256 = "0bcvp1qqwkar6amnm975ii9nhbk40421si5989zy2nm513nbv208";
    };
    deps = [
      "base"
      "sasl-lib"
      "rackunit-lib"
    ];
  };
  "drracket-solarized" = {
    src = fetchGit {
      url = "https://github.com/takikawa/drracket-solarized";
      rev = "9a90657bb320d4231c85dff96ceaef6a835c5c4f";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "libsqlite3" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-libsqlite3.git";
      rev = "e3e0e4ac8b4ed61e9370808f7555d319e80c0e21";
    };
    subpath = "libsqlite3";
    deps = [
      "base"
      "libsqlite3-aarch64-linux"
      "libsqlite3-aarch64-macosx"
      "libsqlite3-i386-win32"
      "libsqlite3-x86_64-linux"
      "libsqlite3-x86_64-macosx"
      "libsqlite3-x86_64-win32"
    ];
  };
  "macrotypes-test" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "macrotypes-test";
    deps = [
      "base"
      "macrotypes-example"
      "rackunit-macrotypes-lib"
    ];
  };
  "drracket-cyberpunk" = {
    src = fetchGit {
      url = "https://github.com/thinkmoore/drracket-cyberpunk.git";
      rev = "65d2ccc304b2f1d81423f78f9330a314497f8aae";
    };

    deps = [
      "base"
    ];
  };
  "pyffi-doc" = {
    src = fetchGit {
      url = "https://github.com/soegaard/pyffi.git";
      rev = "ca640c10acb1ca20c2ea4d6d8eabfd68c020c305";
      ref = "main";
    };
    subpath = "pyffi-doc";
    deps = [
      "scribble-lib"
      "pyffi-lib"
      "base"
      "sandbox-lib"
      "gui-doc"
      "pict-doc"
      "at-exp-lib"
      "base"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "pyffi-lib"
      "rackunit-lib"
    ];
  };
  "vlibench" = {
    src = fetchGit {
      url = "https://gitlab.com/racketeer/vlibench.git";
      rev = "8b05b0ec451192abef88ae6a8dee13428a41775e";
    };

    deps = [
      "base"
      "simple-polynomial"
      "plot"
      "colorblind-palette"
      "scribble-math"
    ];
  };
  "geoip" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-geoip.git";
      rev = "92383b375490af54bec49e54f8e2ffb236b76827";
    };
    subpath = "geoip";
    deps = [
      "geoip-doc"
      "geoip-lib"
    ];
  };
  "casemate" = {
    src = fetchGit {
      url = "https://github.com/jozip/casemate.git";
      rev = "d1eca8aec41af9339eb7f3977cb59dd03cb6b45a";
    };

    deps = [
      "base"
      "srfi-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "doodle" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/doodle";
      rev = "a6840bb97bb384b92c612960aca676e31662453c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "pict-lib"
      "draw-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "libsqlite3-x86_64-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsqlite3-x86_64-win32-3.43.1.tar.gz";
      sha256 = "1z30nm71qww3zvb70y18skqgka1xclh2vsz3vhi47l0385jc00c8";
    };
    deps = [
      "base"
    ];
  };
  "Adapton" = {
    src = fetchGit {
      url = "https://github.com/plum-umd/adapton.racket";
      rev = "9ddfec8a22809cfb37fbbd8871a088fc3bd51787";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "data" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data.zip";
      sha256 = "1k9czbvs4iklfahj0xjny9d07l5qjxy086jka0vq093pyx3xy4nz";
    };
    deps = [
      "data-lib"
      "data-enumerate-lib"
      "data-doc"
    ];
  };
  "uni-table" = {
    src = fetchGit {
      url = "https://gitlab.com/racketeer/uni-table.git";
      rev = "301feeda30ef2f42eb91328bbbb884c2759dba88";
    };

    deps = [
      "base"
      "scribble-lib"
      "pict-lib"
      "draw-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "at-exp-lib"
      "sandbox-lib"
      "scribble-doc"
      "pict-doc"
    ];
  };
  "infix-syntax" = {
    src = fetchGit {
      url = "https://github.com/mromyers/infix-syntax.git";
      rev = "8886395e31dc0b5d0db3a77a75255df15492806c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "in-covid" = {
    src = fetchGit {
      url = "https://github.com/samth/in-covid.git#main";
      rev = "69475f04fa150050dc955f8cca1ddcf49536a78d";
      ref = "main";
    };

    deps = [
      "fancy-app"
      "threading-lib"
      "graphite-lib"
      "gregor-lib"
      "plot-gui-lib"
      "plot-lib"
      "sawzall-lib"
      "data-frame"
      "http-easy"
      "math-lib"
      "pict-lib"
      "base"
    ];
  };
  "hygienic-reader-extension" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/hygienic-reader-extension";
      rev = "24a254f3d32875aaab2c9faf9ee84b6a26800479";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "typed-stack" = {
    src = fetchGit {
      url = "https://github.com/lehitoskin/typed-stack";
      rev = "5bcf55322b3a97ecfb0233ed77f282507eb2f6ad";
    };

    deps = [
      "base"
      "typed-racket-more"
      "typed-racket-lib"
      "scribble-lib"
      "typed-racket-doc"
      "racket-doc"
    ];
  };
  "http-proxy-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-http-proxy.git";
      rev = "94db8bcccd06da5b072b78bc8a553c6ddb9993eb";
    };
    subpath = "http-proxy-test";
    deps = [
      "base"
      "http-easy-lib"
      "http-proxy-lib"
      "rackunit"
    ];
  };
  "libgit2-x86_64-win32" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/native-libs.git#x86_64-win32";
      rev = "67ca2a6c1fc76f968879583f7a30be64dc658b98";
      ref = "x86_64-win32";
    };

    deps = [
      "base"
    ];
  };
  "ts-tactics" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Kata-Collections.git";
      rev = "fe8d4623b359cce2669b2bf9fb7a04d48942ef5b";
    };
    subpath = "ts-tactics";
    deps = [
      "base"
      "pprint"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "dssl2" = {
    src = fetchGit {
      url = "https://github.com/tov/dssl2.git#release";
      rev = "0385bf241e9a65423c965ee5586296eec73cc93e";
      ref = "release";
    };

    deps = [
      "base"
      "gui-lib"
      "rackunit-lib"
      "parser-tools-lib"
      "plot-gui-lib"
      "plot-lib"
      "sandbox-lib"
      "snip-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "pollen-component" = {
    src = fetchGit {
      url = "https://github.com/leafac/pollen-component.git";
      rev = "36853a84a58e2889b0e3065d5f1357a596e3c1e6";
    };

    deps = [
      "base"
      "pollen"
      "sugar"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "froglet" = {
    src = fetchGit {
      url = "https://github.com/tnelson/forge.git";
      rev = "6f2ec8a61fe5d0df1a5043854783daa1ce86f83d";
    };
    subpath = "froglet";
    deps = [
      "base"
      "rackunit-lib"
      "forge"
    ];
  };
  "unstable-flonum-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-flonum/";
      rev = "e7e1ed3e9c2f3448e1eac2084e2f2f6c4d126000";
    };
    subpath = "unstable-flonum-lib";
    deps = [
      "base"
    ];
  };
  "vk" = {
    src = fetchGit {
      url = "https://github.com/prozion/vk-racket.git";
      rev = "cd2ae6134e533dbba0dbe809022154b077ec5e44";
    };

    deps = [
      "odysseus"
      "tabtree"
    ];
  };
  "raco-pkg-env-lib" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/raco-pkg-env.git";
      rev = "eb14b196a490a4cf815a0126b7fe0bb3d5cf3ef5";
      ref = "release";
    };
    subpath = "raco-pkg-env-lib";
    deps = [
      "base"
      "at-exp-lib"
    ];
  };
  "Funktionuckelt" = {
    src = fetchGit {
      url = "https://github.com/DondiBronson/Funktionuckelt.git";
      rev = "c465bd2afced654c4bf08b70740cd2be6a383a62";
    };

    deps = [
      "base"
    ];
  };
  "rx-tx-async-channel" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/rx-tx-async-channel.git";
      rev = "6c1db5db208eebab31638129159c9f4d594194ae";
    };

    deps = [
      "base"
      "struct-plus-plus"
      "test-more"
      "sandbox-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "values" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-values.git#main";
      rev = "beec5757368e9bf64a42c7b0f5e5a0fa49f622c5";
      ref = "main";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "db-ppc-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-ppc-macosx.zip";
      sha256 = "15qna894bzx9zxjp57qcb8l84r1b3b96njngsldq19sr2df61hz0";
    };
    deps = [
      "base"
    ];
  };
  "BSA-drracket-teachpacks" = {
    src = fetchGit {
      url = "https://github.com/.git";
      rev = "";
    };
    subpath = "bootstrapworld/BSA-drracket-teachpacks.git";
    deps = [
    ];
  };
  "cover-codecov" = {
    src = fetchGit {
      url = "https://github.com/florence/cover-codecov.git#release";
      rev = "b1a9de60da3c33894ddd6fcc3e26e8e6b614f708";
      ref = "release";
    };

    deps = [
      "cover-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "knox" = {
    src = fetchGit {
      url = "https://github.com/anishathalye/knox.git";
      rev = "4dd42b5c083f8dc6f2facaa47ba69ff922879dcb";
    };

    deps = [
      "racket"
      "rosette"
      "rackunit-lib"
      "data-lib"
      "base"
    ];
  };
  "gev-distribution" = {
    src = fetchGit {
      url = "https://github.com/HaeckGabriel/gev-distribution.git#main";
      rev = "09507568397634f4aadfc91c05f6066483fd3275";
      ref = "main";
    };

    deps = [
      "base"
      "typed-racket"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "interactive-brokers-api" = {
    src = fetchGit {
      url = "https://github.com/evdubs/interactive-brokers-api.git";
      rev = "caf9b86fdd3213e4ee362300a64709d3b0a9d4a6";
    };

    deps = [
      "base"
      "binaryio"
      "gregor-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "aoc-racket" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/aoc-racket.git";
      rev = "14cae851fe7506b8552066fb746fa5589a6cc258";
    };

    deps = [
      "brag-lib"
      "csp"
      "srfi-lite-lib"
      "graph"
      "base"
      "scribble-lib"
      "sugar"
      "rackunit-lib"
      "math-lib"
      "beautiful-racket-lib"
      "gregor"
      "debug"
      "draw-lib"
      "gui-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
      "rackunit-doc"
      "at-exp-lib"
      "math-doc"
    ];
  };
  "tomato-timer" = {
    src = fetchGit {
      url = "https://github.com/bennn/tomato-timer";
      rev = "9767fc30bd449c6020f8bda8c69a4e9c788a4344";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "ini-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ini.git";
      rev = "8ed624b74d42ab5ea3142c9af70285fe82d47590";
    };
    subpath = "src/ini-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "ini-lib"
    ];
  };
  "tabular" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-tabular";
      rev = "b0440d5443f4f0e81dcd7eba4f5709c91b873a3b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "data-lib"
      "htdp-lib"
    ];
  };
  "syndicate" = {
    src = fetchGit {
      url = "https://git.syndicate-lang.org/syndicate-lang/syndicate-rkt.git";
      rev = "b214835bcc64551c5ffe9534828786cc645ca954";
      ref = "main";
    };
    subpath = "syndicate";
    deps = [
      "base"
      "auxiliary-macro-context"
      "data-lib"
      "libb2"
      "noise-protocol"
      "preserves"
      "struct-defaults"
      "web-server-lib"
      "at-exp-lib"
      "libsodium"
      "rackunit-lib"
    ];
  };
  "libzstd-x86_64-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libzstd-x86_64-win32-1.5.5.tar.gz";
      sha256 = "0nbprzgcnlajzv7nwr8s0fkp6gi676kx7q61qx5rjy2nfwcwh69f";
    };
    deps = [
      "base"
    ];
  };
  "orthauth" = {
    src = fetchGit {
      url = "https://github.com/tgbugs/orthauth.git";
      rev = "2d1141d76e49f25b006d4761454e68f882072766";
      ref = "master";
    };
    subpath = "racket/orthauth";
    deps = [
      "yaml"
      "python"
      "base"
    ];
  };
  "mox" = {
    src = fetchGit {
      url = "https://github.com/wargrey/mox.git";
      rev = "1f5543592f4cd65809e00c52bad8592f8ad20201";
    };

    deps = [
      "base"
      "digimon"
      "w3s"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "digimon"
      "graphics"
    ];
  };
  "rackcheck" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/rackcheck.git";
      rev = "21dcda3edf86c28d9594887e92c5d7bef589897c";
    };
    subpath = "rackcheck";
    deps = [
      "base"
      "rackcheck-lib"
      "racket-doc"
      "rackunit-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "xmlns" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/racket-xmlns";
      rev = "b11d0010ceac1dac55b22d5eab51e24025593638";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "opencv" = {
    src = fetchGit {
      url = "https://github.com/oetr/racket-opencv";
      rev = "8124eb6b620769137656547e83f9d9587ab37c23";
    };

    deps = [
      "base"
    ];
  };
  "drcomplete" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete";
    deps = [
      "drcomplete-filename"
      "drcomplete-required"
      "drcomplete-user-defined"
      "drcomplete-module"
      "drcomplete-auto"
    ];
  };
  "frtime" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/frtime.zip";
      sha256 = "15c8k9j73g3n4yr4n9lzi8c360kcz9m9p5gpmdaj30dswjpx2wda";
    };
    deps = [
      "srfi-lite-lib"
      "base"
      "compatibility-lib"
      "drracket"
      "gui-lib"
      "pict-lib"
      "string-constants-lib"
      "draw-doc"
      "gui-doc"
      "racket-doc"
      "scribble-lib"
      "rackunit"
    ];
  };
  "libserialport" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-libserialport";
      rev = "b0c01e64796ac2306138022f98b0d654907610ca";
    };

    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "mordae"
      "typed-racket-lib"
      "racket-doc"
      "typed-racket-lib"
      "typed-racket-doc"
      "unstable-lib"
    ];
  };
  "koyo-north" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo-north.git";
      rev = "713c4c4068e9a5a8d5e56cb6b419f348d08a5e2d";
    };

    deps = [
      "base"
      "component-lib"
      "db-lib"
      "koyo-lib"
      "north"
    ];
  };
  "phc-toolkit" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/phc-toolkit.git#main";
      rev = "694c75444c4151be7069b3a0271650921d86ce51";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "alexis-util"
      "typed-racket-lib"
      "typed-racket-more"
      "reprovide-lang"
      "type-expander"
      "hyper-literate"
      "version-case"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "predicates"
      "rackunit-doc"
      "scribble-math"
      "drracket"
    ];
  };
  "libargon2-x86_64-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libargon2-x86_64-win32-20210625.0.tar.gz";
      sha256 = "0a5m4ay8ihdbllskc59kk2zmx3fds5jh9kj2ybp43nyhykwpdmiv";
    };
    deps = [
      "base"
    ];
  };
  "rsc3" = {
    src = fetchGit {
      url = "https://github.com/quakehead/rsc3";
      rev = "329116d2447c95c99c2e05f211d42a92554cd71d";
    };

    deps = [
      "base"
      "gui-lib"
      "r6rs-lib"
      "srfi-lib"
      "srfi-lite-lib"
      "rackunit-lib"
    ];
  };
  "ffmpeg-i386-win32" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "ffmpeg-i386-win32";
    deps = [
      "base"
    ];
  };
  "phc-adt-doc" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/phc-adt.git";
      rev = "36c1047c4899d1b478cc6052f9b2e71168aeefb5";
      ref = "main";
    };
    subpath = "phc-adt-doc";
    deps = [
      "base"
      "scribble-lib"
      "hyper-literate"
      "phc-adt-lib"
      "racket-doc"
      "typed-racket-doc"
      "typed-racket-lib"
      "scribble-enhanced"
      "scribble-math"
      "type-expander"
      "xlist"
      "alexis-util"
      "extensible-parser-specifications"
      "multi-id"
      "phc-toolkit"
      "remember"
      "threading"
      "trivial"
      "typed-struct-props"
      "datatype"
    ];
  };
  "syntax-warn-cli" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/syntax-warn";
      rev = "f17fdd3179aeab8e5275a24e7d091d3ca42960a9";
    };
    subpath = "syntax-warn-cli";
    deps = [
      "rackunit-lib"
      "syntax-warn-lang"
      "base"
      "compiler-lib"
      "syntax-warn-base"
      "rackunit-lib"
    ];
  };
  "cpuinfo" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/cpuinfo.zip";
      sha256 = "01sp9rfqki82j9681zkqcnikypk2p304yr26ln8zk4ii0ma2nnnh";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "mcfly"
      "overeasy"
    ];
  };
  "social-contract" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/social-contract.git";
      rev = "2e13a5e492b63b569aaed9172a8cb86b9decca87";
    };

    deps = [
      "base"
      "collections-lib"
      "functional-lib"
      "megaparsack-lib"
      "megaparsack-parser-tools"
      "parser-tools-lib"
      "mischief"
      "version-case"
      "scribble-lib"
      "scribble-abbrevs"
      "racket-doc"
      "rackunit-lib"
      "collections-doc"
      "cover"
      "cover-coveralls"
      "sandbox-lib"
      "adjutor"
    ];
  };
  "case-kw-lambda" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/case-kw-lambda.git";
      rev = "985c184062c614548892d6a24b644f6e75725eff";
    };
    subpath = "case-kw-lambda";
    deps = [
      "base"
      "case-kw-lambda-doc"
      "case-kw-lambda-lib"
    ];
  };
  "scriblogify" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/scriblogify#pkg";
      rev = "7771d00ce6101bd5d415b54134eb79c42b92f1ef";
      ref = "pkg";
    };

    deps = [
      "base"
      "sxml"
      "webapi"
      "scribble-lib"
      "compatibility-lib"
      "web-server-lib"
      "html-parsing"
      "html-writing"
      "racket-doc"
      "scribble-doc"
      "scribble-lib"
    ];
  };
  "upi-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-upi.git";
      rev = "bbe44269dec1be98996124dcfe5155400d425ddd";
    };
    subpath = "src/upi-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "threading-lib"
    ];
  };
  "gregor-test" = {
    src = fetchGit {
      url = "https://github.com/97jaz/gregor.git";
      rev = "2d20192e8795e01a1671869dddaf1984f0cbafee";
    };
    subpath = "gregor-test";
    deps = [
      "base"
      "gregor-lib"
      "rackunit-lib"
    ];
  };
  "drracket-catppuccin" = {
    src = fetchGit {
      url = "https://github.com/catppuccin/drracket-catppuccin.git#main";
      rev = "1601462ddfffed78465df246fd016613cff26a7c";
      ref = "main";
    };

    deps = [
      "base"
    ];
  };
  "majordomo2" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/majordomo2.git";
      rev = "6be2c87cad32e254a3e985bc91ba918b4c890c5c";
    };

    deps = [
      "base"
      "queue"
      "struct-plus-plus"
      "thread-with-id"
      "in-out-logged"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "handy"
      "sandbox-lib"
    ];
  };
  "rpp" = {
    src = fetchGit {
      url = "https://github.com/derkachdaniil/racket-c-plus-plus.git#main";
      rev = "6490fa55caf6250587090a6a773b1f708f245ac8";
      ref = "main";
    };

    deps = [
      "brag-lib"
      "optimization-coach"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "effection-test" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/effection.git";
      rev = "012c8ab1b45993770ed240cae0831f09574fe976";
      ref = "main";
    };
    subpath = "effection-test";
    deps = [
      "base"
    ];
  };
  "tinybasic" = {
    src = fetchGit {
      url = "https://github.com/winny-/tinybasic.rkt.git";
      rev = "bc8967bb2758eb464dd858de80ac6708d6a57805";
    };
    subpath = "tinybasic";
    deps = [
      "tinybasic-lib"
      "tinybasic-doc"
      "tinybasic-examples"
    ];
  };
  "libquiche" = {
    src = fetchGit {
      url = "https://github.com/parnikkapore/rkt-libquiche.git";
      rev = "26aa3ade5feaa8819648c10057ca064c4ec64d85";
    };

    deps = [
      "base"
      "reprovide-lang-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "vec" = {
    src = fetchGit {
      url = "https://github.com/Aeva/vec.git";
      rev = "7ed2f1e43668d230cc411b326f7ace746f5d76de";
      ref = "excelsior";
    };
    subpath = "vec";
    deps = [
      "base"
      "vec-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "algebraic-app" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-algebraic-app.git";
      rev = "60355507f5dc713df68ab962d17b64015be9b06e";
    };

    deps = [
      "algebraic"
      "base"
      "k-infix"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "plai-math" = {
    src = fetchGit {
      url = "https://github.com/JamesSolum/racket_packages";
      rev = "a1f9cd5332c9701ded9b0c2e2888842ca1e674ca";
    };
    subpath = "math";
    deps = [
    ];
  };
  "slideshow" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow.zip";
      sha256 = "171bwp1c7m9xsyviamibsq2mvgy605g1h7yxh8wwdvvg92a6a78a";
    };
    deps = [
      "slideshow-lib"
      "slideshow-exe"
      "slideshow-plugin"
      "slideshow-doc"
    ];
  };
  "lathe-comforts-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-comforts-for-racket.git";
      rev = "43829a1613140d6b12ee1d078ea1d08f9f0c1827";
      ref = "main";
    };
    subpath = "lathe-comforts-lib";
    deps = [
      "base"
      "reprovide-lang-lib"
      "parendown-lib"
    ];
  };
  "tool-lib" = {
    src = fetchGit {
      url = "https://github.com/winny-/tool.git";
      rev = "0a4058313dfd86fec03174b98bfaf79caf61fd3c";
    };
    subpath = "src/tool-lib";
    deps = [
      "base"
      "dirname"
      "ansi-color"
      "threading-lib"
    ];
  };
  "clotho" = {
    src = fetchGit {
      url = "https://gitlab.flux.utah.edu/xsmith/clotho.git";
      rev = "7cc309787f07286e3b1411346f4e85e4bec09098";
      ref = "rpi-release";
    };
    subpath = "clotho";
    deps = [
      "base"
      "version-string-with-git-hash"
      "rackunit-lib"
      "math-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "poppler-i386-macosx" = {
    src = fetchGit {
      url = "https://github.com/soegaard/poppler-libs";
      rev = "f39e31f2b561b457fdbda50117f6bc4802ef14b6";
    };
    subpath = "poppler-i386-macosx";
    deps = [
      "base"
    ];
  };
  "serialize-cstruct-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/serialize-cstruct-lib.zip";
      sha256 = "1g94vjzfx8vnnj05sanj0vz41yigzm7diw31wkafm4ixi1sqhnzq";
    };
    deps = [
      "base"
    ];
  };
  "iloveck101" = {
    src = fetchGit {
      url = "https://github.com/Domon/iloveck101";
      rev = "eef2eface1d4882e12b298429ed8739af67b9d16";
      ref = "master";
    };
    deps = [
    ];
  };
  "csp" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/typesetting.git";
      rev = "680422ea57fce4bc4280edb7412c161561d1641c";
      ref = "main";
    };
    subpath = "csp";
    deps = [
      "beautiful-racket-lib"
      "htdp-lib"
      "math-lib"
      "base"
      "sugar"
      "rackunit-lib"
      "debug"
      "graph"
      "at-exp-lib"
      "math-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "timable" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/timable.git";
      rev = "873950a99dbc5dd036147c55185b8376347bca88";
    };

    deps = [
      "base"
      "srfi"
      "gregor"
      "db"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "org" = {
    src = fetchGit {
      url = "https://github.com/tgbugs/laundry.git";
      rev = "5f08dbadd1b9ec9477340a145fc6fe2a459d3745";
      ref = "master";
    };
    subpath = "org";
    deps = [
      "base"
      "laundry"
    ];
  };
  "hackett-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/hackett.git";
      rev = "e90ace9e4a056ec0a2a267f220cb29b756cbefce";
    };
    subpath = "hackett-lib";
    deps = [
      "base"
      "curly-fn-lib"
      "data-lib"
      "syntax-classes-lib"
      "threading-lib"
    ];
  };
  "parser-tools-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/parser-tools-doc.zip";
      sha256 = "0625rg72cghjxr2lsgpc5pg4hhw523jzn0y1k97zxa28gx8nixd5";
    };
    deps = [
      "base"
      "scheme-lib"
      "racket-doc"
      "syntax-color-doc"
      "parser-tools-lib"
      "scribble-lib"
    ];
  };
  "1d6" = {
    src = fetchGit {
      url = "https://github.com/jessealama/1d6.git";
      rev = "ae3bf1fc265bd1815dc8f9d6bbb153afdbf3a53d";
    };

    deps = [
      "base"
      "brag"
      "beautiful-racket-lib"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
      "beautiful-racket-lib"
    ];
  };
  "keyring-get-pass-lib" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-get-pass-lib";
    deps = [
      "base"
      "get-pass"
      "keyring-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "dbus" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-dbus";
      rev = "57c5e3d9120f778b48ba01efb6b37c1ffbc9963d";
    };

    deps = [
      "xexpr-path"
      "misc1"
      "base"
      "parser-tools-lib"
      "unstable-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "magic-loader" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/magic-loader.git";
      rev = "ed983737b383bc527e54f6db7044df503baf2a14";
    };

    deps = [
      "comm-panel"
    ];
  };
  "racket-win32-i386" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/83d776ae86fe808972058111a74071078ddc6559/racket-win32-i386.zip";
      sha256 = "106sp70yd4wgfbky882935yn3zmvzck1lm7bb8vqa1mzsyskwzww";
    };
    deps = [
      "base"
    ];
  };
  "racket-win32-i386-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-win32-i386-3.zip";
      sha256 = "1k3cqh7nsdg2cg72x1sbxryz7njdw5xd4gvgan1bjgi4v4vm43yn";
    };
    deps = [
      "base"
    ];
  };
  "knotty" = {
    src = fetchGit {
      url = "https://github.com/t0mpr1c3/knotty.git";
      rev = "f6d9f76fb4250428f55ef428fc8cd89d80c52d16";
      ref = "main";
    };
    subpath = "knotty";
    deps = [
      "base"
      "knotty-lib"
      "typed/racket"
      "typed-racket-lib"
      "typed-racket-more"
      "typed/rackunit"
      "named-arguments"
      "sxml"
      "scribble-lib"
      "lazy"
      "rackunit-typed"
      "sweet-exp-lib"
      "threading-lib"
      "web-server-lib"
    ];
  };
  "cover-doc" = {
    src = fetchGit {
      url = "https://github.com/florence/cover.git";
      rev = "ad50ffa8f6246053bec24b39b9cae7fad1534373";
      ref = "release";
    };
    subpath = "cover-doc";
    deps = [
      "base"
      "cover-lib"
      "racket-doc"
      "base"
      "scribble-lib"
    ];
  };
  "pollen-citations-mcgill" = {
    src = fetchGit {
      url = "https://github.com/sanchom/pollen-citations-mcgill.git";
      rev = "63bcef990cf549d5863a7d6117a1c3475ab53286";
    };

    deps = [
      "base"
      "pollen"
      "txexpr"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "database-url" = {
    src = fetchGit {
      url = "https://github.com/lassik/racket-database-url.git";
      rev = "1bc45817ab41171da41d39c0027367eda698c463";
    };

    deps = [
      "db-lib"
      "rackunit-lib"
      "base"
      "db-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "2d-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/2d-doc.zip";
      sha256 = "1f2zzbm1la3hikmsyf58kixwb0inpzyzjpipjpg63b8z9wq14rha";
    };
    deps = [
      "base"
      "2d-lib"
      "scribble-lib"
      "racket-doc"
      "syntax-color-doc"
      "syntax-color-lib"
    ];
  };
  "crc32c" = {
    src = fetchGit {
      url = "https://bitbucket.org/Tetsumi/crc32c.git";
      rev = "20cd115689582b0899147148a59f02fb92cd29e6";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "typed-ini-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ini.git";
      rev = "8ed624b74d42ab5ea3142c9af70285fe82d47590";
    };
    subpath = "src/typed-ini-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "ini-lib"
    ];
  };
  "html-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/html-lib.zip";
      sha256 = "06idv9d7p4f1jf301cna1m0klps0fv7xr2hw8drywkq0pnk0lpn6";
    };
    deps = [
      "base"
    ];
  };
  "values-plus" = {
    src = fetchGit {
      url = "https://github.com/mflatt/values-plus";
      rev = "75df2e111928317ff61e9b82c2aaac664ddd0d6b";
    };

    deps = [
      "base"
      "eli-tester"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "gen-queue-lib" = {
    src = fetchGit {
      url = "https://github.com/stchang/graph.git";
      rev = "9d77ab184e26f4f3c917c7bd49eda2e980a24fae";
    };
    subpath = "gen-queue-lib";
    deps = [
      "base"
      "data-lib"
    ];
  };
  "string-constants-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/string-constants-lib.zip";
      sha256 = "0zbk11nggxrw9di1cdjl65n9zdwf1yxd7gpwjj8s8bdq30zq1l8h";
    };
    deps = [
      "base"
    ];
  };
  "packet-socket" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-packet-socket";
      rev = "831e638e9aa9b0c3c8ecc2cbb4d1b91f57b93f1b";
    };

    deps = [
      "base"
      "dynext-lib"
    ];
  };
  "dtc" = {
    src = fetchGit {
      url = "https://github.com/srfoster/dtc.git";
      rev = "acf9da3f929806e48b79e28243576c3eb705a079";
    };

    deps = [
      "base"
      "image-coloring"
      "https://github.com/thoughtstem/meta-engine.git?path=meta-engine"
      "rchess"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "rackpropagator-doc" = {
    src = fetchGit {
      url = "https://github.com/ots22/rackpropagator.git";
      rev = "5c5367985bf5fe20e8dd6e9da35792a203c296d1";
    };
    subpath = "rackpropagator-doc";
    deps = [
      "base"
      "racket-doc"
      "math-doc"
      "math-lib"
      "scribble-lib"
      "scribble-math"
      "rackpropagator-lib"
    ];
  };
  "domain-coloring" = {
    src = fetchGit {
      url = "https://github.com/TrueQueenBee/domain-coloring.git";
      rev = "b0b1cbb2a4a8d54ef616b0d38cdc62acae8e4544";
    };

    deps = [
      "base"
      "gui-lib"
      "colors"
    ];
  };
  "libgit2-x86_64-linux" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/native-libs.git#x86_64-linux";
      rev = "50f560a717baafe18cf69575f1f523ae917d1a73";
      ref = "x86_64-linux";
    };

    deps = [
      "base"
    ];
  };
  "4chdl" = {
    src = fetchGit {
      url = "https://github.com/winny-/4chdl.git";
      rev = "dea347b50609b0458debe01504012a9c2eb6d39d";
    };

    deps = [
      "base"
      "http-easy"
    ];
  };
  "tabtree" = {
    src = fetchGit {
      url = "https://github.com/prozion/tabtree-racket.git";
      rev = "31c61301811d9d71dc77f750adbd3145d9d81c0a";
    };

    deps = [
      "odysseus"
      "compatibility-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pmsf-depend" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-depend";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "threading-lib"
      "pmsf-condition"
      "pmsf-lib"
      "pmsf-name"
      "pmsf-slot"
    ];
  };
  "keyring-test" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-test";
    deps = [
      "base"
      "keyring-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "eventfd" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-eventfd";
      rev = "f4e8e36525ca23009c71bc9838181cdba5503c98";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "subtemplate" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/subtemplate.git#main";
      rev = "a3292113bb0d7dd8dc2114702b90e76f23963496";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "backport-template-pr1514"
      "phc-toolkit"
      "srfi-lite-lib"
      "stxparse-info"
      "alexis-util"
      "scope-operations"
      "auto-syntax-e"
      "version-case"
      "scribble-lib"
      "racket-doc"
      "scribble-math"
    ];
  };
  "lathe-ordinals" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-ordinals-for-racket.git";
      rev = "7968ab73b43990ff6607239c742a816b0703612c";
      ref = "main";
    };
    subpath = "lathe-ordinals";
    deps = [
      "lathe-ordinals-doc"
      "lathe-ordinals-lib"
    ];
  };
  "talk-typer" = {
    src = fetchGit {
      url = "https://github.com/florence/talk-typer";
      rev = "24c5779e4d5b9548f96ac66d7c638c9bef0e7428";
    };

    deps = [
      "base"
      "gui-lib"
      "data-lib"
      "drracket-plugin-lib"
    ];
  };
  "unstable-pretty-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-pretty-lib";
      rev = "d420f822301174b1931c8b43d2131924fc75565f";
    };

    deps = [
      "base"
    ];
  };
  "egg-herbie" = {
    src = fetchGit {
      url = "https://github.com/herbie-fp/egg-herbie.git";
      rev = "6f0730c6a12571f04d5087d4011426cdad132543";
    };

    deps = [
      "egg-herbie-osx"
      "egg-herbie-windows"
      "egg-herbie-linux"
      "egg-herbie-linux"
    ];
  };
  "typed-minikanren" = {
    src = fetchGit {
      url = "https://github.com/dalev/minikanren-typed-racket.git#release";
      rev = "83262e26f03581c99a072db03dfbafb1ab9401f2";
      ref = "release";
    };

    deps = [
      "typed-racket-lib"
      "base"
      "rackunit-typed"
    ];
  };
  "r-linq" = {
    src = fetchGit {
      url = "https://github.com/trajafri/r-linq.git";
      rev = "e41a733b91fc32001d09fe8ff25a0b2c0a06e34c";
    };

    deps = [
      "base"
      "rackunit"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "oii-422-handin-client" = {
    src = fetchGit {
      url = "https://github.com/ifigueroap/oii-422-handin-client.git";
      rev = "29d62748d335a1ab283efc3e28c5c93c3737501a";
    };

    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "net-lib"
    ];
  };
  "minikanren-ee" = {
    src = fetchGit {
      url = "https://github.com/michaelballantyne/minikanren-ee.git";
      rev = "f8e8e45fb1db72eefc91af327e93be02a7cd1324";
    };

    deps = [
      "base"
      "rackunit-lib"
      "ee-lib"
    ];
  };
  "net-ip-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-net-ip.git";
      rev = "be7075c78baf122dc05beaf71faf941159aaad64";
    };
    subpath = "net-ip-test";
    deps = [
      "base"
      "net-ip-lib"
      "rackcheck-lib"
      "rackunit-lib"
    ];
  };
  "colorblind-palette" = {
    src = fetchGit {
      url = "https://gitlab.com/bengreenman/colorblind-palette.git";
      rev = "a7038b6147a7c7ee4c31d0f22e7a105731d91655";
    };

    deps = [
      "base"
      "draw-lib"
      "scribble-lib"
      "pict-abbrevs"
      "draw-doc"
      "pict-lib"
      "pict-doc"
      "racket-doc"
    ];
  };
  "semver" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-semver";
      rev = "fee107ee2401b5f7d7d797258eab3062ddb71232";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "alexis-util"
      "racket-doc"
      "scribble-lib"
      "typed-racket-doc"
      "typed-racket-more"
    ];
  };
  "popl-2012-ryr-talk" = {
    src = fetchGit {
      url = "https://github.com/rfindler/popl-2012-ryr-talk";
      rev = "9da05129de004cc1df0ccfbd821e8542a9155021";
    };

    deps = [
      "base"
      "gui-lib"
      "htdp-lib"
      "redex-gui-lib"
      "redex-lib"
      "slideshow-lib"
    ];
  };
  "text-markdown" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/text-markdown.git";
      rev = "2fcc53a50fffd899668f8160a88d4be948b07a86";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "markdown"
      "gui-lib"
      "images-lib"
      "wxme-lib"
    ];
  };
  "rackjure" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/rackjure";
      rev = "9f7c74f5a499f71407890037839a3fa3b178dcef";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "threading-lib"
      "rackunit-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
      "threading-doc"
    ];
  };
  "avro-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-avro.git";
      rev = "755babe40c8593c9880a74178e48198af9962bb7";
    };
    subpath = "avro-lib";
    deps = [
      "base"
    ];
  };
  "data-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-lib.zip";
      sha256 = "1ibfgcvhxn2pp9x364mwyn142kfnx42b30nd633876hkyc9wyrq7";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "in-new-directory" = {
    src = fetchGit {
      url = "https://github.com/samth/in-new-directory";
      rev = "f7020748288df28ed8371a521781a5d0986582a6";
    };

    deps = [
      "base"
      "compatibility-lib"
      "scribble-lib"
    ];
  };
  "denxi" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/denxi.git#default";
      rev = "2547f0b3c016e0c5761267fa61ae1be591cc8e7b";
      ref = "default";
    };

    deps = [
      "base"
      "compatibility-lib"
      "db-lib"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "net-doc"
      "racket-doc"
    ];
  };
  "raco-new" = {
    src = fetchGit {
      url = "https://github.com/priime0/raco-new.git";
      rev = "36bc453bbca7185db96ba0b491404c7afefe4783";
    };

    deps = [
      "base"
    ];
  };
  "py-fizz" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/py-fizz.git";
      rev = "46047397ab9bbac86ab15a3e6e952777f5754fdf";
    };

    deps = [
      "racket-to-python"
    ];
  };
  "sawzall" = {
    src = fetchGit {
      url = "https://github.com/ralsei/sawzall.git";
      rev = "2866f3646aad5d062c559b2c7a6b5c61d10b8481";
      ref = "main";
    };
    subpath = "sawzall";
    deps = [
      "sawzall-lib"
      "sawzall-doc"
    ];
  };
  "logger" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/logger.git";
      rev = "a4cb492d14d2e65840818ed4fe169011b30be23a";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "otp-lib" = {
    src = fetchGit {
      url = "https://github.com/yilinwei/otp.git";
      rev = "463985c11cfb229ca9846513065d1a5bfc1f76c7";
    };
    subpath = "otp-lib";
    deps = [
      "base"
      "crypto-lib"
      "rackunit-lib"
    ];
  };
  "color-strings" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/color-strings.git";
      rev = "6f6f5594f46ebcdc96ab9c82edc4e5a90d6f0896";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ranked-programming" = {
    src = fetchGit {
      url = "https://github.com/tjitze/ranked-programming.git";
      rev = "5503146a8ac9779d949905b778f0d9fd6d8c0d1a";
    };

    deps = [
      "sandbox-lib"
      "scribble-lib"
      "srfi-lite-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "fltest" = {
    src = fetchGit {
      url = "https://github.com/samth/fltest.git";
      rev = "0550ef11664f106002e2cf75fa22e5eb636364f1";
    };

    deps = [
      "base"
      "math-lib"
    ];
  };
  "s3-sync" = {
    src = fetchGit {
      url = "https://github.com/mflatt/s3-sync";
      rev = "27d00596eceb53a16a2a92b621e14883e828facf";
    };

    deps = [
      "aws"
      "http"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "effection-lib" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/effection.git";
      rev = "012c8ab1b45993770ed240cae0831f09574fe976";
      ref = "main";
    };
    subpath = "effection-lib";
    deps = [
      "base"
      "interconfection-lib"
      "lathe-comforts-lib"
      "parendown-lib"
    ];
  };
  "fuzzy-search" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/fuzzy-search.git";
      rev = "8a55ab77a1c2e2d835c782dff25fbb7d8732fa34";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "mintexpp-lib" = {
    src = fetchGit {
      url = "https://github.com/shhyou/mintexpp.git";
      rev = "2d457fa70581b45871833405182a84f7de236b47";
    };
    subpath = "mintexpp-lib";
    deps = [
      "base"
      "syntax-color-lib"
      "scribble-lib"
      "mintexpp-reader-lib"
    ];
  };
  "geoid" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/geoid.git";
      rev = "0831c6902959bef860bb9565c9af5a860e1cd324";
    };

    deps = [
      "base"
      "math-lib"
      "rackunit-lib"
      "typed-racket-lib"
      "racket-doc"
      "scribble-lib"
      "al2-test-runner"
    ];
  };
  "onlog" = {
    src = fetchGit {
      url = "https://github.com/fmind/onlog.git";
      rev = "d6756ca99c8f647f47126716fb24698a7f77c80f";
    };

    deps = [
    ];
  };
  "anarki" = {
    src = fetchGit {
      url = "https://github.com/arclanguage/anarki";
      rev = "e49b1bfe1f7bf0e682d360eb677947264000de82";
    };

    deps = [
      "base"
      "sha"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "arroy" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/arroy";
      rev = "487b8cbacc5f1f9a4600f55b8c0f7f148f7c2747";
      ref = "master";
    };
    deps = [
      "base"
      "web-server-lib"
    ];
  };
  "drdr2" = {
    src = fetchGit {
      url = "https://github.com/racket/drdr2";
      rev = "680818e5cfa7d48de02bf1a027f78d766498a48d";
    };

    deps = [
      "base"
      "compatibility-lib"
      "sandbox-lib"
      "eli-tester"
    ];
  };
  "js-voxel" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-js-voxel.git";
      rev = "661d75489af339dba515a972c6e66db8525ab4c9";
    };

    deps = [
      "base"
      "glm"
      "rfc6455"
      "web-server-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "libzstd-aarch64-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libzstd-aarch64-linux-1.5.5.tar.gz";
      sha256 = "1yhfcnj8aq4m4pvlq8z3ik7nl4bxgqg8bbvha78rzqlk9lpls9na";
    };
    deps = [
      "base"
    ];
  };
  "deinprogramm" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/deinprogramm.zip";
      sha256 = "0g1f7qrf6zr2p14ixn7qr0vdrkardg0zpnawzib3jlxv0rf95vna";
    };
    deps = [
      "base"
      "compatibility-lib"
      "deinprogramm-signature"
      "drracket"
      "drracket-plugin-lib"
      "errortrace-lib"
      "gui-lib"
      "htdp-lib"
      "pconvert-lib"
      "scheme-lib"
      "simple-tree-text-markup-lib"
      "string-constants-lib"
      "trace"
      "wxme-lib"
      "snip-lib"
      "draw-lib"
      "at-exp-lib"
      "htdp-doc"
      "racket-doc"
      "racket-index"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "list-plus" = {
    src = fetchGit {
      url = "https://github.com/sorawee/list-plus.git";
      rev = "13767a571439560ad264d3e995228fb35d85895f";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "tangerine" = {
    src = fetchGit {
      url = "https://github.com/aeva/tangerine.git";
      rev = "a628e95d181d396246214df5194ac6b18698d811";
    };
    subpath = "package/tangerine";
    deps = [
      "base"
      "sandbox-lib"
      "vec"
      "tangerine-x86_64-linux"
      "tangerine-x86_64-win32"
    ];
  };
  "cover-benchmarks" = {
    src = fetchGit {
      url = "https://github.com/florence/cover.git";
      rev = "ad50ffa8f6246053bec24b39b9cae7fad1534373";
      ref = "release";
    };
    subpath = "cover-benchmarks";
    deps = [
      "draw-lib"
      "plot-lib"
      "cover-lib"
      "base"
      "custom-load"
      "pict-lib"
      "pict-test"
      "racket-benchmarks"
    ];
  };
  "sawzall-lib" = {
    src = fetchGit {
      url = "https://github.com/ralsei/sawzall.git";
      rev = "2866f3646aad5d062c559b2c7a6b5c61d10b8481";
      ref = "main";
    };
    subpath = "sawzall-lib";
    deps = [
      "base"
      "data-frame"
      "fancy-app"
      "text-table"
      "threading-lib"
    ];
  };
  "openal" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/openal";
      rev = "50b52525426f4bf2e0c3fd4c2ab4d0c59598e99a";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "htdp-examplar" = {
    src = fetchGit {
      url = "https://github.com/dbp/htdp-examplar.git#main";
      rev = "f180ef537e3401c064e54e99e1551d92428cc725";
      ref = "main";
    };

    deps = [
      "base"
      "htdp-lib"
      "rackunit"
    ];
  };
  "dice-parser" = {
    src = fetchGit {
      url = "https://github.com/cmargiotta/dice-parser.git#master";
      rev = "99f06659f3f7659dc577df4fef1d2b6f6eb12baa";
      ref = "master";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "quad-tree" = {
    src = fetchGit {
      url = "https://github.com/dented42/racket-quad-tree.git/";
      rev = "2cdb598e6c79e8499e545abc078d6f9a572ca8b0";
    };
    subpath = "quad-tree";
    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "ccnum" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/ccnum.zip";
      sha256 = "09n3kq53lgfbg9qsad6z9038pmzqzgyf3s1z1v747q3jc3nh1zbk";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "drracket-one-dark" = {
    src = fetchGit {
      url = "https://github.com/JoaoBrlt/drracket-one-dark.git";
      rev = "7b9dbd998e8976f37f98cf1f8fa25c4f4631dcef";
    };

    deps = [
      "base"
    ];
  };
  "libxml2" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/libxml2-ffi.git";
      rev = "34f26243e8f35ae84f248e02dfbd7214ec2c619d";
    };

    deps = [
      "base"
      "xmllint-win32-x86_64"
      "libxml2-x86_64-linux-natipkg"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-spec"
    ];
  };
  "forge" = {
    src = fetchGit {
      url = "https://github.com/tnelson/Forge.git";
      rev = "6f2ec8a61fe5d0df1a5043854783daa1ce86f83d";
    };
    subpath = "forge";
    deps = [
      "base"
      "froglet"
      "syntax-classes"
      "br-parser-tools-lib"
      "brag-lib"
      "beautiful-racket"
      "syntax-color-lib"
      "net-lib"
      "profile-lib"
      "crypto-lib"
      "rackunit-lib"
      "web-server-lib"
      "draw-lib"
      "mischief"
      "gui-lib"
      "drracket-plugin-lib"
      "pretty-format"
      "predicates"
      "basedir"
      "request"
      "sha"
    ];
  };
  "racket-lambda-runtime" = {
    src = fetchGit {
      url = "https://github.com/johnnyodonnell/racket-lambda-runtime.git";
      rev = "7edded99cf5165140fa650af0025d0843bf520c2";
    };

    deps = [
      "base"
      "web-server-lib"
    ];
  };
  "racket-win32-x86_64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/fcd8bb7fad2b582f8a58d5aeaf3493091d3c0b31/racket-win32-x86_64.zip";
      sha256 = "09kkpglzp6pwblqkm4bf7qb5zdn3xykkpbh7ywg8gf6x05awbhnb";
    };
    deps = [
      "base"
    ];
  };
  "_" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-_";
      rev = "e687a8eaf4ef62b97ad5d37f6fd09cb684c7d101";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "glm" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-glm.git";
      rev = "9ab93fe8549f6ce8da29ce651a175bf35a4d996d";
    };

    deps = [
      "base"
      "math-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "Karp" = {
    src = fetchGit {
      url = "https://github.com/REA1/karp.git";
      rev = "cd8ff66ab6b7c5fd45a968cfbec70ac3a5ac4021";
    };

    deps = [
      "base"
      "rosette"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-math"
    ];
  };
  "rackunit-gui" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-gui.zip";
      sha256 = "1g74wqzyjyajyjnjglwvxkil5f9az4ddgq27lyc83s5hf3lv2m09";
    };
    deps = [
      "rackunit-lib"
      "class-iop-lib"
      "data-lib"
      "gui-lib"
      "base"
    ];
  };
  "profile-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-lib.zip";
      sha256 = "1jgz1gh9z5a5xk8sakk2n2znbvla0mg3s2h54awlz1p4akzfdf82";
    };
    deps = [
      "base"
      "errortrace-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "laundry-test" = {
    src = fetchGit {
      url = "https://github.com/tgbugs/laundry.git";
      rev = "5f08dbadd1b9ec9477340a145fc6fe2a459d3745";
      ref = "master";
    };
    subpath = "laundry-test";
    deps = [
      "base"
      "math-lib"
      "plot-gui-lib"
      "plot-lib"
      "laundry"
      "org"
      "gui-lib"
    ];
  };
  "snappy-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-snappy.git";
      rev = "b02fa86ac7527f7a3a8731ac52f8b351e7d5feca";
    };
    subpath = "snappy-test";
    deps = [
      "base"
      "snappy-lib"
      "rackunit-lib"
    ];
  };
  "lens-doc" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/lens";
      rev = "733db7744921409b69ddc78ae5b23ffaa6b91e37";
    };
    subpath = "lens-doc";
    deps = [
      "base"
      "lens-lib"
      "lens-unstable"
      "scribble-lib"
      "reprovide-lang-lib"
      "jack-scribble-example"
      "at-exp-lib"
      "doc-coverage"
      "racket-doc"
      "sweet-exp-lib"
    ];
  };
  "dracula" = {
    src = fetchGit {
      url = "https://github.com/carl-eastlund/dracula";
      rev = "e50a9ab1d609c339ca94272770213cf746c8ba0b";
      ref = "release";
    };
    deps = [
      "planet-schematics-random1"
      "base"
      "compatibility-lib"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "htdp-lib"
      "planet-lib"
      "rackunit-gui"
      "rackunit-lib"
      "sandbox-lib"
      "scheme-lib"
      "scribble-lib"
      "slideshow-lib"
      "srfi-lib"
      "srfi-lite-lib"
      "string-constants-lib"
      "racket-doc"
    ];
  };
  "java-lexer" = {
    src = fetchGit {
      url = "https://github.com/stamourv/java-lexer";
      rev = "83e12122919d4582d63bea5b051cbeab6ee32c57";
    };

    deps = [
      "base"
      "profj"
      "scribble-lib"
    ];
  };
  "linear-regression" = {
    src = fetchGit {
      url = "https://github.com/HaeckGabriel/RacketLinearRegression.git#main";
      rev = "9a2924c0d5aee367822046e59b080b310dc7b159";
      ref = "main";
    };

    deps = [
      "base"
      "math-lib"
      "csv-reading"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "fast-convert" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/fast-convert";
      rev = "2420aeb2ce8c7fb3e14d0ee1d560c33e16aa1b80";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "srfi-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-lib.zip";
      sha256 = "034br23zq44l610y0jn06m533s76n954v04i5spy4pyh2b11m0rr";
    };
    deps = [
      "scheme-lib"
      "base"
      "srfi-lite-lib"
      "r6rs-lib"
      "compatibility-lib"
    ];
  };
  "stomp" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-stomp";
      rev = "8ec9471362f42253df787c83dc3f241086be6b9f";
      ref = "master";
    };
    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "racket-x86_64-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-x86_64-macosx-3.zip";
      sha256 = "03nmm60xwfx9ifdijmdm61vwrhnc866ivkzjsgkvwn83s0nm2szg";
    };
    deps = [
      "base"
    ];
  };
  "dexter-quickscripts" = {
    src = fetchGit {
      url = "https://github.com/DexterLagan/dexter-quickscripts.git";
      rev = "842a77e12c43533fa045319cde30ed2e696939ae";
    };

    deps = [
      "gui-lib"
      "quickscript"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "gmp" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-gmp";
      rev = "768c33615a1c2414ccaf1a1e4ea1064bd5dd46af";
    };
    subpath = "gmp";
    deps = [
      "base"
      "rackunit-lib"
      "binaryio-lib"
      "gmp-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pvector" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-pvector";
      rev = "d0132809b4da6e48c3e3087dc35cda1c47565e5e";
    };

    deps = [
      "base"
      "collections"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "comm-panel" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/comm-panel.git";
      rev = "44225da9b3cd1f883beef9c03f20431f80239530";
    };

    deps = [
      "happy-names"
      "aws"
    ];
  };
  "infix-prefix" = {
    src = fetchGit {
      url = "https://github.com/InAnYan/infix-prefix.git#main";
      rev = "f0dea3dd5d03f202f3b937b8b01afb8f84607cc7";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "dispatch" = {
    src = fetchGit {
      url = "https://github.com/a11ce/dispatch.git#main";
      rev = "33d851859be52d6adf3a09eea5f7234dae8df27a";
      ref = "main";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "realm" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/realm.zip";
      sha256 = "12y6djwc7sy8dm51f37j3pal0ldmf2l8vza8xl21mcwrqj8lr2rj";
    };
    deps = [
      "base"
      "htdp-lib"
      "rackunit-lib"
    ];
  };
  "pfds" = {
    src = fetchGit {
      url = "https://github.com/takikawa/tr-pfds";
      rev = "1630af681e6bef5e75503649100b7f0d32a2e9fc";
      ref = "master";
    };
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-compatibility"
      "scheme-lib"
      "at-exp-lib"
      "htdp-lib"
      "racket-doc"
      "scribble-lib"
      "typed-racket-more"
    ];
  };
  "racket-build-guide" = {
    src = fetchGit {
      url = "https://github.com/racket/racket/";
      rev = "5a6921d77bb29363ecd81e56f8ec1b964b60cdf9";
    };
    subpath = "pkgs/racket-build-guide";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "distro-build-doc"
    ];
  };
  "elle" = {
    src = fetchGit {
      url = "https://github.com/tail-reversion/elle.git";
      rev = "87053a6ba8e12c15823395149fe74a62ebb77fee";
      ref = "release";
    };
    subpath = "elle";
    deps = [
      "elle-lib"
      "elle-doc"
    ];
  };
  "rfc3339-old" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/rfc3339-old.zip";
      sha256 = "0pgj7zqnrjdzpxxbrm7xi8j8mjqibwnx04jzg18vk3xv8yw7h5p6";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "unix-socket-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/unix-socket-lib.zip";
      sha256 = "0vzxfxjffsz0k0lrbmh2rb6jbvyk1nw9bgpvchl3pp2pjm1jqgvn";
    };
    deps = [
      "base"
      "net-lib"
    ];
  };
  "redex-etc" = {
    src = fetchGit {
      url = "https://github.com/camoy/redex-etc.git";
      rev = "d2d9363ff9b0a77133552a5066dd008deddbdeef";
    };

    deps = [
      "typed-racket-lib"
      "latex-utils"
      "redex-pict-lib"
      "unstable-redex"
      "base"
      "redex-lib"
      "private-in"
      "draw-lib"
      "pict-lib"
      "redex-doc"
      "chk-lib"
      "racket-doc"
      "scribble-lib"
      "pict-doc"
    ];
  };
  "dallas-lib" = {
    src = fetchGit {
      url = "https://github.com/jessealama/dallas.git";
      rev = "8cc132551326f28efc4536081b947a466429937b";
    };
    subpath = "dallas-lib";
    deps = [
      "base"
    ];
  };
  "rackunit" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit.zip";
      sha256 = "0x149249mavpfk81vrbi54d1y96d5cdincmgq7szhz8kp2qfv7n6";
    };
    deps = [
      "rackunit-lib"
      "rackunit-doc"
      "rackunit-gui"
      "rackunit-plugin-lib"
    ];
  };
  "qtops" = {
    src = fetchGit {
      url = "https://github.com/emsenn/qtops.git";
      rev = "16a37c4122083c320d18a681ad4fd577a6524e24";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "macro-debugger-text-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/macro-debugger-text-lib.zip";
      sha256 = "1fn6xxb9pizcd6xrwalwviczzk1gidwxnmvyn5lvhsn5cm9hf5in";
    };
    deps = [
      "base"
      "db-lib"
      "class-iop-lib"
      "parser-tools-lib"
    ];
  };
  "overeasy" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/overeasy.zip";
      sha256 = "16fxdlc19705xnwiq99zj1wdkx3smw77p7k6pcg7irjsj3gjn66z";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "mcfly"
    ];
  };
  "net-cookies-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-cookies-lib.zip";
      sha256 = "1adpkn9mqxckhd2n3hzz1sn24pwrv4q5xjvwkd0fn00brlcnq3hi";
    };
    deps = [
      "base"
    ];
  };
  "ebuild-templates" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-templates";
    deps = [
      "base"
      "threading-lib"
      "ebuild-lib"
    ];
  };
  "future-visualizer-pict" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer-pict.zip";
      sha256 = "19djgy8b57620nm36rw02vzazygpql7aadcwmahr9524m7s28kiy";
    };
    deps = [
      "base"
      "data-lib"
      "draw-lib"
      "pict-lib"
    ];
  };
  "kafka" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-kafka.git";
      rev = "1ac07163404b7ff2dbdc69a545a88dbb0bbd09ea";
    };
    subpath = "kafka";
    deps = [
      "base"
      "kafka-lib"
      "racket-doc"
      "sasl-doc"
      "sasl-lib"
      "scribble-lib"
    ];
  };
  "spipe" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/spipe.git";
      rev = "d6bc777a8113447fea9a3f10b5a0fbce6269dce4";
    };

    deps = [
      "base"
      "nested-hash"
      "threading"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "custom-load" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/custom-load";
      rev = "4e70205c29ab0672663fcae78ded32563f01414b";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "drracket-tool-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-tool-lib.zip";
      sha256 = "1d2gq9qi08b1pz5qsq9sh7s51cdbhl1hzy8xhzikj3xdjwpkfhwb";
    };
    deps = [
      "base"
      "drracket-tool-text-lib"
      "scribble-lib"
      "string-constants-lib"
      "scribble-lib"
      "racket-index"
      "gui-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "ebuild-tools" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-tools";
    deps = [
      "base"
      "typed-racket-lib"
      "threading-lib"
      "upi-lib"
      "ziptie-git"
      "ebuild-lib"
      "ebuild-templates"
      "ebuild-transformers"
    ];
  };
  "req-test" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-req.git";
      rev = "4826c86164a2713be161a7e9a8e952c042ef5f75";
    };
    subpath = "src/req-test";
    deps = [
      "base"
      "req-lib"
      "rackunit-lib"
    ];
  };
  "rash-demos" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-rash.git";
      rev = "feb3ad16deb0b372a05f5d522f71e1746a3f96fd";
    };
    subpath = "rash-demos";
    deps = [
      "base"
      "rash"
      "basedir"
      "shell-pipeline"
      "linea"
      "udelim"
      "scribble-lib"
      "scribble-doc"
      "racket-doc"
      "rackunit-lib"
      "readline-lib"
      "make"
      "csv-reading"
      "text-table"
    ];
  };
  "vr-engine" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/vr-engine.git";
      rev = "18e290f7d61ddd2b32a2f12a8abb0c4a30ed3a08";
    };

    deps = [
      "hostname"
      "simple-qr"
      "urlang"
      "https://github.com/thoughtstem/define-assets-from.git"
      "https://github.com/thoughtstem/image-coloring.git"
      "https://github.com/thoughtstem/TS-GE-Katas.git?path=ts-kata-util"
    ];
  };
  "clang" = {
    src = fetchGit {
      url = "https://github.com/wargrey/clang.git";
      rev = "0b9729845378ae6f318234835eb249d8eeae65e3";
    };

    deps = [
      "digimon"
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "protocol-buffers-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-protocol-buffers.git";
      rev = "c4cec28f29b05c7d9875c944429033d29d3fd555";
    };
    subpath = "protocol-buffers-lib";
    deps = [
      "base"
    ];
  };
  "string-constants-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/string-constants-doc.zip";
      sha256 = "1f2bwk5vqs7mhnfkwxphp3qdwwr76q9fpg47y5wvyghvp7hi23zw";
    };
    deps = [
      "string-constants-lib"
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "make-log-interceptor" = {
    src = fetchGit {
      url = "https://github.com/bennn/make-log-interceptor.git";
      rev = "232e58ec35aa36367f61586e1640b9ab692ff7dc";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "racket-dogstatsd" = {
    src = fetchGit {
      url = "https://github.com/DarrenN/racket-dogstatsd.git";
      rev = "164ec431a98689b111495bad638313b219e3b0b2";
    };

    deps = [
      "base"
      "threading"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "auto-syntax-e" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/auto-syntax-e.git#main";
      rev = "5488c6902ec6189f69f950ab4d5616e9d6718d34";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "profile" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile.zip";
      sha256 = "0xs53r5knbg9m8878hyqxi6yycxingcs0k6wn85s6j75ir7i42b1";
    };
    deps = [
      "profile-lib"
      "profile-doc"
    ];
  };
  "envlang" = {
    src = fetchGit {
      url = "https://github.com/envlang/racket.git#main";
      rev = "c45bfb25492a5fbedad50c7ad530d82bbbb43e3c";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "phc-toolkit"
      "base"
      "reprovide-lang-lib"
      "polysemy"
      "scribble-lib"
      "hyper-literate"
    ];
  };
  "pconvert-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pconvert-lib.zip";
      sha256 = "16q0qyrqndh193k5fc49ncl8k285d10x3m1axi8xqipa9rjd16vc";
    };
    deps = [
      "base"
      "compatibility-lib"
    ];
  };
  "libsodium" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-salty-crypto.git";
      rev = "81f9ce23af9ee493cfdf7947ae0bd1bc7deaabe3";
      ref = "main";
    };
    subpath = "libsodium";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "twixt" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/twixt.git";
      rev = "41aca88a7a7e5a993460df011da67b4fa31daadc";
    };

    deps = [
      "pict-lib"
      "rebellion"
      "base"
      "pict-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "splitflap-lib" = {
    src = fetchGit {
      url = "https://github.com/otherjoel/splitflap.git";
      rev = "d8faa3aef672b355280f36e299ae57756ef02383";
      ref = "main";
    };
    subpath = "splitflap-lib";
    deps = [
      "base"
      "gregor-lib"
    ];
  };
  "trace" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/trace.zip";
      sha256 = "0rajqpdq99aczhj13l87wmgab9hfw5w18bh5bcikag98jvfwhs0y";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "tulip" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-tulip";
      rev = "1613cfd4d7e8dbc8ceb86cf33479375147f42b2f";
    };
    subpath = "tulip";
    deps = [
      "base"
      "tulip-lib"
    ];
  };
  "dbg-ui" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-dbg.git";
      rev = "a265f4eeaf0b38fe2cb3196013fa698eb9f7a172";
    };
    subpath = "dbg-ui";
    deps = [
      "base"
      "canvas-list"
      "dbg"
      "gui-easy-lib"
      "gui-lib"
      "pict-lib"
      "plot-gui-lib"
      "plot-lib"
      "profile-lib"
      "rackunit-lib"
    ];
  };
  "automata-lib" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/automata";
      rev = "6abe851b83b18fcdcb8f2b19ab87cdabc90c71ce";
    };
    subpath = "automata-lib";
    deps = [
      "base"
    ];
  };
  "dos" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/dos";
      rev = "e39826f5f65f7d0b849e5286859e70a62a985be1";
    };

    deps = [
      "base"
      "htdp-lib"
      "htdp-lib"
      "scribble-lib"
      "racket-doc"
      "htdp-doc"
      "rackunit-lib"
    ];
  };
  "graph-test" = {
    src = fetchGit {
      url = "https://github.com/stchang/graph.git";
      rev = "9d77ab184e26f4f3c917c7bd49eda2e980a24fae";
    };
    subpath = "graph-test";
    deps = [
      "base"
      "graph-lib"
      "rackunit-lib"
    ];
  };
  "voxel" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-voxel.git";
      rev = "9c23d1e8e71a80bac6e4251a517f70aef002ab9f";
    };

    deps = [
      "base"
      "opengl"
      "glm"
      "gui-lib"
      "at-exp-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "sql" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/sql";
      rev = "f8722d186a5b2ebcbdd58b19a900ebb805bbf33e";
    };

    deps = [
      "base"
      "rackunit-lib"
      "db-lib"
      "racket-doc"
      "scribble-lib"
      "sandbox-lib"
      "db-doc"
    ];
  };
  "remote-shell-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/remote-shell-lib.zip";
      sha256 = "1fz04lrdbfhc4yiwg218zndg97vq9q7h4ihzi8gg94fkcnpaw3km";
    };
    deps = [
      "base"
    ];
  };
  "mathler" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/mathler.git#develop";
      rev = "aa9c36b94460d1de9baa687dbec18c8b6f1998af";
      ref = "develop";
    };

    deps = [
      "functional-lib"
      "base"
      "curly-fn-lib"
      "try-catch-finally-lib"
      "readline-lib"
      "megaparsack-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "review" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-review.git";
      rev = "72d34d99aa7096529a62c3b625bf42397c6423b5";
    };

    deps = [
      "base"
      "base"
      "at-exp-lib"
    ];
  };
  "zeromq-r" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-zeromq";
      rev = "5917ef00278433cf4d953632a13744b6d826cae9";
    };
    subpath = "zeromq-r";
    deps = [
      "base"
      "zeromq-r-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "hostname" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/hostname.zip";
      sha256 = "0w9wlrza71x2f27lqk055hbp485db35miadfjdgrqspmkh76i4xl";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "emcsabac" = {
    src = fetchGit {
      url = "https://github.com/tnelson/emcsabac.git";
      rev = "e14172de583770ebfae544cc40432738e429a4dc";
    };

    deps = [
      "base"
      "rosette"
      "ocelot"
    ];
  };
  "hackett-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/hackett.git";
      rev = "e90ace9e4a056ec0a2a267f220cb29b756cbefce";
    };
    subpath = "hackett-doc";
    deps = [
      "base"
      "hackett-lib"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
    ];
  };
  "mutate-test" = {
    src = fetchGit {
      url = "https://github.com/llazarek/mutate.git";
      rev = "a6932812d991d4dfcac0fb91deb6948ac4597e45";
      ref = "master";
    };
    subpath = "mutate-test";
    deps = [
      "base"
      "ruinit"
      "mutate-lib"
      "at-exp-lib"
    ];
  };
  "binary-matcher" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-binary-matcher.git#master";
      rev = "22337f33ce6b256dd46d9de90b40cf1783818263";
      ref = "master";
    };

    deps = [
      "base"
      "extra-srfi-libs"
      "soup-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "net-ip-lib"
    ];
  };
  "j" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/racket-jlang";
      rev = "021c40382f95d1a6dc0b329a152a171465b9bc75";
    };

    deps = [
      "base"
      "data-lib"
      "math-lib"
      "parser-tools-lib"
      "math-doc"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "learn-to-type" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/learn-to-type";
      rev = "e92730f9e7c1560a9f1dc82fbed6046c4532d167";
      ref = "master";
    };
    deps = [
      "base"
      "gui-lib"
      "images-lib"
    ];
  };
  "presentation-big-bang" = {
    src = fetchGit {
      url = "https://github.com/maueroats/presentation-big-bang.git";
      rev = "e4eb77ab48981cea03816710761976813fa61359";
    };

    deps = [
      "base"
      "htdp-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ini" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ini.git";
      rev = "8ed624b74d42ab5ea3142c9af70285fe82d47590";
    };
    subpath = "src/ini";
    deps = [
      "base"
      "ini-doc"
      "ini-lib"
      "ini-test"
      "typed-ini-lib"
    ];
  };
  "package-analysis" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/package-analysis.git";
      rev = "785bc9b1eac503c9359d9d08936422f6f47ce82b";
    };

    deps = [
      "base"
      "rebellion"
      "net-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "gregor-doc" = {
    src = fetchGit {
      url = "https://github.com/97jaz/gregor.git";
      rev = "2d20192e8795e01a1671869dddaf1984f0cbafee";
    };
    subpath = "gregor-doc";
    deps = [
      "base"
      "base"
      "racket-doc"
      "data-doc"
      "data-lib"
      "gregor-lib"
      "scribble-lib"
      "sandbox-lib"
      "tzinfo"
    ];
  };
  "racket-poppler" = {
    src = fetchGit {
      url = "https://github.com/soegaard/racket-poppler";
      rev = "3ff5998d69e3b65fbba75a4f1dfe9d8e1b15caa5";
      ref = "master";
    };
    deps = [
      "draw-lib"
      "slideshow-lib"
      "web-server-lib"
      "base"
      "pict"
      "poppler-x86-64-macosx"
      "poppler-i386-macosx"
      "poppler-win32-x86-64"
      "poppler-win32-i386"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "draw-doc"
      "pict-doc"
    ];
  };
  "rival" = {
    src = fetchGit {
      url = "https://github.com/herbie-fp/rival.git";
      rev = "2f216f672bf30bb36095a175d5d6e2ac322e3eb8";
    };

    deps = [
      "base"
      "math-lib"
      "rackunit-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "math-doc"
      "sandbox-lib"
    ];
  };
  "gui-pkg-manager-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-pkg-manager-lib.zip";
      sha256 = "19g9h937kihsf1hbr0ps7m737fr3ix36z8fn3amadavkhqy08w2q";
    };
    deps = [
      "base"
      "gui-lib"
      "string-constants-lib"
    ];
  };
  "at-exp-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/at-exp-lib.zip";
      sha256 = "0254xsnspxjbvzr2jw5jky0h164ymyc481sla88jh582wddmy8lc";
    };
    deps = [
      "base"
    ];
  };
  "tinybasic-examples" = {
    src = fetchGit {
      url = "https://github.com/winny-/tinybasic.rkt.git";
      rev = "bc8967bb2758eb464dd858de80ac6708d6a57805";
    };
    subpath = "tinybasic-examples";
    deps = [
      "base"
      "tinybasic-lib"
    ];
  };
  "laramie" = {
    src = fetchGit {
      url = "https://github.com/jessealama/laramie.git";
      rev = "f9c9150e9afe8aadfa9251972ecc915f867657f3";
    };
    subpath = "laramie";
    deps = [
      "laramie-lib"
      "laramie-doc"
    ];
  };
  "fig" = {
    src = fetchGit {
      url = "https://github.com/micahcantor/fig.git";
      rev = "46f85ffeb9ee5b295fd08f64a543967e81a99d01";
    };

    deps = [
      "base"
      "brag"
      "scribble-lib"
    ];
  };
  "j-notation" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/j-notation.git";
      rev = "7110bc3dfab535e193337756b76e3b5d8fd03033";
    };

    deps = [
      "brag-lib"
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "generic-bind" = {
    src = fetchGit {
      url = "https://github.com/stchang/generic-bind.git#master";
      rev = "055f0afd3c5872353108850fa381f6d6db45ee34";
      ref = "master";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "math-lib"
      "compatibility-lib"
    ];
  };
  "syntax-parse-example" = {
    src = fetchGit {
      url = "https://github.com/syntax-objects/syntax-parse-example.git#master";
      rev = "98ebe1ce38b998b0394c2226c9685ee1f0529fc7";
      ref = "master";
    };

    deps = [
      "at-exp-lib"
      "base"
      "scribble-lib"
      "rackunit-lib"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
      "rackunit-lib"
      "scribble-doc"
      "rackunit-typed"
      "typed-racket-doc"
    ];
  };
  "draw-aarch64-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-aarch64-macosx-3.zip";
      sha256 = "0m1jqx7bw3b7w5a13pzasn6vyr3pp758d3gff4qfymbw48h3dngz";
    };
    deps = [
      "base"
    ];
  };
  "handy" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/racket-dstorrs-libs.git";
      rev = "7e816d2b5f65a92ab01b29a320cc2c71d7870dbb";
    };

    deps = [
      "html-parsing"
      "base"
      "db-lib"
      "rackunit-lib"
      "sxml"
      "at-exp-lib"
    ];
  };
  "typed-racket-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-doc.zip";
      sha256 = "16k7hnln8jhxb67irqavxpff7ddrlrcb8sh4nnpz7lhfday50js7";
    };
    deps = [
      "base"
      "net-doc"
      "net-cookies-doc"
      "scheme-lib"
      "srfi-lite-lib"
      "r6rs-doc"
      "srfi-doc"
      "r6rs-lib"
      "sandbox-lib"
      "at-exp-lib"
      "scribble-lib"
      "pict-lib"
      "typed-racket-lib"
      "typed-racket-compatibility"
      "typed-racket-more"
      "racket-doc"
      "draw-lib"
      "web-server-doc"
      "scheme-doc"
    ];
  };
  "html5-lang" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/html5-lang.git";
      rev = "ae39387ef2dfd6b7df630940e1d338e854c10de8";
    };
    subpath = "html5-lang";
    deps = [
      "hostname"
      "simple-qr"
      "urlang"
    ];
  };
  "chk-test" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/chk";
      rev = "32fb635e19fa2dc2d9c35bac0964ab76dde1e89e";
    };
    subpath = "chk-test";
    deps = [
      "base"
      "chk-lib"
      "testing-util-lib"
    ];
  };
  "rml-decisiontrees" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/rml-decisiontrees.git";
      rev = "820d4c415f117a147093b7e7aac19975b3e79356";
    };

    deps = [
      "base"
      "rml-core"
      "math-lib"
      "sandbox-lib"
      "racket-index"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "cover-coveralls"
    ];
  };
  "superc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/superc";
      rev = "929d3e32db7a5c69fa9e033db7b5707cff329672";
      ref = "master";
    };
    deps = [
      "at-exp-lib"
      "base"
      "scribble-text-lib"
      "scheme-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "unstable-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable/";
      rev = "99149bf1a6a82b2309cc04e363a87ed36972b64b";
    };
    subpath = "unstable-lib";
    deps = [
      "automata-lib"
      "base"
      "draw-lib"
      "gui-lib"
      "markparam-lib"
      "pict-lib"
      "ppict"
      "scribble-lib"
      "slideshow-lib"
      "temp-c-lib"
      "unstable-macro-testing-lib"
      "unix-socket-lib"
      "staged-slide"
      "rackunit-lib"
    ];
  };
  "quickscript-extra" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/quickscript-extra.git";
      rev = "55e476c1be8552165e8b0dfba4db9b6e4dcf741f";
    };

    deps = [
      "base"
      "quickscript"
      "at-exp-lib"
      "drracket"
      "gui-lib"
      "pict-lib"
      "racket-index"
      "scribble-lib"
      "search-list-box"
      "srfi-lite-lib"
      "net-lib"
      "web-server-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "define-who" = {
    src = fetchGit {
      url = "https://github.com/sorawee/define-who.git";
      rev = "85f342a1bb238139675a94bcda646ea38d54ceaf";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "parendown-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/parendown-for-racket.git";
      rev = "bbd36ea3fec9b78b3ccc05dcf20341f768a7f4ac";
      ref = "main";
    };
    subpath = "parendown-lib";
    deps = [
      "base"
    ];
  };
  "net-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-doc.zip";
      sha256 = "0sh6i960ffxqnc9vjph9c9gj6bszjknsyd135dgcvgmf85ifkb3b";
    };
    deps = [
      "base"
      "compatibility-lib"
      "net-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rebellion" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/rebellion.git";
      rev = "7d70595e621f4b033958c19d33a47c067ea9eedf";
    };

    deps = [
      "base"
      "net-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "secp256k1" = {
    src = fetchGit {
      url = "https://github.com/MohamedLEGH/secp256k1.git";
      rev = "f11922d1b8e5de8c2b65110d9640dd0a0d9708da";
    };

    deps = [
      "base"
      "math-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "parse-qif" = {
    src = fetchGit {
      url = "https://github.com/jbclements/parse-qif.git";
      rev = "ddb371e5aca548a3f6dfee136bf7acd644c923bd";
    };

    deps = [
      "base"
      "rackunit-typed"
      "srfi-lite-lib"
      "typed-racket-lib"
    ];
  };
  "scribble-text-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-text-lib.zip";
      sha256 = "0mmigncv6n4gl0v5yxjmbf5mrzv37myhrc90x7zvvbwifdkaqq0p";
    };
    deps = [
      "scheme-lib"
      "base"
      "at-exp-lib"
    ];
  };
  "symalg" = {
    src = fetchGit {
      url = "https://github.com/pyohannes/racket-symalg.git";
      rev = "5c551e9fcead240dcc70261563c5b981428ca67a";
    };

    deps = [
      "base"
      "multimethod"
      "parser-tools"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "slideshow-plugin" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-plugin.zip";
      sha256 = "1gz5v503x9vvy6vhjflvknsi5w2sbiaq2kgzipgqi236k48xynsx";
    };
    deps = [
      "base"
      "slideshow-lib"
      "pict-lib"
      "string-constants-lib"
      "compatibility-lib"
      "drracket-plugin-lib"
      "gui-lib"
    ];
  };
  "db" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db.zip";
      sha256 = "0vk3sarsggrxk112d2aigjcj6w5a7jpi27vncn9gj21dapag9ddi";
    };
    deps = [
      "db-lib"
      "db-doc"
      "base"
    ];
  };
  "struct-update-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/struct-update.git";
      rev = "8ce456cde8764ae27c348123ec9e01e76826d536";
    };
    subpath = "struct-update-test";
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-spec"
      "struct-update-lib"
    ];
  };
  "game-engine" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/game-engine.git";
      rev = "98c4b9e9b8c071818e564ef7efb55465cff487a8";
    };

    deps = [
      "threading"
      "memoize"
      "https://github.com/jeapostrophe/mode-lambda.git#0858b6d"
      "drracket"
      "htdp-lib"
      "https://github.com/jeapostrophe/lux.git"
      "jack-posn"
      "https://github.com/thoughtstem/racket-chipmunk.git#master"
      "base"
    ];
  };
  "unstable-flonum-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-flonum/";
      rev = "e7e1ed3e9c2f3448e1eac2084e2f2f6c4d126000";
    };
    subpath = "unstable-flonum-doc";
    deps = [
      "base"
      "scribble-lib"
      "unstable"
      "unstable-flonum-lib"
      "plot"
      "math-doc"
      "racket-doc"
    ];
  };
  "rosetta" = {
    src = fetchGit {
      url = "https://github.com/aptmcl/rosetta";
      rev = "1b81b10b0c8eb77d92d6b5ea86d0eb940add0888";
    };

    deps = [
      "base"
      "math-lib"
      "srfi-lib"
      "typed-racket-lib"
    ];
  };
  "carl-lib" = {
    src = fetchGit {
      url = "https://github.com/mkyl/carl-lib.git";
      rev = "195c155ccf9306acd29adaf2ab7d536d7686f849";
    };

    deps = [
      "base"
      "brag-lib"
      "db"
      "graph"
      "math-lib"
      "rackunit-lib"
      "scribble-lib"
      "csv-writing"
      "racket-graphviz"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "math-doc"
    ];
  };
  "yaml" = {
    src = fetchGit {
      url = "https://github.com/esilkensen/yaml";
      rev = "b60a1e4a01979ed447799b07e7f8dd5ff17019f0";
      ref = "master";
    };
    deps = [
      "base"
      "srfi-lite-lib"
      "typed-racket-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
    ];
  };
  "pollen-rock" = {
    src = fetchGit {
      url = "https://github.com/lijunsong/pollen-rock.git";
      rev = "8107c7c1a1ca1e5ab125650f38002683b15b22c9";
    };

    deps = [
      "base"
      "rackunit-lib"
      "web-server-lib"
      "pollen"
      "sugar"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "try-catch-match" = {
    src = fetchGit {
      url = "https://github.com/eutro/try-catch-match.git#master";
      rev = "6cd64b9b0d3fc3828318da9f8d26cc5d9271c1f4";
      ref = "master";
    };

    deps = [
      "base"
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "gtp-pict" = {
    src = fetchGit {
      url = "https://gitlab.com/gradual-typing-performance/gtp-pict.git";
      rev = "7de896b161fea193b72adb255deff4f44241e97d";
    };

    deps = [
      "base"
      "math-lib"
      "pict-lib"
      "draw-lib"
      "images-lib"
      "pict-abbrevs"
      "ppict"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "scribble-doc"
      "rackunit-abbrevs"
      "pict-doc"
      "draw-doc"
      "images-doc"
    ];
  };
  "qiniu-sdk" = {
    src = fetchGit {
      url = "https://github.com/MatrixForChange/qiniu-sdk.git";
      rev = "27ca32071cd03a1dc955ec396efa120f0d4b2759";
    };

    deps = [
      "base"
      "web-server-lib"
    ];
  };
  "cover" = {
    src = fetchGit {
      url = "https://github.com/florence/cover.git";
      rev = "ad50ffa8f6246053bec24b39b9cae7fad1534373";
      ref = "release";
    };
    subpath = "cover";
    deps = [
      "cover-lib"
      "cover-doc"
    ];
  };
  "mischief" = {
    src = fetchGit {
      url = "https://github.com/carl-eastlund/mischief";
      rev = "c6f95a774b60950cabd7238e639f7e5f0d8737cd";
      ref = "stable";
    };
    deps = [
      "base"
      "compatibility-lib"
      "macro-debugger"
      "macro-debugger-text-lib"
      "pconvert-lib"
      "sandbox-lib"
      "scribble-lib"
      "srfi-lib"
      "srfi-lite-lib"
      "compatibility-doc"
      "data-doc"
      "racket-doc"
      "scribble-doc"
      "racket-index"
      "rackunit-gui"
      "rackunit-lib"
    ];
  };
  "rmacs" = {
    src = fetchGit {
      url = "https://github.com/tonyg/rmacs";
      rev = "8c99dd5dfa22f1f34707bbe957de268dc6a7a632";
      ref = "master";
    };
    deps = [
      "base"
      "ansi"
      "syntax-color-lib"
      "gui-lib"
      "unix-signals"
      "diff-merge"
      "web-server-lib"
      "profile-lib"
      "rackunit-lib"
    ];
  };
  "expeditor-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/expeditor-lib.zip";
      sha256 = "13850d2jvdn0ccnv56w6wcsg9xa18jaxbqr5rqnbmb9ng4r4m9s6";
    };
    deps = [
      "base"
      "syntax-color-lib"
    ];
  };
  "libvid-x86_64-macosx" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-x86_64-macosx";
    deps = [
      "base"
    ];
  };
  "jen" = {
    src = fetchGit {
      url = "https://github.com/HeladoDeBrownie/jen.git";
      rev = "eb49e8f4a84f9a5deb93756669c2208e7590bb37";
      ref = "Unstable";
    };
    subpath = "jen";
    deps = [
      "jen-lib"
      "jen-doc"
      "jen-samples"
    ];
  };
  "html-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/html-doc.zip";
      sha256 = "1hbdj9ywp0qavi4jcwv3whzszk406iq8pi2ya0hmib9jwsfz7hkh";
    };
    deps = [
      "base"
      "scribble-lib"
      "html-lib"
      "racket-doc"
    ];
  };
  "html" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/html.zip";
      sha256 = "0fm8mx8x1sy3kn0nhz7hl6l1wjgzdb7glrkyqpb4avlwx4mhknjs";
    };
    deps = [
      "html-lib"
      "html-doc"
    ];
  };
  "minikanren" = {
    src = fetchGit {
      url = "https://github.com/takikawa/minikanren";
      rev = "51a18cf82834fb1af7a0dc41af4b7894099a3d05";
      ref = "master";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "algorithms" = {
    src = fetchGit {
      url = "https://github.com/codereport/racket-algorithms.git";
      rev = "3a19caf19a3632928e6b8e533b20f06cb1422f33";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "tightlight" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.cs.toronto.edu/~gfb/racket-pkgs/tightlight.zip";
      sha256 = "0qw351n9d49qbjb0gm52kxcvsg0wxfgdnanyhgjvl3b9789igia5";
    };
    deps = [
      "base"
      "drracket-plugin-lib"
      "gui-lib"
      "snack"
    ];
  };
  "etl" = {
    src = fetchGit {
      url = "https://github.com/Jesse-Hamlin-Navias/etl.git";
      rev = "b0fa42a8b135e3baf8c2e3c609b1deab0b3e2b34";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "brag-lib"
      "scribble-lib"
    ];
  };
  "scribble-minted" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-minted.git";
      rev = "935ad9cd76f7598a60ac3981f94171c486fa91ee";
      ref = "main";
    };
    subpath = "scribble-minted";
    deps = [
      "scribble-minted-lib"
      "scribble-minted-doc"
    ];
  };
  "fontland" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/typesetting.git";
      rev = "680422ea57fce4bc4280edb7412c161561d1641c";
      ref = "main";
    };
    subpath = "fontland";
    deps = [
      "crc32c"
      "db-lib"
      "base"
      "beautiful-racket-lib"
      "debug"
      "draw-lib"
      "rackunit-lib"
      "png-image"
      "sugar"
      "xenomorph"
    ];
  };
  "fexpress-test" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/fexpress.git";
      rev = "b5c951fddebc3e4d3463cdf78dc9d417de97d50f";
      ref = "main";
    };
    subpath = "fexpress-test";
    deps = [
      "base"
      "fexpress-lib"
      "rackunit-lib"
    ];
  };
  "mockfighter" = {
    src = fetchGit {
      url = "https://github.com/eu90h/mockfighter";
      rev = "63906eff874e90644725dbff5365889d959e2294";
    };

    deps = [
      "base"
      "rackunit-lib"
      "stockfighter-racket"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "syntax-color-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color-lib.zip";
      sha256 = "0x59yj3wnrpv0q5i1108w9jb9sk8zv3i947yd974k7pmq3xrxwf6";
    };
    deps = [
      "base"
      "parser-tools-lib"
      "option-contract-lib"
      "rackunit-lib"
    ];
  };
  "dset" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/dset.git";
      rev = "ce3581c73c42a3c8bbb6b4498325109fdf221c12";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "raco-pkg-env" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/raco-pkg-env.git";
      rev = "eb14b196a490a4cf815a0126b7fe0bb3d5cf3ef5";
      ref = "release";
    };
    subpath = "raco-pkg-env";
    deps = [
      "base"
      "raco-pkg-env-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "gui" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui.zip";
      sha256 = "0j2ava3imm35x1w9i015jpsma4bhwcdl20kkaskwpf0grfnk1g3a";
    };
    deps = [
      "gui-lib"
      "gui-doc"
    ];
  };
  "pmsf-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-doc";
    deps = [
      "base"
      "net-doc"
      "racket-doc"
      "scribble-lib"
      "ziptie-git"
      "pmsf-condition"
      "pmsf-depend"
      "pmsf-iuse"
      "pmsf-keywords"
      "pmsf-lib"
      "pmsf-license"
      "pmsf-manifest"
      "pmsf-name"
      "pmsf-required-use"
      "pmsf-restrict"
      "pmsf-slot"
      "pmsf-src-uri"
      "typed-pmsf"
    ];
  };
  "webapi" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/webapi#pkg";
      rev = "c1a172e360db667be49dcd81eba85f4a35b73a94";
      ref = "pkg";
    };

    deps = [
      "base"
      "sxml"
      "html-writing"
      "compatibility-lib"
      "web-server-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ream" = {
    src = fetchGit {
      url = "https://github.com/X-Files-Institute/ream#main";
      rev = "d5c2ecaa9398c6187737a5336f3e23c0cc90f38f";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "recursive-language" = {
    src = fetchGit {
      url = "https://github.com/sorawee/recursive-language.git";
      rev = "86be12fe663454922c5b1235b4e3fbb7e8691b2c";
    };

    deps = [
      "rackunit-lib"
      "base"
      "parser-tools-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "sew" = {
    src = fetchGit {
      url = "https://github.com/lathe/sew-for-racket.git";
      rev = "8758c3792adb413af2b822e54d3e8f5e8d3f55db";
      ref = "main";
    };
    subpath = "sew";
    deps = [
      "sew-doc"
      "sew-lib"
    ];
  };
  "lang-file" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/lang-file";
      rev = "69993f73dab8382796be37998ec47ded7883faf7";
    };
    subpath = "lang-file";
    deps = [
      "base"
      "lang-file-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "draw-i386-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/cd01012829036ad3bf396cd6c34e6650db3be622/draw-i386-macosx.zip";
      sha256 = "139iimsfnrj4sc52irddx0k60xc6svdf0xkk8gz8hnp1qipdxn7b";
    };
    deps = [
      "base"
    ];
  };
  "vscode-dark-theme" = {
    src = fetchGit {
      url = "https://github.com/kurtisvetter/drracket-vscode-dark.git";
      rev = "aabfab324bdfed2d11506be4f0c2e8e6f0837f63";
    };

    deps = [
      "base"
    ];
  };
  "dotenv" = {
    src = fetchGit {
      url = "https://github.com/royallthefourth/dotenv.git";
      rev = "9afc37bff71944f12aeb83b744263f340fe929f9";
    };
    subpath = "dotenv";
    deps = [
      "dotenv-doc"
      "dotenv-lib"
    ];
  };
  "deta-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/deta.git";
      rev = "df9ddc886df098537fa18f1ec775ec591d9a630b";
    };
    subpath = "deta-lib";
    deps = [
      "base"
      "db-lib"
      "gregor-lib"
      "at-exp-lib"
    ];
  };
  "fast-sequence-lib" = {
    src = fetchGit {
      url = "https://github.com/abolotina/fast-sequence-combinators.git";
      rev = "d5144e2d6f73f441937a77439f80b79000768cd9";
      ref = "stable";
    };
    subpath = "fast-sequence-lib";
    deps = [
      "base"
    ];
  };
  "kitco" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/kitco.zip";
      sha256 = "0nq5kcmlkk6ybzjahk8ibq85ch9r27frqhwra8029g67znvy19jd";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "survival-minecraft" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "survival-minecraft";
    deps = [
      "https://github.com/thoughtstem/TS-GE-Katas.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-GE-Languages.git?path=survival"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "profile-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-test.zip";
      sha256 = "1bkbjy317yaln9akr3ndd3x9yjy9rfvm2m17bkr8g5aa8nrcmh51";
    };
    deps = [
      "base"
      "eli-tester"
      "profile-lib"
    ];
  };
  "alexis-collection-lens" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/alexis-collection-lens.git";
      rev = "4f91587e8a5728b02c1ea9af9ac7476baf39b928";
    };

    deps = [
      "alexis-collections"
      "base"
      "curly-fn"
      "lens"
      "scribble-lib"
      "at-exp-lib"
      "cover"
      "cover-coveralls"
      "doc-coverage"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "measures" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/measures";
      rev = "f75e2361a767cab6fb662c761cc93d15b00c964a";
      ref = "master";
    };
    deps = [
      "base"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "protobj" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/protobj.zip";
      sha256 = "07r9m2vhqdqk0h1cpqq6nvsvj3r4lnq6vnj9s8hsvdwdrw8v05ds";
    };
    deps = [
      "base"
      "mcfly"
      "compatibility-lib"
      "srfi-lib"
      "overeasy"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "tesira" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-tesira";
      rev = "47ae8cd92ad3b2610a3f95db9ba3e16db6b24d48";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "parser-tools-lib"
      "typed-racket-more"
      "mordae"
      "racket-doc"
      "typed-racket-doc"
      "typed-racket-lib"
    ];
  };
  "XMPP" = {
    src = fetchGit {
      url = "https://gitlab.com/navlost.eu/xmpp/libraries/racket/xmpp.git#devel";
      rev = "baeffce8726e30ee49e9f1e19d76fb519cc660af";
      ref = "devel";
    };

    deps = [
      "sasl-lib"
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "t-test" = {
    src = fetchGit {
      url = "https://github.com/jbclements/t-test.git";
      rev = "eb5cc28868689324f6c27722d2516715570cab97";
    };

    deps = [
      "base"
      "math-lib"
      "typed-racket-lib"
      "racket-doc"
      "rackunit-typed"
      "scribble-lib"
      "math-doc"
    ];
  };
  "envy" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/envy";
      rev = "580610f63b66ee7503c32facfa8924505e5f35f1";
    };

    deps = [
      "base"
      "sweet-exp-lib"
      "threading"
      "typed-racket-lib"
      "racket-doc"
      "scribble-lib"
      "sweet-exp"
      "typed-racket-doc"
      "typed-racket-more"
    ];
  };
  "contract-etc-lib" = {
    src = fetchGit {
      url = "https://github.com/camoy/contract-etc.git";
      rev = "b160afa0b38b432013017296582ef2a2cef18f4d";
      ref = "main";
    };
    subpath = "contract-etc-lib";
    deps = [
      "base"
      "option-contract-lib"
      "rackunit-lib"
    ];
  };
  "tex-table" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/tex-table.zip";
      sha256 = "1v8a27g7hgxvblm5vv8slwfxrgx3m7vxhiwq200k5gdj62syn067";
    };
    deps = [
      "base"
    ];
  };
  "p5" = {
    src = fetchGit {
      url = "https://github.com/a11ce/racket-p5.git";
      rev = "2f01f98fac2d53da138029f3c6ad688ede608400";
    };

    deps = [
      "base"
      "urlang"
    ];
  };
  "algol60" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/algol60.zip";
      sha256 = "1hlss1qnwzhhlxzqymvay96fvanrxrxrhjl3w5m0ijzjms1vgwvp";
    };
    deps = [
      "base"
      "compatibility-lib"
      "drracket-plugin-lib"
      "errortrace-lib"
      "gui-lib"
      "parser-tools-lib"
      "string-constants-lib"
      "at-exp-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
      "scribble-lib"
      "drracket-tool-lib"
      "drracket-plugin-lib"
    ];
  };
  "sparse" = {
    src = fetchGit {
      url = "https://github.com/ricky-escobar/sparse";
      rev = "0d713dd9524c5bbba7fbebe49f44cbe9aab70275";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "struct-like-struct-type-property" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/struct-like-struct-type-property#main";
      rev = "2e433691136c881c87dd27b7e2c3266cca74ff24";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "keyring-secret-service-test" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-secret-service-test";
    deps = [
      "base"
      "keyring-secret-service-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "faster-minikanren" = {
    src = fetchGit {
      url = "https://github.com/michaelballantyne/faster-miniKanren";
      rev = "25799d1ddca3311a3b98b017721162ed142bacb9";
    };

    deps = [
      "base"
    ];
  };
  "yijing" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/yijing.git#master";
      rev = "d2bf8b67abc89e87cf1ccf1f9cf197709374bd16";
      ref = "master";
    };

    deps = [
      "base"
      "htdp-lib"
      "htdp-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "ebuild-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "reprovide-lang-lib"
      "threading-lib"
    ];
  };
  "kittle-buffer" = {
    src = fetchGit {
      url = "https://github.com/KDr2/kittle-buffer.git#main";
      rev = "7ab19798d07fde81f3d378867b5ae794821d49aa";
      ref = "main";
    };

    deps = [
      "base"
      "gui"
      "draw"
      "srfi"
    ];
  };
  "tjson" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/tjson.git";
      rev = "b8471434b51592d3fcab819bb203380c8ede5de3";
    };

    deps = [
      "base"
      "typed-racket-more"
      "typed-racket-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "typed-racket-doc"
    ];
  };
  "pconvert-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pconvert-test.zip";
      sha256 = "0jq10cilz4fganr830w1i5aa305xc6k4ygp6jgc4dbaaawx2lv29";
    };
    deps = [
      "base"
      "compatibility-lib"
    ];
  };
  "uu-cs3520" = {
    src = fetchGit {
      url = "https://github.com/mflatt/uu-cs3520.git";
      rev = "9c7899c2de0e59f77d8a5489bc0608c6d1004729";
    };

    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "net-lib"
      "shplait"
      "rhombus-prototype"
    ];
  };
  "string-sexpr" = {
    src = fetchGit {
      url = "https://github.com/mfelleisen/string-sexpr";
      rev = "b87319d3c34be048df24222e54c7dc4327063dc8";
    };

    deps = [
      "racket"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "quickcheck" = {
    src = fetchGit {
      url = "https://github.com/ifigueroap/racket-quickcheck";
      rev = "4d7f7e7491dd596b7725c4e3e5ab822763a26ee0";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit"
      "doc-coverage"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "inotify" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-inotify.git#master";
      rev = "498905153424bae3a9a0ceb6769afeda2a4033a1";
      ref = "master";
    };

    deps = [
      "base"
      "stencil-vector-utils"
      "srfi-lib"
      "extra-srfi-libs"
      "racket"
      "c-defs"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "in-out-logged" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/in-out-logged.git";
      rev = "51203f9448f520277d2a5bd1946b425d11e37b90";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "rackpropagator-test" = {
    src = fetchGit {
      url = "https://github.com/ots22/rackpropagator.git";
      rev = "5c5367985bf5fe20e8dd6e9da35792a203c296d1";
    };
    subpath = "rackpropagator-test";
    deps = [
      "base"
      "rackpropagator-lib"
      "rackunit-lib"
    ];
  };
  "keyring" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring";
    deps = [
      "base"
      "keyring-lib"
      "base"
      "keyring-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "mzscheme-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mzscheme-lib.zip";
      sha256 = "18rzznp1z1qi7qymkjr4jjkq9ab7kg2p3xhzvw6jnwnllari2z7m";
    };
    deps = [
      "scheme-lib"
      "base"
    ];
  };
  "SSE" = {
    src = fetchGit {
      url = "https://gitlab.com/oquijano/sse.git";
      rev = "bd73412619dcfab18b5abacf1a7e8749fe864bbd";
    };

    deps = [
      "base"
      "web-server-lib"
      "web-server-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "vr-assets" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/vr-assets.git";
      rev = "c2748df870b0b5ada94105148dbf6ddb9703f529";
    };

    deps = [
      "base"
      "vr-engine"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "racket-pkg-test-a" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-pkg-test-a.git";
      rev = "139613ab203fbb90db295d3e2355ffead2d45a1f";
    };

    deps = [
      "base"
      "https://github.com/thoughtstem/racket-pkg-test-b.git"
      "https://github.com/thoughtstem/racket-pkg-test-c.git"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "teachpacks" = {
    src = fetchGit {
      url = "https://github.com/tyynetyyne/teachpacks.git";
      rev = "f82605dc2de7e6b6267fe2b2e6a6481a1ab33a35";
    };

    deps = [
      "gui-lib"
      "base"
      "htdp-lib"
      "plot-gui-lib"
      "plot-lib"
      "scribble-lib"
      "scribble-doc"
      "htdp-doc"
      "racket-doc"
    ];
  };
  "simple-tree-text-markup-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/simple-tree-text-markup-test.zip";
      sha256 = "0j0zfxzgpcmya35c6s0s3xb4iz949xmhji5hp2w7xykb0wz0g3p1";
    };
    deps = [
      "base"
      "simple-tree-text-markup-lib"
      "rackunit-lib"
    ];
  };
  "racket-index" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-index.zip";
      sha256 = "13vbsc4g1ijmr91nam9m37ci59c6wca2kbrkn5y3x08d0nhn01hf";
    };
    deps = [
      "base"
      "scribble-lib"
      "scheme-lib"
      "at-exp-lib"
    ];
  };
  "net-ip-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-net-ip.git";
      rev = "be7075c78baf122dc05beaf71faf941159aaad64";
    };
    subpath = "net-ip-doc";
    deps = [
      "base"
      "net-ip-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "zordoz" = {
    src = fetchGit {
      url = "https://github.com/bennn/zordoz.git";
      rev = "c65eccf469725b36dc27e5e153354e7e71766b9c";
    };

    deps = [
      "base"
      "compiler-lib"
      "zo-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "readline-lib"
      "dynext-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "cldr-bcp47" = {
    src = fetchGit {
      url = "https://github.com/97jaz/cldr-bcp47";
      rev = "823fc1a530f1a0ec4de59f5454c1a17f20c5a5d6";
    };

    deps = [
      "base"
      "cldr-core"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "component" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-component.git";
      rev = "ed1d2b24a548b4652d3d0fd60588301026acb4c2";
    };
    subpath = "component";
    deps = [
      "component-doc"
      "component-lib"
    ];
  };
  "gillette-test" = {
    src = fetchGit {
      url = "https://github.com/jessealama/gillette.git";
      rev = "0f574df183aa91762697f1bce3961c3d425896ea";
    };
    subpath = "gillette-test";
    deps = [
      "base"
      "rackunit-lib"
      "gillette-lib"
    ];
  };
  "db-win32-i386" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-win32-i386.zip";
      sha256 = "1q7dnzdrrbxndknj6x2y8c72rf89psmc4ixsbmbwc9994n67gz0k";
    };
    deps = [
      "base"
    ];
  };
  "plt-web" = {
    src = fetchGit {
      url = "https://github.com/racket/plt-web/";
      rev = "e06442a897ede8df9706555eee51734a9cecf4ab";
    };
    subpath = "plt-web";
    deps = [
      "plt-web-lib"
      "plt-web-doc"
    ];
  };
  "sweet-exp" = {
    src = fetchGit {
      url = "https://github.com/takikawa/sweet-racket";
      rev = "460a2f52db582014c144f4cc83ee8e2703f46cc7";
    };
    subpath = "sweet-exp";
    deps = [
      "base"
      "sweet-exp-lib"
      "sweet-exp-test"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "lazy"
    ];
  };
  "data-sci" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "427efdec036df998b05553484f6ba5dd0f1bc4af";
    };
    subpath = "data-sci";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/n3mo/data-science.git"
    ];
  };
  "html-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/html-test.zip";
      sha256 = "1g662aq8abzpbyjrkhqkznl5wcc5crzwln9dbkfxbvvyxd5xjxv3";
    };
    deps = [
      "racket-index"
      "base"
      "html-lib"
      "rackunit-lib"
    ];
  };
  "mutate" = {
    src = fetchGit {
      url = "https://github.com/llazarek/mutate.git";
      rev = "a6932812d991d4dfcac0fb91deb6948ac4597e45";
      ref = "master";
    };
    subpath = "mutate";
    deps = [
      "base"
      "mutate-lib"
      "mutate-mutators"
      "mutate-doc"
    ];
  };
  "gls" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/gls";
      rev = "82f2f504a3ccf534126020baedb406f813863143";
      ref = "master";
    };
    deps = [
      "base"
      "srfi-lite-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "shell-pipeline" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-rash.git";
      rev = "feb3ad16deb0b372a05f5d522f71e1746a3f96fd";
    };
    subpath = "shell-pipeline";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "impl-excl" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/impl-excl.git";
      rev = "2be491f8acb71ec6115d96070382e1f5f2d3a2a0";
    };
    subpath = "impl-excl";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "set-extras"
    ];
  };
  "gregor-lib" = {
    src = fetchGit {
      url = "https://github.com/97jaz/gregor.git";
      rev = "2d20192e8795e01a1671869dddaf1984f0cbafee";
    };
    subpath = "gregor-lib";
    deps = [
      "base"
      "data-lib"
      "memoize-lib"
      "parser-tools-lib"
      "tzinfo"
      "cldr-core"
      "cldr-bcp47"
      "cldr-numbers-modern"
      "cldr-dates-modern"
      "cldr-localenames-modern"
    ];
  };
  "sxml-intro" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/sxml-intro.zip";
      sha256 = "0lx3232cr9dykja41b69479z8l5zazfzcxgd13zn0w0qxmlnbvln";
    };
    deps = [
      "base"
      "scribble-lib"
    ];
  };
  "upi" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-upi.git";
      rev = "bbe44269dec1be98996124dcfe5155400d425ddd";
    };
    subpath = "src/upi";
    deps = [
      "base"
      "upi-doc"
      "upi-lib"
      "upi-test"
    ];
  };
  "psd" = {
    src = fetchGit {
      url = "https://github.com/wargrey/psd";
      rev = "73b16a52e0777250d02e977f7dcbd7c1d98ef772";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "draw-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "color-flood" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/color-flood.git#master";
      rev = "86f82e312587e982695ef5dd687e247f97bae7f5";
      ref = "master";
    };

    deps = [
      "base"
      "bazaar"
      "gui-lib"
      "rackunit-lib"
    ];
  };
  "atomichron" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/atomichron.git";
      rev = "77dddb12241a8d7ca8f1520a1862a79cad91a6c6";
    };

    deps = [
      "base"
      "rebellion"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "sketching-doc" = {
    src = fetchGit {
      url = "https://github.com/soegaard/sketching.git";
      rev = "592c04229395212acc646b1278f14ff7a098c2d7";
      ref = "main";
    };
    subpath = "sketching-doc";
    deps = [
      "scribble-lib"
      "sketching-lib"
      "base"
      "sandbox-lib"
      "gui-doc"
      "pict-doc"
      "at-exp-lib"
      "base"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "sketching-lib"
      "racket-doc"
      "cairo-lib"
    ];
  };
  "sendinblue" = {
    src = fetchGit {
      url = "https://github.com/sxn/racket-sendinblue.git";
      rev = "ec88f432cdf2854b524d293965e4a3fddae13478";
      ref = "main";
    };
    subpath = "sendinblue";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "covid-19" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/covid-19.git";
      rev = "f7f9532794b39480081700830747381b7a17e686";
    };

    deps = [
      "base"
      "http-client"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "RacketFrames" = {
    src = fetchGit {
      url = "https://github.com/bommysk/RacketFrames.git";
      rev = "7ba9ef5051a1c9fd1aa2d8a5672ae0c78e974773";
    };

    deps = [
      "base"
      "math-lib"
      "plot-gui-lib"
      "plot-lib"
      "rackunit-typed"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "simple-matrix" = {
    src = fetchGit {
      url = "https://bitbucket.org/derend/simple-matrix.git";
      rev = "ef14b69757573eb646cc4c6ca7fbc7574bd9a027";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "plot-container" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/plot-container.git";
      rev = "331645ebe66ac5d20cb9b817403eeb727a808c6d";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "plot-lib"
      "pict-snip-lib"
      "plot-gui-lib"
      "snip-lib"
      "gui-doc"
      "pict-snip-doc"
      "plot-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "mutt" = {
    src = fetchGit {
      url = "https://github.com/bennn/racket-mutt.git";
      rev = "d758476c3e2aeb22e9131dd295cbfcc752c02bf0";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "make-log-interceptor"
      "scribble-lib"
      "scribble-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-abbrevs"
      "typed-racket-doc"
    ];
  };
  "http2" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/http2.git";
      rev = "aafdea48a4f1e6f8579531350aee3691f4060129";
    };

    deps = [
      "base"
      "rebellion"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "libgit2-i386-win32" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/native-libs.git#i386-win32";
      rev = "35fe3fb502720873c681e4d56a59667c5a54585f";
      ref = "i386-win32";
    };

    deps = [
      "base"
    ];
  };
  "paddle" = {
    src = fetchGit {
      url = "https://github.com/jadudm/paddle.git";
      rev = "38e2ff034635b988549d875bb9d8bd1ab0252ad2";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "sgl"
    ];
  };
  "aurie" = {
    src = fetchGit {
      url = "https://gitlab.com/spritely/aurie.git";
      rev = "8f253de0c353f693f6fdb9578c497089acec470a";
      ref = "v0.0.1";
    };
    subpath = "aurie";
    deps = [
      "base"
      "goblins"
      "syrup"
      "rackunit-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
    ];
  };
  "memo" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/memo.git";
      rev = "3ecfa4ad20c38ce97fedaed848d08348e92c56d3";
    };

    deps = [
      "base"
      "finalizer"
      "nested-hash"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "thread-utils"
    ];
  };
  "my-cond" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/my-cond";
      rev = "e80a3f2497151750cbe03f8284f0de9dd86706e1";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "sweet-exp-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "sweet-exp"
    ];
  };
  "cKanren" = {
    src = fetchGit {
      url = "https://github.com/calvis/cKanren";
      rev = "8714bdd442ca03dbf5b1d6250904cbc5fd275e68";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "txexpr" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/txexpr.git";
      rev = "4ed851459e97be03418b1e92a5c07174e99bf28f";
    };

    deps = [
      "base"
      "sugar"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
    ];
  };
  "resource-pool" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-resource-pool.git";
      rev = "019ee1c17e5596d2e2e8cd1387811440da2dc95a";
    };
    subpath = "resource-pool";
    deps = [
      "base"
      "resource-pool-lib"
      "rackcheck-lib"
      "racket-doc"
      "rackunit-lib"
      "resource-pool-lib"
      "scribble-lib"
    ];
  };
  "slideshow-latex" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/slideshow-latex";
      rev = "6615f22fe6669d0f96ce98cdaaa4a334e45cb6e3";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "slideshow-lib"
      "racket-doc"
      "scribble-lib"
      "slideshow-doc"
      "planet-doc"
    ];
  };
  "fmt" = {
    src = fetchGit {
      url = "https://github.com/sorawee/fmt.git";
      rev = "7d0a3dfff3a6cacfb59972a56d476556f89a0b1b";
    };

    deps = [
      "pretty-expressive"
      "syntax-color-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "racket-x86_64-linux-natipkg-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/061634ca6b9bc57a15ca98e5447a284e8d77874a/racket-x86_64-linux-natipkg-2.zip";
      sha256 = "1mqpfrmmkr1jb92iq837yx4gl0sadkzxg86hcidzdx6p5sdsq82w";
    };
    deps = [
      "base"
    ];
  };
  "defensive-to-contracts" = {
    src = fetchGit {
      url = "https://github.com/jiujiu1123/defensive-to-contracts.git#main";
      rev = "f64d8cb80a17fb981eb8269ef15f1fdb2f4d190b";
      ref = "main";
    };

    deps = [
      "base"
      "plai"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "request" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-request";
      rev = "d010a60ad227a540f40b4707cd570d101d5530b3";
    };

    deps = [
      "base"
      "fancy-app"
      "rackunit-lib"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "net-doc"
      "rackunit-lib"
      "rackunit-doc"
      "racket-doc"
    ];
  };
  "operational-transformation-demo" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-operational-transformation";
      rev = "685d60091bff0428c2ec3cd8c4f63c8ef8b28de5";
    };
    subpath = "operational-transformation-demo";
    deps = [
      "base"
      "operational-transformation-lib"
      "gui-lib"
    ];
  };
  "racket-graphviz" = {
    src = fetchGit {
      url = "https://github.com/pykello/racket-graphviz.git";
      rev = "fdf1b50c383bd1d9db6738063e2d9f5660439ec1";
    };

    deps = [
      "base"
      "pict-lib"
      "draw-lib"
      "metapict"
      "scribble-lib"
      "pict-doc"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "esterel-rhombus-lib" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "56af2d1bd7697a327e4cd3d0a539101c88820fef";
    };
    subpath = "esterel-rhombus-lib";
    deps = [
      "base"
      "rhombus-prototype"
      "esterel-lib"
    ];
  };
  "scratchy" = {
    src = fetchGit {
      url = "https://github.com/mflatt/scratchy";
      rev = "aef8883759fc962828bf977811697fccf06ef8b0";
      ref = "master";
    };
    deps = [
      "algol60"
      "base"
      "draw-lib"
      "gui-lib"
      "parser-tools-lib"
      "slideshow-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "disassemble" = {
    src = fetchGit {
      url = "https://github.com/samth/disassemble";
      rev = "da196911af96982b4ccbf16e5d5562f3e70885f5";
      ref = "master";
    };
    deps = [
      "base"
      "r6rs-lib"
      "srfi-lib"
      "srfi-lite-lib"
    ];
  };
  "deta-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/deta.git";
      rev = "df9ddc886df098537fa18f1ec775ec591d9a630b";
    };
    subpath = "deta-test";
    deps = [
      "base"
      "at-exp-lib"
      "db-lib"
      "deta-lib"
      "gregor-lib"
      "libsqlite3-x86_64-linux"
      "rackunit-lib"
      "threading-lib"
    ];
  };
  "raco-exe-multitarget" = {
    src = fetchGit {
      url = "https://git.sr.ht/~sschwarzer/raco-exe-multitarget#v0.5.0";
      rev = "64f383a6e7f2b85797e2581cba39d1b8395dcd89";
      ref = "v0.5.0";
    };

    deps = [
      "base"
      "raco-cross-lib"
      "rackunit-lib"
      "al2-test-runner"
    ];
  };
  "fontconfig" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-fontconfig.git";
      rev = "45b406f2957d516fd05a386f2a9e3553cad6c7f2";
    };

    deps = [
      "base"
    ];
  };
  "fairyfloss" = {
    src = fetchGit {
      url = "https://github.com/HeladoDeBrownie/DrRacket-Theme-fairyfloss.git#Stable";
      rev = "967a9db447145f56e178273e930067d36c4668b5";
      ref = "Stable";
    };

    deps = [
      "base"
    ];
  };
  "python" = {
    src = fetchGit {
      url = "https://github.com/pedropramos/PyonR.git#master";
      rev = "16edd14f3950fd5a01f8b0237e023536ef48d17b";
      ref = "master";
    };

    deps = [
      "base"
      "parser-tools"
      "compatibility-lib"
      "srfi-lite-lib"
    ];
  };
  "midi-readwrite" = {
    src = fetchGit {
      url = "https://github.com/jbclements/midi-readwrite";
      rev = "92953cfef013e2c654e8f972b5d55f0da220fae4";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "wy-posn-util" = {
    src = fetchGit {
      url = "https://github.com/maueroats/wy-posn-util.git";
      rev = "9e14307dff6e27903e49c58a964d42cd8a25a14c";
    };

    deps = [
      "htdp-lib"
      "rackunit-lib"
      "base"
      "htdp-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "http-client" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/http-client.git";
      rev = "12ee9f9c3b1a553fa2012ddb60298a760361d4db";
    };

    deps = [
      "base"
      "html-parsing"
      "at-exp-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "stripe-integration" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/stripe-integration.git";
      rev = "8675b005992576a1df07f6687b271be026049eaa";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ffmpeg-i386-win32-3-4" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "e8fb290d38e90800ffa1d105dbb540d28f931807";
      ref = "ffmpeg-3.4";
    };
    subpath = "ffmpeg-i386-win32";
    deps = [
      "base"
    ];
  };
  "suffixtree" = {
    src = fetchGit {
      url = "https://github.com/jbclements/suffixtree.git";
      rev = "b46cb2ecbd0cc33d2c7afc0948b6415f23863c78";
    };

    deps = [
      "base"
      "plot-gui-lib"
      "plot-lib"
      "profile-lib"
      "rackunit-lib"
      "srfi-lite-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "pl" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pl.barzilay.org/pl.zip";
      sha256 = "0lcaj5a4vhphxh7f31janjlhqya84mdc12dchkpxqmrxf8kbyaw9";
    };
    deps = [
      "base"
      "gui-lib"
      "net-lib"
      "drracket"
      "drracket-plugin-lib"
      "string-constants-lib"
      "typed-racket-lib"
      "lazy"
      "compatibility-lib"
      "at-exp-lib"
      "scribble-lib"
      "racket-doc"
      "eli-tester"
    ];
  };
  "syntax-warn-lang" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/syntax-warn";
      rev = "f17fdd3179aeab8e5275a24e7d091d3ca42960a9";
    };
    subpath = "syntax-warn-lang";
    deps = [
      "base"
      "syntax-warn-base"
      "rackunit-lib"
    ];
  };
  "acmsmall" = {
    src = fetchGit {
      url = "https://github.com/stamourv/acmsmall-scribble";
      rev = "15a951e4dff06856862d2a87afd032b983a705be";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "mind-map" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/mind-map.git";
      rev = "8401400f1dbc7956357cd27563b6926f4e429d7c";
    };

    deps = [
      "base"
      "racket-graphviz"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "search-upward" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/search-upward.git";
      rev = "02016d0ca3bdd76d69c9d376ae84936a63c5ca6e";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "mf-apply" = {
    src = fetchGit {
      url = "https://github.com/bennn/mf-apply";
      rev = "e9aaf549dfd9549c833d38a1856c577399f9ef50";
    };

    deps = [
      "base"
      "redex-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "redex-doc"
    ];
  };
  "libsqlite3-aarch64-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsqlite3-aarch64-linux-3.43.1.tar.gz";
      sha256 = "0rz9dr1d5yxmh0pychpwbrsrrsshydpknhwacqvg6jb7g69wyzam";
    };
    deps = [
      "base"
    ];
  };
  "libgit2-x86_64-linux-natipkg" = {
    src = fetchGit {
      url = "https://github.com/jbclements/libgit2-x86_64-linux-natipkg.git";
      rev = "59d0bdba5ffeec24a4e1de05847e4f526227639b";
    };
    subpath = "libgit2-x86_64-linux";
    deps = [
      "libgit2-native-libs"
    ];
  };
  "deinprogramm-signature" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/deinprogramm-signature.zip";
      sha256 = "1ajnniq1qwmb24758h54fs8pwc466q3ajpqpqmzi86pz30f2g2nb";
    };
    deps = [
      "base"
      "compatibility-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "htdp-lib"
      "scheme-lib"
      "srfi-lib"
      "string-constants-lib"
    ];
  };
  "dynamic-ffi" = {
    src = fetchGit {
      url = "https://github.com/dbenoit17/dynamic-ffi.git#release-v1.1";
      rev = "a1ab6473c8911226bd97fffa19b31c0bc641ca12";
      ref = "release-v1.1";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "rackunit-lib"
      "at-exp-lib"
      "scribble-lib"
      "scribble-doc"
    ];
  };
  "mutate-lib" = {
    src = fetchGit {
      url = "https://github.com/llazarek/mutate.git";
      rev = "a6932812d991d4dfcac0fb91deb6948ac4597e45";
      ref = "master";
    };
    subpath = "mutate-lib";
    deps = [
      "base"
      "mutate-lib"
      "at-exp-lib"
    ];
  };
  "errortrace-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/errortrace-test.zip";
      sha256 = "1qypybqh0ajgcs43z41wj37qx9f8jr7gxjbdxfa9yiphq0qka9mi";
    };
    deps = [
      "errortrace-lib"
      "eli-tester"
      "rackunit-lib"
      "base"
      "racket-index"
      "compiler-lib"
      "at-exp-lib"
    ];
  };
  "ts-files" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/ts-files.git";
      rev = "3252c883500641609200b698b73a09f0c96a6042";
    };

    deps = [
    ];
  };
  "list-util" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/list-util.git";
      rev = "e538fd85b38e7bfcaf2aace75ced7d0183e91073";
    };

    deps = [
      "typed-racket-more"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "zo-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/zo-lib.zip";
      sha256 = "03zq8hlg2qvkw0fx1jz2j0vaxk2z7c2p3frmd2w21phdws37x7r9";
    };
    deps = [
      "base"
    ];
  };
  "contract-repl" = {
    src = fetchGit {
      url = "https://github.com/takikawa/contract-repl";
      rev = "5eadd5d87b04178d5574804313238934f3544692";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "flash-card" = {
    src = fetchGit {
      url = "https://github.com/aBlender/flash-card.git";
      rev = "41d66dd1347aa69b744f310067f99834d9087de9";
    };

    deps = [
      "https://github.com/thoughtstem/meta-engine.git?path=meta-engine"
      "threading"
      "image-coloring"
    ];
  };
  "lwc2016" = {
    src = fetchGit {
      url = "https://github.com/dfeltey/lwc2016";
      rev = "8c0a6e11f14af23dcbd72890a51d4fd77350a3d7";
    };

    deps = [
      "2d-lib"
      "base"
      "data-lib"
      "drracket-plugin-lib"
      "drracket-tool-lib"
      "gui-lib"
      "parser-tools-lib"
      "pict-lib"
      "rackunit-lib"
      "scribble-lib"
      "syntax-color-lib"
      "draw-lib"
      "ppict"
      "slideshow-lib"
      "unstable-lib"
      "at-exp-lib"
    ];
  };
  "rparallel" = {
    src = fetchGit {
      url = "https://codeberg.org/montanari/rparallel.git";
      rev = "28a7a131aada4d8d9a7890721a32180a03037624";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "raco-invoke" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/raco-invoke.git";
      rev = "ac654a8ef18df5ad675c1be02f33567a88ec63f7";
    };

    deps = [
      "base"
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "nested-hash" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/nested-hash.git";
      rev = "c562dbe1cf54d8604e56db14526f03c9b6c75b5b";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "egal" = {
    src = fetchGit {
      url = "https://github.com/samth/egal";
      rev = "ea395262430ee0c5dffc264a92b0ad4d1a1a9bc8";
    };

    deps = [
      "base"
    ];
  };
  "quote-bad" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/quote-bad";
      rev = "251c2ed6f6cfd24b733ea7e0d41ff44c63cb3b2d";
    };

    deps = [
      "base"
      "pconvert-lib"
      "unstable-lib"
      "hygienic-quote-lang"
      "rackunit-lib"
      "unstable-macro-testing-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "describe" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/describe.git";
      rev = "6489f1b499cbfcda74ced18555c5c2ca255921e5";
    };

    deps = [
      "base"
      "compatibility-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "zippers" = {
    src = fetchGit {
      url = "https://github.com/david-christiansen/racket-zippers";
      rev = "ab11342e1359b0844f8f19f801cdd02d697f7ec3";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "json-lexer-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-json-lexer.git";
      rev = "d3b61463971d495d3b7ae834f2c3256faf2ed593";
    };
    subpath = "json-lexer-lib";
    deps = [
      "base"
    ];
  };
  "fragments-first" = {
    src = fetchGit {
      url = "https://github.com/srfoster/fragments-first.git";
      rev = "f9a6bec8a8ec537874d04c05c2a6d27b0af11e38";
    };

    deps = [
      "base"
      "fragments"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "cbor" = {
    src = fetchGit {
      url = "https://git.sr.ht/~williewillus/racket-rfc8949";
      rev = "d7145a756be92480ce74178bf15f1352c2bb67dd";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "macro-debugger" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/macro-debugger.zip";
      sha256 = "0nspfvb74lpqiaxl353mll1sdknx1al1q654jik71r96zp67b90z";
    };
    deps = [
      "base"
      "class-iop-lib"
      "compatibility-lib"
      "data-lib"
      "gui-lib"
      "images-lib"
      "images-gui-lib"
      "parser-tools-lib"
      "macro-debugger-text-lib"
      "snip-lib"
      "wxme-lib"
      "draw-lib"
      "racket-index"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "mvar" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-mvar.git";
      rev = "aac2876805fd79257b4076b750f5b8a16667f595";
    };
    subpath = "mvar";
    deps = [
      "base"
      "mvar-doc"
      "mvar-lib"
    ];
  };
  "raco-cross" = {
    src = fetchGit {
      url = "https://github.com/racket/raco-cross.git";
      rev = "f3eb98fdf1069899d2e82d9e87146fbe8f92766b";
    };
    subpath = "raco-cross";
    deps = [
      "raco-cross-lib"
      "raco-cross-doc"
    ];
  };
  "syntax-warn-doc" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/syntax-warn";
      rev = "f17fdd3179aeab8e5275a24e7d091d3ca42960a9";
    };
    subpath = "syntax-warn-doc";
    deps = [
      "syntax-warn-base"
      "scribble-lib"
      "scribble-text-lib"
      "base"
      "racket-doc"
      "scribble-lib"
      "syntax-warn-base"
    ];
  };
  "gui-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-x86_64-macosx.zip";
      sha256 = "1znb5x3n5kl8wj4fq41abkfm68rhsl2ki1pyx3ghnkj43z3avcjm";
    };
    deps = [
      "base"
    ];
  };
  "parser-tools" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/parser-tools.zip";
      sha256 = "0r7bkvfh0q1af1hrzws7g41d3c9gl99cf1zanhbryjsz62ij7k98";
    };
    deps = [
      "parser-tools-lib"
      "parser-tools-doc"
    ];
  };
  "draw-i386-macosx-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/5cf83f11c88b91bcc22dbd23ef10cb3e065feaa1/draw-i386-macosx-2.zip";
      sha256 = "0fjkdd0bsh67jh8r5s9zwx7sx3jn7kh0z59w90ngvw4d4r36li4l";
    };
    deps = [
      "base"
    ];
  };
  "rackunit-grade" = {
    src = fetchGit {
      url = "https://github.com/ifigueroap/racket-rackunit-grade";
      rev = "92526d7ced3b4cf7b5323752f20d8f36752e69b6";
    };

    deps = [
      "base"
      "rackunit"
      "doc-coverage"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "readline-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/readline-doc.zip";
      sha256 = "0ij2j3alyg3qggccjr5z6gsgnljd1qw1np3c1q5dbxs34hm1alwb";
    };
    deps = [
      "base"
      "scribble-lib"
      "readline-lib"
      "racket-doc"
    ];
  };
  "profile-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-doc.zip";
      sha256 = "1wr71rg1ivkm99n4plmws6n1swgnrr9hrars5xlxcci3id0w5h1p";
    };
    deps = [
      "base"
      "scribble-lib"
      "profile-lib"
      "errortrace-doc"
      "errortrace-lib"
      "racket-doc"
    ];
  };
  "unix-signals" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-unix-signals";
      rev = "d51fb7eb7a36c10369fbcbde09f11af66f121870";
    };

    deps = [
      "base"
      "dynext-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "syncvar-lib" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-syncvar.git";
      rev = "47d1694a8ab17c292999d53f1d7f30e81e47dbce";
      ref = "release";
    };
    subpath = "syncvar-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "draw-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-test.zip";
      sha256 = "1jpws7xv4p9a84jh4dlsib89050hxihij3fbcc2r08a4211brh36";
    };
    deps = [
      "base"
      "racket-index"
      "scheme-lib"
      "draw-lib"
      "racket-test"
      "sgl"
      "gui-lib"
      "rackunit-lib"
      "pconvert-lib"
      "compatibility-lib"
      "sandbox-lib"
    ];
  };
  "org-tools" = {
    src = fetchGit {
      url = "https://github.com/tgbugs/laundry.git";
      rev = "5f08dbadd1b9ec9477340a145fc6fe2a459d3745";
      ref = "master";
    };
    subpath = "org-tools";
    deps = [
      "draw-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "base"
      "org"
    ];
  };
  "racket-bricks" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-blocks.git";
      rev = "e3653cac8500883e91feefd6462cb413751d0c16";
    };
    subpath = "racket-bricks";
    deps = [
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "syntax-color" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color.zip";
      sha256 = "02lkdyz4vc2bgddbs950yp2s2kfx0dzkg3mg5h5pnknnqafmndgv";
    };
    deps = [
      "syntax-color-lib"
      "syntax-color-doc"
    ];
  };
  "towers-server" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/towers.git";
      rev = "e6777c9259ab3dc687d3614d783316a2490438f2";
    };
    subpath = "towers-server";
    deps = [
      "base"
      "db-lib"
      "web-server-lib"
      "bazaar"
      "towers-lib"
    ];
  };
  "automata-doc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/automata";
      rev = "6abe851b83b18fcdcb8f2b19ab87cdabc90c71ce";
    };
    subpath = "automata-doc";
    deps = [
      "base"
      "automata-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "simple-qr" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-simple-qr.git";
      rev = "392f58a7eb9f49e70aba583bb0d80a126634a597";
    };

    deps = [
      "base"
      "rackunit-lib"
      "draw-lib"
      "draw-doc"
      "racket-doc"
      "scribble-lib"
      "reed-solomon"
      "simple-svg"
    ];
  };
  "gui-win32-x86_64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-win32-x86_64.zip";
      sha256 = "165nng55g3l0jwkxpxcq4p1947418hpgzici5sddkmml8m2hvqbb";
    };
    deps = [
      "base"
    ];
  };
  "icfp2017-minikanren" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/icfp2017-artifact-auas7pp.git";
      rev = "ff9eca58487ec393fc2d8580e5d1aafedcd20808";
      ref = "racket";
    };
    subpath = "src";
    deps = [
      "base"
      "r6rs-lib"
    ];
  };
  "typed-graph" = {
    src = fetchGit {
      url = "https://git.marvid.fr/scolobb/typed-graph.git#master";
      rev = "330a3ae753f4e9722bc9e994ea4b9b1820660307";
      ref = "master";
    };

    deps = [
      "base"
      "graph-lib"
      "typed-racket-lib"
      "gen-queue-lib"
      "math-lib"
      "typed-racket-doc"
      "racket-doc"
      "scribble-lib"
      "graph-doc"
      "gen-queue-lib"
      "math-doc"
      "rackunit-typed"
    ];
  };
  "unstable-2d" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-2d";
      rev = "b623df87d732171833103e05b3e76d3ce79f1047";
    };

    deps = [
      "base"
      "2d-lib"
    ];
  };
  "parser-combinator" = {
    src = fetchGit {
      url = "https://github.com/nixpulvis/parser-combinator.git";
      rev = "9635c0479c1841e122a75faa35d1d76333ef3cb6";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "htdp-lib"
    ];
  };
  "simple-oauth2" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/simple-oauth2.git";
      rev = "b8cb40511f64dcb274e17957e6fc9ab4c8a6cbea";
    };

    deps = [
      "base"
      "crypto-lib"
      "dali"
      "net-jwt"
      "threading"
      "web-server-lib"
      "rackunit-lib"
      "rackunit-spec"
      "scribble-lib"
      "racket-doc"
      "racket-index"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "aspell" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-aspell.git#master";
      rev = "e81131df722fd37d9144bd2163f495efecf7883b";
      ref = "master";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "medic" = {
    src = fetchGit {
      url = "https://github.com/lixiangqi/medic";
      rev = "0920090d3c77d6873b8481841622a5f2d13a732c";
    };

    deps = [
      "at-exp-lib"
      "base"
      "scheme-lib"
      "compatibility-lib"
      "gui-lib"
      "images-lib"
      "pict-lib"
      "draw-lib"
      "racket-doc"
      "scribble-lib"
      "redex-pict-lib"
    ];
  };
  "req-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-req.git";
      rev = "4826c86164a2713be161a7e9a8e952c042ef5f75";
    };
    subpath = "src/req-lib";
    deps = [
      "base"
      "colorize"
      "threading-lib"
      "upi-lib"
    ];
  };
  "mm" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/mm";
      rev = "6160ca48a0f45617e98709ff5bd31e91dbdaebca";
    };

    deps = [
      "base"
      "gui-lib"
      "data-lib"
      "rackunit-chk"
    ];
  };
  "scapegoat-tree" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-scapegoat-tree.git#master";
      rev = "a1d55b64b7a95eed5a12c1896076e36873448378";
      ref = "master";
    };

    deps = [
      "data-lib"
      "base"
      "data-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "numformat-old" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/numformat-old.zip";
      sha256 = "05zw2gs9bxlg70f4zji73bli49hgmkmd37b69c2x6qrjnbfk88ac";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "tesseract" = {
    src = fetchGit {
      url = "https://github.com/lasfter/tesseracket";
      rev = "ef1da2619bf4814ff75a840b8a3e42eaf10cfb01";
    };

    deps = [
      "base"
    ];
  };
  "lathe-comforts-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-comforts-for-racket.git";
      rev = "43829a1613140d6b12ee1d078ea1d08f9f0c1827";
      ref = "main";
    };
    subpath = "lathe-comforts-test";
    deps = [
      "base"
      "lathe-comforts-lib"
      "parendown-lib"
      "rackunit-lib"
    ];
  };
  "seq-test" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/seq.git";
      rev = "0ff053ae869cbeebc13c6573fda28d4e9242b134";
      ref = "main";
    };
    subpath = "seq-test";
    deps = [
      "base"
      "seq-lib"
      "collections-lib"
      "rackunit-lib"
      "relation-lib"
    ];
  };
  "scribble-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-test.zip";
      sha256 = "0qr3zwxm845n9gdr9mjaas2wmp8ajdppc1jmbccvk4yjb84vg3k4";
    };
    deps = [
      "at-exp-lib"
      "base"
      "eli-tester"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-doc"
      "scribble-lib"
      "scribble-text-lib"
      "racket-index"
    ];
  };
  "redis-rkt" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-redis.git";
      rev = "df397e05f6e65e3d12c2f1040bd716089644302c";
    };
    subpath = "redis";
    deps = [
      "base"
      "redis-doc"
      "redis-lib"
    ];
  };
  "colon-match" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/colon-match";
      rev = "e5799f8e6f523cd252ca64beb01e1ae9e673dc34";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
    ];
  };
  "fixw" = {
    src = fetchGit {
      url = "https://github.com/6cdh/racket-fixw";
      rev = "2c7b2bd1e973491b6d0021264185aac8440fe3a8";
    };

    deps = [
      "base"
      "syntax-color"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "crystal" = {
    src = fetchGit {
      url = "https://gitlab.com/spritely/crystal.git";
      rev = "70274401f177b1001ea15169c9032e466bf8efc9";
    };
    subpath = "crystal";
    deps = [
      "base"
      "crypto-lib"
      "csexp"
      "web-server-lib"
      "magenc"
      "html-writing"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "set-exp" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/set-exp";
      rev = "19c898f13278efee5399de7307fc95d0f53ee82d";
    };

    deps = [
      "base"
      "rackunit-lib"
      "doc-coverage"
      "cover"
      "doc-coverage"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "scribble-frog-helper" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/scribble-frog-helper.git";
      rev = "bc9f6579c6cdbd02e9bf6561bf7839df8124097b";
    };

    deps = [
      "scribble-lib"
      "base"
      "gregor"
      "timable"
      "frog"
      "at-exp-lib"
      "scribble-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "r6rs-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-doc.zip";
      sha256 = "0g764bm4q245r3s23c9nrigzwbpsnqvrnbja5k30g3mqn7487y8g";
    };
    deps = [
      "racket-index"
      "r5rs-doc"
      "base"
      "scribble-lib"
      "r6rs-lib"
      "racket-doc"
    ];
  };
  "wavelet-transform-haar-1d" = {
    src = fetchGit {
      url = "https://github.com/jbclements/wavelet-transform-haar-1d";
      rev = "a24d96252701f80dbd382fb4a0dccaf2d19160b1";
    };

    deps = [
      "base"
      "math-lib"
      "plot-gui-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "libzstd" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-libzstd.git";
      rev = "51807758823abe6a1ed41157ea206a241c3a0ec4";
    };
    subpath = "libzstd";
    deps = [
      "base"
      "libzstd-aarch64-linux"
      "libzstd-aarch64-macosx"
      "libzstd-x86_64-linux"
      "libzstd-x86_64-macosx"
      "libzstd-i386-win32"
      "libzstd-x86_64-win32"
    ];
  };
  "drracket-cmdline-args" = {
    src = fetchGit {
      url = "https://github.com/sorawee/drracket-cmdline-args.git";
      rev = "ec94df27fa2936e55eee0f2b2544365962c4d61a";
    };

    deps = [
      "drracket-plugin-lib"
      "gui-lib"
      "shlex"
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "data-red-black" = {
    src = fetchGit {
      url = "https://github.com/dyoo/data-red-black";
      rev = "d473dd82c5406c8954f70060fe3764bf72d92a90";
      ref = "master";
    };
    deps = [
      "base"
      "data-lib"
      "data-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "lazytree" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/lazytree.git";
      rev = "96fde82bd59b60f8c1e006669efdb733168da7e4";
    };

    deps = [
      "base"
      "collections-lib"
      "relation"
      "social-contract"
      "scribble-lib"
      "scribble-abbrevs"
      "racket-doc"
      "collections-doc"
      "functional-doc"
      "rackunit-lib"
      "pict-lib"
      "cover"
      "cover-coveralls"
      "sandbox-lib"
    ];
  };
  "remote-shell" = {
    src = fetchGit {
      url = "https://github.com/racket/remote-shell/";
      rev = "6ddcb78eea71cf5a87c83f5a0229edfb16620c28";
    };
    subpath = "remote-shell";
    deps = [
      "remote-shell-lib"
      "remote-shell-doc"
    ];
  };
  "draw-win32-x86_64-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-win32-x86_64-3.zip";
      sha256 = "17gy4ng1y1sqacll780crm9cjklc607b77sxn07annm86s212k9s";
    };
    deps = [
      "base"
    ];
  };
  "serial" = {
    src = fetchGit {
      url = "https://github.com/BartAdv/racket-serial";
      rev = "47cb5ed979cdcd9481001aeb559e82c0d96bb42a";
    };

    deps = [
      "base"
      "termios"
    ];
  };
  "define-match-spread-out" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/define-match-spread-out";
      rev = "9cba18f354fc03a84e2c26d5ae6cdcdc36d4d960";
    };

    deps = [
      "base"
      "unstable-lib"
      "defpat"
      "rackunit-lib"
      "scribble-lib"
      "scribble-code-examples"
      "racket-doc"
    ];
  };
  "ec" = {
    src = fetchGit {
      url = "https://github.com/marckn0x/ec.git";
      rev = "81d6fbe1852d3b20cffa651e6062dd1aca146018";
    };

    deps = [
      "base"
      "math-lib"
      "binaryio"
      "typed-racket-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "crypto-lib"
      "rackunit-typed"
    ];
  };
  "persistent-union-find" = {
    src = fetchGit {
      url = "https://github.com/samth/persistent-union-find";
      rev = "f95278e362550a59dae327bd15f9f609009de6d0";
    };

    deps = [
      "base"
      "persistent-array"
      "r6rs-lib"
    ];
  };
  "base58check" = {
    src = fetchGit {
      url = "https://github.com/MohamedLEGH/base58check.git";
      rev = "17defed1f2ef442f02e030537f0c9ae7eaf641a5";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "spaceship-game-demo" = {
    src = fetchGit {
      url = "https://github.com/srfoster/game-engine-demos.git";
      rev = "614d1c5fb871f17e4008a26cb42542800457576b";
    };
    subpath = "spaceship-game-demo";
    deps = [
      "game-engine-demos-common"
    ];
  };
  "traces" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/traces.git";
      rev = "de08fadc1b1d73362c7b6d83f0dd9a4c9dc36743";
    };
    subpath = "traces";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "redex-gui-lib"
    ];
  };
  "racket-where" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-where.git";
      rev = "a215e25d126d1b6602005b1f760550db9c7aaeb2";
    };
    subpath = "src";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "slideshow-exe" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-exe.zip";
      sha256 = "0bni2vg6lpv0xbdllwa4jvn4ncl57fvyf5bclqvr8ik7nsk269k5";
    };
    deps = [
      "base"
      "compatibility-lib"
      "gui-lib"
      "pict-lib"
      "slideshow-lib"
    ];
  };
  "russia-phonologie" = {
    src = fetchGit {
      url = "https://github.com/.git";
      rev = "";
    };

    deps = [
    ];
  };
  "profile-flame-graph" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-profile-flamegraph";
      rev = "1364a084256765800e83d93b0db23b2cc801d161";
    };

    deps = [
      "base"
      "pict"
      "profile-lib"
      "net-lib"
      "data-lib"
      "scribble-lib"
      "racket-doc"
      "profile-doc"
      "net-doc"
    ];
  };
  "qi" = {
    src = fetchGit {
      url = "https://github.com/drym-org/qi.git";
      rev = "548bc76668d0dcd84cf15eddab3def6dd55e7656";
      ref = "main";
    };
    subpath = "qi";
    deps = [
      "base"
      "qi-lib"
      "qi-doc"
      "qi-test"
      "qi-probe"
      "Qi-Quickscripts"
    ];
  };
  "gtp-checkup" = {
    src = fetchGit {
      url = "https://github.com/utahplt/gtp-checkup.git";
      rev = "5e8142f0be419a0b6b0e9333d3081f1392e222be";
    };

    deps = [
      "base"
      "basedir"
      "data-lib"
      "draw-lib"
      "gregor"
      "gtp-util"
      "math-lib"
      "memoize"
      "pict-lib"
      "plot-lib"
      "rackunit-lib"
      "require-typed-check"
      "sandbox-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "zo-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket-doc"
      "pict-abbrevs"
    ];
  };
  "koyo-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo.git";
      rev = "9de9f3a26ffb8da6256c5191ed111ae8f0dbb514";
    };
    subpath = "koyo-lib";
    deps = [
      "base"
      "compatibility-lib"
      "component-lib"
      "crontab-lib"
      "crypto-lib"
      "db-lib"
      "errortrace-lib"
      "gregor-lib"
      "html-lib"
      "mime-type-lib"
      "net-lib"
      "raco-invoke"
      "srfi-lite-lib"
      "unix-socket-lib"
      "web-server-lib"
      "at-exp-lib"
    ];
  };
  "ffi-definer-convention" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-ffi-definer-convention";
      rev = "5b6a361adeb1f079b9fabc80055ce592152a9d9a";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "_-exp" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/_-exp.git";
      rev = "7bc80bb0137c92effc29f5d01bbc6a14034712eb";
    };

    deps = [
      "base"
      "at-exp-lib"
      "syntax-color-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "adjutor"
    ];
  };
  "pict" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict.zip";
      sha256 = "0b40zlgv1r3z9l94hm8812k98bayjmrf97y5478lmkvv0m0ig74m";
    };
    deps = [
      "pict-lib"
      "pict-doc"
    ];
  };
  "web-galaxy-test" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/web-galaxy.git";
      rev = "d484efe7422df0390d291f74c71cebf6006ab87a";
    };
    subpath = "web-galaxy-test";
    deps = [
      "base"
      "rackunit-lib"
      "web-galaxy-lib"
    ];
  };
  "scribble-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-lib.zip";
      sha256 = "08jyp8xr55rm73l0xh36xv89plsfhwsd85hfjjw2pipyjjc813hg";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "scribble-text-lib"
      "scribble-html-lib"
      "planet-lib"
      "net-lib"
      "at-exp-lib"
      "draw-lib"
      "syntax-color-lib"
      "sandbox-lib"
      "typed-racket-lib"
      "rackunit-lib"
    ];
  };
  "cadnr" = {
    src = fetchGit {
      url = "https://github.com/eutro/cadnr.git";
      rev = "88b825fc363000c33de253bee7adb884b3773bf1";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "vdb-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-vdb.git";
      rev = "af864c8f711114a20f3fde23c48d581248e27e05";
    };
    subpath = "src/vdb-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "pmsf-depend"
      "pmsf-doc"
      "pmsf-iuse"
      "pmsf-keywords"
      "pmsf-slot"
      "threading-lib"
      "typed-pmsf"
      "ziptie-git"
      "vdb-lib"
    ];
  };
  "define-attributes-lib" = {
    src = fetchGit {
      url = "https://github.com/SimonLSchlee/define-attributes.git";
      rev = "57bffa14f11a604a7bf34a7dbc16f56f5ebf638c";
      ref = "main";
    };
    subpath = "define-attributes-lib";
    deps = [
      "base"
    ];
  };
  "colors" = {
    src = fetchGit {
      url = "https://github.com/florence/colors.git";
      rev = "103aa2aa71310b0c7a83b33714593f01ce24beab";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "racket-doc"
      "scribble-lib"
      "debug"
      "rackunit-lib"
    ];
  };
  "rtlv" = {
    src = fetchGit {
      url = "https://github.com/anishathalye/rtlv.git";
      rev = "dc7c990411ed419dc01de0650891741256f390a5";
    };

    deps = [
      "racket"
      "rosette"
      "knox"
      "rackunit-lib"
      "base"
    ];
  };
  "data-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-doc.zip";
      sha256 = "1ar0l44k7shnf7bdfz7vk0v6ak6dyxg1anm0fqgvfc2gd06p1g8w";
    };
    deps = [
      "base"
      "data-lib"
      "data-enumerate-lib"
      "racket-doc"
      "scribble-lib"
      "plot-lib"
      "math-doc"
      "math-lib"
      "pict-doc"
      "pict-lib"
    ];
  };
  "main-distribution-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/main-distribution-test.zip";
      sha256 = "1lvhysnrvp08jlvn20icr898qdka3f9kz3hc8izw2xc9fc9j9jim";
    };
    deps = [
      "racket-test"
      "racket-test-extra"
      "rackunit-test"
      "draw-test"
      "gui-test"
      "db-test"
      "htdp-test"
      "html-test"
      "redex-test"
      "drracket-test"
      "quickscript-test"
      "profile-test"
      "srfi-test"
      "errortrace-test"
      "r6rs-test"
      "web-server-test"
      "typed-racket-test"
      "xrepl-test"
      "scribble-test"
      "compiler-test"
      "compatibility-test"
      "data-test"
      "net-test"
      "net-cookies-test"
      "pconvert-test"
      "planet-test"
      "syntax-color-test"
      "images-test"
      "plot-test"
      "pict-test"
      "pict-snip-test"
      "math-test"
      "racket-benchmarks"
      "drracket-tool-test"
      "2d-test"
      "option-contract-test"
      "sasl-test"
      "simple-tree-text-markup-test"
      "wxme-test"
      "unix-socket-test"
    ];
  };
  "beautiful-racket-demo" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/beautiful-racket.git";
      rev = "b0d133f4ba4149ea506d8b0dbd3845c915efdd06";
    };
    subpath = "beautiful-racket-demo";
    deps = [
      "base"
      "sugar"
      "beautiful-racket-lib"
      "rackunit-lib"
      "brag"
      "srfi-lib"
      "draw-lib"
      "syntax-color-lib"
      "gui-lib"
      "math-lib"
      "at-exp-lib"
    ];
  };
  "parsack-doc" = {
    src = fetchGit {
      url = "https://github.com/stchang/parsack.git";
      rev = "57b21873e8e3eb7ffbdfa253251c3c27a66723b1";
      ref = "master";
    };
    subpath = "parsack-doc";
    deps = [
      "base"
      "parsack-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "message-loop" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/message-loop.git#main";
      rev = "5e654cbde55712ec8d914622592c577fe3f7283c";
      ref = "main";
    };

    deps = [
      "base"
      "rx-tx-async-channel"
      "struct-plus-plus"
      "thread-with-id"
      "scribble-lib"
      "racket-doc"
      "test-more"
    ];
  };
  "srfi" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi.zip";
      sha256 = "02vi9vr8fxvfr89b2xq9cr7n2jwpc23x9kw4qqq8397c2mf62m47";
    };
    deps = [
      "srfi-lib"
      "srfi-doc"
    ];
  };
  "draw-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/acf633568307f6865eb1377a23a3196c46ba1bcf/draw-x86_64-macosx.zip";
      sha256 = "03l97apy1x70i2v5l1yq7jzv7yxfj1ca7x27sasjjlzzsida7952";
    };
    deps = [
      "base"
    ];
  };
  "ppict-slide-grid" = {
    src = fetchGit {
      url = "https://github.com/takikawa/ppict-slide-grid";
      rev = "1e992183dbfc695882bb612bb5b8b32515adeee2";
    };

    deps = [
      "base"
      "pict-lib"
      "slideshow-lib"
      "unstable-lib"
    ];
  };
  "cuecore" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-cuecore";
      rev = "826b05916b9f84601ef405ee36e6b9a843c42ea2";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "mordae"
      "racket-doc"
      "typed-racket-doc"
      "typed-racket-lib"
    ];
  };
  "lux-charterm" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/lux-charterm";
      rev = "8d3d7c39c4cf2160f3912fea34996fe0177c78d7";
    };

    deps = [
      "lux"
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "chief" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-chief.git";
      rev = "3553d3a38cf615a1c39ff57f1cfcb3b8bacd2afa";
    };
    subpath = "chief";
    deps = [
      "base"
      "gregor-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "class-iop-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/class-iop-lib.zip";
      sha256 = "02qfwcr80srh59f8r7ays9lqn52zs5w1pqymp9dw1li7ahr2fqb5";
    };
    deps = [
      "base"
    ];
  };
  "gillette-doc" = {
    src = fetchGit {
      url = "https://github.com/jessealama/gillette.git";
      rev = "0f574df183aa91762697f1bce3961c3d425896ea";
    };
    subpath = "gillette-doc";
    deps = [
      "base"
      "gillette-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "aful" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/aful.git#unhygienic";
      rev = "e7f7270bdb70708f58bbda27ffad07509085e5fe";
      ref = "unhygienic";
    };

    deps = [
      "base"
      "hygienic-reader-extension"
      "at-exp-lib"
      "rackjure"
      "rackunit-lib"
      "phc-toolkit"
      "scribble-enhanced"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "scribble-code-examples"
      "scribble-doc"
    ];
  };
  "turnstile-test" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "turnstile-test";
    deps = [
      "base"
      "turnstile-lib"
      "turnstile-example"
      "rackunit-macrotypes-lib"
    ];
  };
  "marionette" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/marionette.git";
      rev = "daac17634775dc516611de6ea1e4c43776d64405";
    };
    subpath = "marionette";
    deps = [
      "marionette-doc"
      "marionette-lib"
    ];
  };
  "soundex" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/soundex.zip";
      sha256 = "14fi8v6csswqdfdiv1gb0kvhfalsbgjb6prrs1w4n91paa8m9iks";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "table-panel" = {
    src = fetchGit {
      url = "https://github.com/spdegabrielle/table-panel";
      rev = "e5994d6b0e11bae486679af2bcfa38442f0e5093";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui"
      "srfi-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "htdf" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/htdf.git#main";
      rev = "a65a9ff49685dc2183e6334cba8d6acfdb644d2f";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
      "rackunit-lib"
    ];
  };
  "messagepack-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-messagepack.git";
      rev = "53074c338fa99102ac9c036311fba5c04f7e9049";
    };
    subpath = "messagepack-lib";
    deps = [
      "base"
    ];
  };
  "frog" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/frog.git";
      rev = "525c2298f54ffa9fd3b9c44e3a23d4df6aab9278";
    };

    deps = [
      "base"
      "find-parent-dir"
      "html-lib"
      "markdown"
      "racket-index"
      "reprovide-lang-lib"
      "scribble-lib"
      "scribble-text-lib"
      "srfi-lite-lib"
      "threading-lib"
      "web-server-lib"
      "at-exp-lib"
      "net-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-doc"
      "scribble-text-lib"
      "threading-doc"
      "web-server-doc"
    ];
  };
  "peg-parser" = {
    src = fetchGit {
      url = "https://github.com/lives-group/peg-parser.git#main";
      rev = "4ed3812995c37eaa973bc06b9ded01f9794c1260";
      ref = "main";
    };

    deps = [
      "base"
      "parser-tools-lib"
      "rackcheck"
      "peg-gen"
      "rackunit-lib"
      "typed-racket-datatype"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackcheck"
      "rackcheck-lib"
      "rackunit-lib"
      "typed-racket-datatype"
      "typed-racket-lib"
      "peg-gen"
    ];
  };
  "rosette" = {
    src = fetchGit {
      url = "https://github.com/emina/rosette";
      rev = "edf682df5e70420fcb31f71a5791c17875655bd2";
    };

    deps = [
      "custom-load"
      "sandbox-lib"
      "scribble-lib"
      "racket"
      "r6rs-lib"
      "rfc6455"
      "net-lib"
      "web-server-lib"
      "rackunit-lib"
      "slideshow-lib"
      "gui-lib"
      "base"
      "rackunit-doc"
      "draw-lib"
      "errortrace-lib"
      "pict-lib"
      "pict-doc"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "errortrace-doc"
    ];
  };
  "text-block" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/text-block.git";
      rev = "c34cd8ec379638f7dce7c523997272082b6f52ab";
    };

    deps = [
      "define2"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
    ];
  };
  "irregex" = {
    src = fetchGit {
      url = "https://github.com/jbclements/irregex.git#racket";
      rev = "4836ccd6b7febb98270822c9993f2e44ed9b16e4";
      ref = "racket";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ecmascript" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/ecmascript";
      rev = "69fcfa42856ea799ff9d9d63a60eaf1b1783fe50";
    };

    deps = [
      "base"
      "math-lib"
      "parser-tools-lib"
      "ragg"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "satore" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/satore.git";
      rev = "e56983d7a91a031e909d643489334ec394f06e4e";
    };

    deps = [
      "bazaar"
      "data-lib"
      "define2"
      "global"
      "math-lib"
      "text-table"
      "base"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "SMathML" = {
    src = fetchGit {
      url = "https://github.com/alpha-beta-eta/SMathML.git";
      rev = "5e2a6b1d9b5ea4cdb1bc487873d07414b93a8d06";
    };

    deps = [
      "base"
    ];
  };
  "unstable-list-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-list-lib";
      rev = "0b3e390a25d5347c3e3b6e08b605b2865f0fae10";
    };

    deps = [
      "base"
      "class-iop-lib"
    ];
  };
  "maelstrom" = {
    src = fetchGit {
      url = "https://github.com/nikhilm/gossip-glommers.git";
      rev = "150c33901ca1f0b123911508a24c3ed091f8f9e5";
      ref = "master";
    };
    subpath = "maelstrom";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "drbayes" = {
    src = fetchGit {
      url = "https://github.com/ntoronto/drbayes";
      rev = "e59eb7c7867118bf4c77ca903e133c7530e612a3";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "math-lib"
      "images-lib"
      "plot-gui-lib"
      "plot-lib"
      "profile-lib"
    ];
  };
  "lens" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/lens";
      rev = "733db7744921409b69ddc78ae5b23ffaa6b91e37";
    };
    subpath = "lens";
    deps = [
      "base"
      "lens-common"
      "lens-data"
      "lens-lib"
      "lens-unstable"
      "lens-doc"
    ];
  };
  "for-helpers" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/for-helpers.git";
      rev = "3753dbce905e5c115e8107a9411249a12a06fd64";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
    ];
  };
  "typed-compose" = {
    src = fetchGit {
      url = "https://git.marvid.fr/scolobb/typed-compose.git";
      rev = "b8363160a23ad7f9684c69ee9bc1cf659b7971db";
    };

    deps = [
      "typed-racket-lib"
      "base"
      "typed-racket-doc"
      "racket-doc"
      "rackunit-typed"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "slideshow-pretty" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/slideshow-pretty";
      rev = "021378757a40163f8e84efe616eb17036eeb2a4f";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "slideshow-lib"
      "slideshow-latex"
      "racket-doc"
      "scribble-lib"
      "slideshow-doc"
    ];
  };
  "operational-transformation" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-operational-transformation";
      rev = "685d60091bff0428c2ec3cd8c4f63c8ef8b28de5";
    };
    subpath = "operational-transformation";
    deps = [
      "base"
      "operational-transformation-demo"
      "operational-transformation-lib"
      "profile-lib"
    ];
  };
  "curly-fn-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-curly-fn";
      rev = "d64cd71d5b386be85f5979edae6f6b6469a4df86";
    };
    subpath = "curly-fn-doc";
    deps = [
      "base"
      "curly-fn-lib"
      "namespaced-transformer-doc"
      "namespaced-transformer-lib"
      "racket-doc"
      "scribble-code-examples"
      "scribble-lib"
    ];
  };
  "fast-sequence" = {
    src = fetchGit {
      url = "https://github.com/abolotina/fast-sequence-combinators.git";
      rev = "d5144e2d6f73f441937a77439f80b79000768cd9";
      ref = "stable";
    };
    subpath = "fast-sequence";
    deps = [
      "base"
      "fast-sequence-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "sgl" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sgl.zip";
      sha256 = "01ncgxmp0jgw9dp15jgb5a379z6pnmdw6587lkxwbnnvamfggmd8";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "gui-lib"
      "draw-doc"
      "gui-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "net-pem" = {
    src = fetchGit {
      url = "https://github.com/themetaschemer/net-pem.git";
      rev = "6a2add18192a24118b13d0e652d808c270dd1890";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "alpaca" = {
    src = fetchGit {
      url = "https://github.com/traido/alpaca-api-rkt.git";
      rev = "24e0cebc55d5d82262902a47d2f323f6ea4045d4";
    };

    deps = [
    ];
  };
  "google" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-google";
      rev = "236b1fb8bdd0975bf2ce820f6277927c7bc25635";
      ref = "master";
    };
    deps = [
      "base"
      "gui-lib"
      "net-lib"
      "rackunit-lib"
    ];
  };
  "http123" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-http123.git";
      rev = "2f17657c1ab058ec1b6c04f2c964cae42b54833e";
    };
    subpath = "http123";
    deps = [
      "base"
      "http123-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "net-doc"
      "net-cookies-lib"
      "net-cookies-doc"
      "web-server-lib"
    ];
  };
  "unstable-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable/";
      rev = "99149bf1a6a82b2309cc04e363a87ed36972b64b";
    };
    subpath = "unstable-doc";
    deps = [
      "base"
      "rackunit-doc"
      "scheme-lib"
      "at-exp-lib"
      "compatibility-lib"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "slideshow-lib"
      "typed-racket-lib"
      "unstable-contract-lib"
      "unstable-debug-lib"
      "unstable-lib"
      "unstable-list-lib"
      "unstable-macro-testing-lib"
      "unstable-options-lib"
      "unstable-parameter-group-lib"
      "unstable-pretty-lib"
      "unstable-2d"
      "draw-doc"
      "gui-doc"
      "pict-doc"
      "scribble-doc"
      "slideshow-doc"
      "class-iop-doc"
      "automata-doc"
      "markparam-doc"
      "temp-c-doc"
      "unix-socket-doc"
      "2d-doc"
      "option-contract-doc"
    ];
  };
  "lang-slide" = {
    src = fetchGit {
      url = "https://github.com/samth/lang-slide";
      rev = "ea86af49c3d7fe2fe0e80c1c9488b3447a0efbdd";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "scheme-lib"
      "slideshow-lib"
      "unstable-lib"
      "scribble-lib"
      "racket-doc"
      "pict-doc"
    ];
  };
  "typed-peg" = {
    src = fetchGit {
      url = "https://github.com/lives-group/typed-peg.git#master";
      rev = "2a1002fa94cefb4416f9a3c29f5af1f2fd239d36";
      ref = "master";
    };

    deps = [
      "base"
      "pprint"
      "peg-gen"
      "rackcheck"
      "parser-tools-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ricoeur-kernel" = {
    src = fetchGit {
      url = "https://bitbucket.org/digitalricoeur/ricoeur-kernel.git";
      rev = "1192906c24f8714cc179131ca921887ccdd5a2aa";
    };

    deps = [
      "base"
      "adjutor"
      "reprovide-lang"
      "gregor"
      "functional-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "web-io" = {
    src = fetchGit {
      url = "https://github.com/mfelleisen/web-io.git";
      rev = "2225941f8ff49e1aa113c8dcacacfcf2b4a49b8a";
    };

    deps = [
      "racket"
      "net-lib"
      "htdp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "option-contract" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/option-contract.zip";
      sha256 = "19prc5h9apncxgfb25c1vdrxxygv8iaz61n0z1lb4xahfn2j2fd3";
    };
    deps = [
      "option-contract-lib"
      "option-contract-doc"
    ];
  };
  "case-kw-lambda-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/case-kw-lambda.git";
      rev = "985c184062c614548892d6a24b644f6e75725eff";
    };
    subpath = "case-kw-lambda-lib";
    deps = [
      "base"
    ];
  };
  "crypto-doc" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/crypto.git";
      rev = "129997ab537db2eea142b5eb25cf2fc74a19d4ec";
    };
    subpath = "crypto-doc";
    deps = [
      "base"
      "scramble-lib"
      "scramble"
      "racket-doc"
      "scribble-lib"
      "crypto-lib"
    ];
  };
  "job-queue-doc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/job-queue";
      rev = "0a2c349636aa88b06c9c299ef201494df648b164";
    };
    subpath = "job-queue-doc";
    deps = [
      "base"
      "job-queue-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "math" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math.zip";
      sha256 = "10b9zbd7sgph6v4bdndssv45gjh4wdl5h71lrzjvqj5n1iixzrmf";
    };
    deps = [
      "math-lib"
      "math-doc"
    ];
  };
  "rawk-test" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-rawk.git";
      rev = "3098de5140da665e1259ebb087b29486298eed69";
    };
    subpath = "src/rawk-test";
    deps = [
      "base"
      "rackunit-lib"
      "rawk-lib"
    ];
  };
  "polyglot-doc" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/polyglot.git";
      rev = "d27ca7fe90fd4ba2a6c5bcd921fce89e72d2c408";
    };
    subpath = "polyglot-doc";
    deps = [
      "aws"
      "base"
      "css-expr"
      "file-watchers"
      "markdown"
      "polyglot-lib"
      "txexpr"
      "unlike-assets-doc"
      "unlike-assets-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "games" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/games.zip";
      sha256 = "10zh3gj68x822rn82klvqil847sj5d0wrc08aawghqjs2l9scd34";
    };
    deps = [
      "base"
      "draw-lib"
      "drracket"
      "gui-lib"
      "net-lib"
      "htdp-lib"
      "math-lib"
      "scribble-lib"
      "racket-index"
      "sgl"
      "srfi-lib"
      "string-constants-lib"
      "data-enumerate-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "draw-doc"
      "gui-doc"
      "racket-doc"
      "pict-lib"
      "rackunit-lib"
      "htdp-doc"
    ];
  };
  "bnf" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/bnf";
      rev = "8b1e995e41cdaf87163c9697b35eea81111d9c35";
    };
    subpath = "bnf";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "typed-struct-props"
    ];
  };
  "sexp-diff-lib" = {
    src = fetchGit {
      url = "https://github.com/stamourv/sexp-diff.git";
      rev = "5791264cb7031308b81c8c91df457cd51888210f";
    };
    subpath = "sexp-diff-lib";
    deps = [
      "base"
    ];
  };
  "rhombus-prototype" = {
    src = fetchGit {
      url = "https://github.com/racket/rhombus-prototype.git";
      rev = "56429bbcb0c6ac6c48f07052c66deb44ce7f43b1";
    };

    deps = [
      "base"
      "pretty-expressive"
      "syntax-color-lib"
      "parser-tools-lib"
      "scribble-lib"
      "sandbox-lib"
      "testing-util-lib"
      "draw-lib"
      "gui-easy-lib"
      "gui-lib"
      "pict-lib"
      "pict-balloon2"
      "slideshow-lib"
      "at-exp-lib"
      "math-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-doc"
      "draw-doc"
      "pict-doc"
      "slideshow-doc"
      "gui-easy"
      "compatibility"
    ];
  };
  "darwin" = {
    src = fetchGit {
      url = "https://github.com/pmatos/darwin.git";
      rev = "311df33cc83f67859ed9db8b236d227dec83d895";
    };

    deps = [
      "base"
      "find-parent-dir"
      "html-lib"
      "markdown-ng"
      "txexpr"
      "racket-index"
      "rackjure"
      "reprovide-lang"
      "scribble-lib"
      "scribble-text-lib"
      "srfi-lite-lib"
      "web-server-lib"
      "at-exp-lib"
      "net-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-doc"
      "scribble-text-lib"
      "web-server-doc"
    ];
  };
  "markparam-lib" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/markparam";
      rev = "f6393494334318ef497606001f2e83bab2c8c15d";
    };
    subpath = "markparam-lib";
    deps = [
      "base"
    ];
  };
  "compatibility" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility.zip";
      sha256 = "1jjrsc5vmj9f9hif80nb2w93f50hnsm549pvpmc4yhjvlp5qywz7";
    };
    deps = [
      "compatibility-lib"
      "compatibility-doc"
    ];
  };
  "planet-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-lib.zip";
      sha256 = "1h3d9a9zrp6r1rfj48l31dc0k6b6v1mdg55f4z0q2nwp11szz5zb";
    };
    deps = [
      "srfi-lite-lib"
      "base"
    ];
  };
  "drracket-workspaces" = {
    src = fetchGit {
      url = "https://github.com/stardust66/drracket-workspaces.git#main";
      rev = "41a01afd967512228942c9f71af28ad585acf484";
      ref = "main";
    };

    deps = [
      "base"
      "drracket-plugin-lib"
      "gui-lib"
    ];
  };
  "asm" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/racket-asm";
      rev = "57abd235fcb8c7505990f8e9731c01c716324ee5";
    };

    deps = [
      "base"
      "binutils"
      "data-lib"
      "racklog"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "safe-case" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/safe-case.git";
      rev = "52f016b6abe4da5d0a8f485622cf1a013f0c47b0";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "libzstd-aarch64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libzstd-aarch64-macosx-1.5.5.tar.gz";
      sha256 = "17hg5krqxh2yyrp39s9gwdh138mjv5yi2a2lghgk3dn5c0absrfr";
    };
    deps = [
      "base"
    ];
  };
  "ralgo" = {
    src = fetchGit {
      url = "https://github.com/priime0/ralgo.git";
      rev = "da11d998046faf1e759f3cdb909a71509f6f8aff";
    };

    deps = [
      "base"
      "rackunit"
      "scribble-lib"
      "scribble-text-lib"
      "racket-doc"
      "rackunit-doc"
    ];
  };
  "sl2014" = {
    src = fetchGit {
      url = "https://github.com/mfelleisen/sl2014";
      rev = "4ffef910ae5109eef916f3d57aaab95f02981df9";
    };

    deps = [
      "base"
      "htdp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "derpy" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-derpy";
      rev = "179ec02668cdb0beda40022ef9b45909795c7c09";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "mordae"
      "zmq"
      "tesira"
      "libserialport"
      "esc-vp21"
      "pex"
      "cuecore"
      "racket-doc"
      "typed-racket-lib"
      "typed-racket-doc"
    ];
  };
  "asn1-test" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/asn1.git";
      rev = "3cd32b61a68b40ec03bed98cd0c4d4d4f72cacf2";
    };
    subpath = "asn1-test";
    deps = [
      "base"
      "rackunit-lib"
      "asn1-lib"
    ];
  };
  "markparam" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/markparam/";
      rev = "f6393494334318ef497606001f2e83bab2c8c15d";
    };
    subpath = "markparam";
    deps = [
      "markparam-lib"
      "markparam-doc"
    ];
  };
  "nanopass" = {
    src = fetchGit {
      url = "https://github.com/nanopass/nanopass-framework-racket";
      rev = "deac3a4bf937e1217ec54c5439710712b227fc5a";
    };

    deps = [
      "base"
      "rackunit-lib"
      "compatibility-lib"
      "unstable-pretty-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "draw-ttf-x86_64-linux-natipkg" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-ttf-x86_64-linux-natipkg.zip";
      sha256 = "0n117xy2qqv3wmz03lfzdblvis2sxnya2k2wqjgvzh0zbc48m76v";
    };
    deps = [
      "base"
    ];
  };
  "libbzip3" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-libbzip3.git";
      rev = "6fc4d5b463ebc7eaa4fac8c124206e2901b3066c";
    };

    deps = [
      "base"
    ];
  };
  "redex-examples" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-examples.zip";
      sha256 = "0xq06r3rscp47wqgriws8svwxfamwg5r0zs7k94m1an29zzg594i";
    };
    deps = [
      "base"
      "compiler-lib"
      "rackunit-lib"
      "redex-gui-lib"
      "slideshow-lib"
      "math-lib"
      "plot-lib"
    ];
  };
  "tesurell" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/tesurell.git";
      rev = "e4010930062d0741081ddb454d4c749e6754672d";
    };

    deps = [
      "base"
      "compatibility-lib"
      "at-exp-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "at-exp-lib"
    ];
  };
  "video-v0-1" = {
    src = fetchGit {
      url = "https://github.com/videolang/video#v0.1.1";
      rev = "ca7db7f85ab7f19f91e1f63907c275fecdc39349";
      ref = "v0.1.1";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "draw-lib"
      "images-lib"
      "drracket-plugin-lib"
      "data-lib"
      "pict-lib"
      "wxme-lib"
      "sandbox-lib"
      "at-exp-lib"
      "scribble-lib"
      "bitsyntax"
      "opengl"
      "portaudio"
      "ffi-definer-convention"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "draw-doc"
      "ppict"
    ];
  };
  "mime-type-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-net-mime-type.git";
      rev = "961742e5517ddf0cde130f0a18ca532a9734e16e";
    };
    subpath = "mime-type-lib";
    deps = [
      "base"
    ];
  };
  "draw-win32-i386" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/061cd7bde2c0f190c913a84392f286da26f55c17/draw-win32-i386.zip";
      sha256 = "10pblqgkm3hqxmbvkjx2f3xraaln7rnvs6hlks1r3m06qrm23l5n";
    };
    deps = [
      "base"
    ];
  };
  "thread-with-id" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/thread-with-id.git";
      rev = "0b5908a810b710bae7a8e0bc89f6468c81d12f92";
    };

    deps = [
      "base"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "esterel-lib" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "56af2d1bd7697a327e4cd3d0a539101c88820fef";
    };
    subpath = "esterel-lib";
    deps = [
      "base"
    ];
  };
  "dropbox" = {
    src = fetchGit {
      url = "https://github.com/stchang/dropbox";
      rev = "fc978c6c2feca00a74c4e5f9f7213a55585abe68";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "zuo-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/racket.git";
      rev = "5a6921d77bb29363ecd81e56f8ec1b964b60cdf9";
    };
    subpath = "racket/src/zuo/zuo-doc";
    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
    ];
  };
  "http-proxy" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-http-proxy.git";
      rev = "94db8bcccd06da5b072b78bc8a553c6ddb9993eb";
    };
    subpath = "http-proxy";
    deps = [
      "base"
      "http-proxy-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "component-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-component.git";
      rev = "ed1d2b24a548b4652d3d0fd60588301026acb4c2";
    };
    subpath = "component-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "http-easy-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-http-easy.git";
      rev = "1f79be1e420b111f17fac2b27573d2411c7445a2";
    };
    subpath = "http-easy-lib";
    deps = [
      "base"
      "net-cookies-lib"
      "resource-pool-lib"
      "unix-socket-lib"
    ];
  };
  "macrotypes-lib" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "macrotypes-lib";
    deps = [
      "base"
    ];
  };
  "racket-school-mystery-languages" = {
    src = fetchGit {
      url = "https://github.com/justinpombrio/RacketSchool";
      rev = "757295f338d9d3937046782f9c910f8e39d42ef8";
    };

    deps = [
    ];
  };
  "bumpv-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-bumpv.git";
      rev = "fbaeef85127e2d183fabbd953a4358843310c79f";
    };
    subpath = "src/bumpv-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "ziptie-git"
      "bumpv-lib"
    ];
  };
  "racketscript-compiler" = {
    src = fetchGit {
      url = "https://github.com/racketscript/racketscript.git";
      rev = "bff853c802b0073d08043f850108a57981d9f826";
      ref = "master";
    };
    subpath = "racketscript-compiler";
    deps = [
      "base"
      "racket"
      "typed-racket-lib"
      "typed-racket-more"
      "threading-lib"
      "graph-lib"
      "anaphoric"
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "rackunit-lib"
    ];
  };
  "racket-win32-i386-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/1580d868da4a2ae13f34ac67dbb7541428671e0f/racket-win32-i386-2.zip";
      sha256 = "11jxccrd40m10jhxdpw5fdca9918wirfwi8z983hkicf97lb60p2";
    };
    deps = [
      "base"
    ];
  };
  "dan-scheme" = {
    src = fetchGit {
      url = "https://github.com/david-christiansen/dan-scheme";
      rev = "289e8cb903a24b2e1939a8556c164589a0e293e5";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "cpu-affinity" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-cpu-affinity";
      rev = "bc6316cbc7bc3f2179ae569bfe7c23a53b62025f";
    };

    deps = [
      "base"
      "scribble-lib"
      "compatibility-lib"
      "racket-doc"
      "compatibility-doc"
    ];
  };
  "bumpv-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-bumpv.git";
      rev = "fbaeef85127e2d183fabbd953a4358843310c79f";
    };
    subpath = "src/bumpv-lib";
    deps = [
      "base"
      "colorize"
      "ziptie-git"
    ];
  };
  "collections-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-collections";
      rev = "c4822fc200b0488922cd6e86b4f2ea7cf8c565da";
    };
    subpath = "collections-test";
    deps = [
      "base"
      "collections-lib"
      "match-plus"
      "rackunit-lib"
    ];
  };
  "racket-win32-arm64-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-win32-arm64-3.zip";
      sha256 = "0pcd8jhw81pz3ka4120xxr31xvj2wd4zwv0g5b7p5pi0p7jdlqns";
    };
    deps = [
      "base"
    ];
  };
  "ldap-ffi" = {
    src = fetchGit {
      url = "https://github.com/DmHertz/ldap-ffi";
      rev = "87803b347b15b510874c5cf5c405d63d1fd6717a";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "smart-completion" = {
    src = fetchGit {
      url = "https://github.com/syntacticlosure/smart-completion.git";
      rev = "53ab196bee90d578d9fd09ab9f44a165a7143684";
    };

    deps = [
    ];
  };
  "ss-rpc-server" = {
    src = fetchGit {
      url = "https://github.com/sk1e/ss-rpc-server";
      rev = "50f281f251f06ea0b56955a275750aa170a94254";
    };

    deps = [
      "base"
      "srfi-lite-lib"
      "web-server-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "option-contract-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/option-contract-lib.zip";
      sha256 = "0k5l24im5l8pm1q3pz18znk7pxylbrvcy7d69v6aizmx9ky3bva0";
    };
    deps = [
      "base"
    ];
  };
  "argo" = {
    src = fetchGit {
      url = "https://github.com/jessealama/argo.git";
      rev = "9108261407e6454ae7d0aadfe78d8ebdc55b832c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "http"
      "http-easy"
      "sugar"
      "beautiful-racket-lib"
      "web-server-lib"
      "json-pointer"
      "uri-template"
      "brag"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "beautiful-racket-lib"
    ];
  };
  "laramie-doc" = {
    src = fetchGit {
      url = "https://github.com/jessealama/laramie.git";
      rev = "f9c9150e9afe8aadfa9251972ecc915f867657f3";
    };
    subpath = "laramie-doc";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "laramie-lib"
    ];
  };
  "rackunit-fancy-runner" = {
    src = fetchGit {
      url = "https://github.com/c2d7fa/rackunit-fancy-runner.git#c367fa93ed8a2daad4aa12cc9e947661d169dab6";
      rev = "c367fa93ed8a2daad4aa12cc9e947661d169dab6";
      ref = "c367fa93ed8a2daad4aa12cc9e947661d169dab6";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "namecaser" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/namecaser.git#main";
      rev = "8e46fa624f3ee9d9607159a9a4becd3067fec4ec";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "plot" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot.zip";
      sha256 = "0bsf8kfbdmbbim48kvjq97ix5d9lnccga2y6zrnc1ac531wah3cy";
    };
    deps = [
      "plot-lib"
      "plot-gui-lib"
      "plot-doc"
    ];
  };
  "keyring-keychain-lib" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-keychain-lib";
    deps = [
      "base"
      "keyring-lib"
      "base"
    ];
  };
  "echonest" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/echonest.git#master";
      rev = "fd7d6511231bb4304cfd10260825e86ac33c3ddc";
      ref = "master";
    };

    deps = [
      "base"
      "wffi"
      "rackjure"
      "rackunit-lib"
    ];
  };
  "wxme" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/wxme.zip";
      sha256 = "13yq82v62bmks0czvj573cpxjvcx7c0mrxijifqzpnakcz6fmijw";
    };
    deps = [
      "wxme-lib"
      "gui-doc"
    ];
  };
  "simple-barcode" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-simple-barcode.git";
      rev = "455ca5c7cdf7747eb42d7c8e90ddff48fa4ec2c7";
    };

    deps = [
      "base"
      "rackunit-lib"
      "draw-lib"
      "simple-svg"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "syntax-lang" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-syntax-lang";
      rev = "50897fef061bcf8640110a7695c81a3a06e38e6d";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "plai-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plai-lib.zip";
      sha256 = "0bn251rlj8nn2v89gwnmxi8wgc77wz4m7dvybm65ilffwmp2kd2v";
    };
    deps = [
      "scheme-lib"
      "srfi-lite-lib"
      "base"
      "gui-lib"
      "draw-lib"
      "sandbox-lib"
      "web-server-lib"
      "at-exp-lib"
      "eli-tester"
      "pconvert-lib"
      "rackunit-lib"
      "drracket-tool-lib"
    ];
  };
  "wxme-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/wxme-lib.zip";
      sha256 = "14b63bmckwpy4lqpip7jg5a0yvsky36350g2j7a93wv7725lppbb";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "snip-lib"
    ];
  };
  "gnal-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/gnal-lang";
      rev = "b63298a6609102894a9482c1ccc562f61ac89054";
    };

    deps = [
      "base"
    ];
  };
  "cobalt2-theme" = {
    src = fetchGit {
      url = "https://github.com/DexterLagan/cobalt2-theme.git";
      rev = "8b23d3fd7053f06b11d4012bf3b982a3fdcac51e";
    };

    deps = [
      "base"
    ];
  };
  "canonicalize-path" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/canonicalize-path.zip";
      sha256 = "05l6xvd9mhlfslc3rgbjvhf4xc47rzv6yv440v8ppvb519yd773i";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "mcfly"
      "overeasy"
    ];
  };
  "while-loop" = {
    src = fetchGit {
      url = "https://github.com/jbclements/while-loop";
      rev = "69e33eef851c8db79536dcdb86bbfe113f7dcdda";
      ref = "master";
    };
    deps = [
      "base"
      "parser-tools-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "smtp-server-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-smtp-server.git";
      rev = "c702e383617bef000442392bd83ec63168c7b48f";
    };
    subpath = "smtp-server-test";
    deps = [
      "base"
      "net-lib"
      "rackcheck-lib"
      "rackunit-lib"
      "smtp-server"
    ];
  };
  "cairo" = {
    src = fetchGit {
      url = "https://github.com/soegaard/cairo.git";
      rev = "c31a089e749b4854ab4f63e427881f79bca615d2";
      ref = "main";
    };
    subpath = "cairo";
    deps = [
      "cairo-lib"
      "cairo-test"
    ];
  };
  "encode-ITA_2" = {
    src = fetchGit {
      url = "https://github.com/Lazerbeak12345/encode-ITA_2.git";
      rev = "3138db493016469ecb46fdc248cb4fa017d5910c";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-typed"
    ];
  };
  "rs" = {
    src = fetchGit {
      url = "https://github.com/mcdejonge/rs.git";
      rev = "4ec05adf44019ff153e867612d3eeee7ea586082";
    };

    deps = [
      "base"
      "rackunit"
      "rtmidi"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "typed-map-lib" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/typed-map.git";
      rev = "7a70650b6f8e1222fe1e4ebd2fb6b9b2489301e2";
      ref = "main";
    };
    subpath = "typed-map-lib";
    deps = [
      "base"
      "typed-racket-lib"
    ];
  };
  "memoize-lib" = {
    src = fetchGit {
      url = "https://github.com/jbclements/memoize.git";
      rev = "911a0d3abe44fca1203425f6ff5767a9796f0c1f";
      ref = "master";
    };
    subpath = "memoize-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "neo4j-lib" = {
    src = fetchGit {
      url = "https://github.com/tomob/neo4j-lib.git#main";
      rev = "18d50ef8c4a59b5e7b4a2f6ee778fb90782ef777";
      ref = "main";
    };

    deps = [
      "base"
      "db-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "db-doc"
    ];
  };
  "ds-store-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/ds-store-doc.zip";
      sha256 = "0bnrpfk1rp6ikkwzwmqb084kkl4w4mikqky3lazsmg5rlp1m3f3k";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "ds-store-lib"
    ];
  };
  "koyo" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo.git";
      rev = "9de9f3a26ffb8da6256c5191ed111ae8f0dbb514";
    };
    subpath = "koyo";
    deps = [
      "koyo-doc"
      "koyo-lib"
    ];
  };
  "crontab" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-crontab.git";
      rev = "8540b0eb8c133497b315ed1f54fc5bd9e94225cb";
    };
    subpath = "crontab";
    deps = [
      "base"
      "crontab-lib"
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "data-enumerate-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-enumerate-lib.zip";
      sha256 = "1l8nzwiginck4xy5qyyi0yxc4rkp5d0a7gggp3s93n9cfk74h088";
    };
    deps = [
      "base"
      "data-lib"
      "math-lib"
      "rackunit-lib"
    ];
  };
  "scribble-code-examples-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/scribble-code-examples.git";
      rev = "b2c128b0f60230ba0e539d3790faf70ba2c1f5fa";
    };
    subpath = "scribble-code-examples-lib";
    deps = [
      "base"
      "scribble-lib"
      "sandbox-lib"
      "rackunit-lib"
    ];
  };
  "snack" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.cs.toronto.edu/~gfb/racket-pkgs/snack.zip";
      sha256 = "04n7s5c392zpg86l7jlkd7qkj9j30q7k2bif8fwcranrm2540gxm";
    };
    deps = [
      "base"
      "base"
      "gui-lib"
      "draw-lib"
      "reprovide-lang"
      "string-constants-lib"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "syntax-spec-v1" = {
    src = fetchGit {
      url = "https://github.com/michaelballantyne/syntax-spec.git#v1";
      rev = "6a0e30e621cf3d9cc9c09f43edca419104edfbef";
      ref = "v1";
    };

    deps = [
      "base"
      "version-case"
      "ee-lib"
      "syntax-classes-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "drracket"
    ];
  };
  "bitsyntax" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-bitsyntax";
      rev = "fffe0d44e6183d19b5e2b22bf07be4192994243b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "liturgical-calendar" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/liturgical-calendar.git#main";
      rev = "69af60c76b565b5469d94fffe72917e722afdc6a";
      ref = "main";
    };

    deps = [
      "base"
      "adjutor"
      "typed-racket-lib"
      "gregor-lib"
      "scribble-lib"
      "racket-doc"
      "adjutor"
      "gregor-doc"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "typed-racket" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket.zip";
      sha256 = "06xhqwygcpvsrmr9dzvmfvx8gzqx0kr5sr90r8lw81q2h5d8mb8z";
    };
    deps = [
      "typed-racket-lib"
      "typed-racket-doc"
    ];
  };
  "scribble-enhanced" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/scribble-enhanced.git#main";
      rev = "d4fe76d1899b540e2806520a3acbf4afdf5abb88";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "scheme-lib"
      "compatibility-lib"
      "slideshow-lib"
      "typed-racket-lib"
      "reprovide-lang"
      "mutable-match-lambda"
      "scribble-lib"
      "racket-doc"
      "at-exp-lib"
      "typed-racket-more"
      "typed-racket-doc"
      "scribble-doc"
    ];
  };
  "gsl-integration" = {
    src = fetchGit {
      url = "https://github.com/petterpripp/gsl-integration.git";
      rev = "53a68b178f8dba1c90b76b174e9f110e886db3ae";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "scribble-math"
    ];
  };
  "inexact-number-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/inexact-number-lang.git";
      rev = "d92a6dcef0f8b38fc1368fb9d62a7f9966934039";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "macrokey" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-macrokey.git";
      rev = "7b7063fa5efee392f309b4b208df927868735495";
    };
    subpath = "src/macrokey";
    deps = [
      "base"
      "macrokey-doc"
      "macrokey-lib"
      "macrokey-test"
    ];
  };
  "dallas-test" = {
    src = fetchGit {
      url = "https://github.com/jessealama/dallas.git";
      rev = "8cc132551326f28efc4536081b947a466429937b";
    };
    subpath = "dallas-test";
    deps = [
      "dallas-lib"
      "base"
    ];
  };
  "seq-no-order" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/seq-no-order";
      rev = "5911a6f2d4f92d115f964dbb2e55919e51db4478";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "io" = {
    src = fetchGit {
      url = "https://github.com/samth/io.rkt";
      rev = "db8413c802782bfc3de706cc1cb8dab6fe4f941e";
    };

    deps = [
      "srfi-lite-lib"
      "base"
      "in-new-directory"
      "compatibility-lib"
      "rackunit-gui"
      "rackunit-lib"
    ];
  };
  "typed-worklist" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/typed-worklist.git#main";
      rev = "31fb17fb7c8aaa96c49dcd1ca9094d0dffa775c8";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "type-expander"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "splitflap" = {
    src = fetchGit {
      url = "https://github.com/otherjoel/splitflap.git";
      rev = "d8faa3aef672b355280f36e299ae57756ef02383";
      ref = "main";
    };
    subpath = "splitflap";
    deps = [
      "splitflap-doc"
      "splitflap-lib"
    ];
  };
  "iu-pict" = {
    src = fetchGit {
      url = "https://github.com/david-christiansen/iu-pict";
      rev = "42072a907d65bbfd09077592a20bfb130fc5a35a";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "esAsm" = {
    src = fetchGit {
      url = "https://github.com/a11ce/esAsm.git";
      rev = "895709fc4c46a8f366034497f2cadc3ae97d1c09";
    };
    subpath = "racket";
    deps = [
      "base"
      "parser-tools-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ejs" = {
    src = fetchGit {
      url = "https://github.com/jessealama/ejs.git";
      rev = "f162cd8ed4da63b33d1addfd0da19b8b12b299d2";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "hackett-demo" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/hackett.git";
      rev = "e90ace9e4a056ec0a2a267f220cb29b756cbefce";
    };
    subpath = "hackett-demo";
    deps = [
      "base"
      "draw-lib"
      "hackett-lib"
      "htdp-lib"
      "pict-lib"
      "threading-lib"
      "web-server-lib"
    ];
  };
  "racket-benchmarks" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-benchmarks.zip";
      sha256 = "1x5ydhfiqvrhcrgbbvy9xf2ladv9h6hfk9w80sacq69nsf3wbgw6";
    };
    deps = [
      "base"
      "compatibility-lib"
      "r5rs-lib"
      "scheme-lib"
      "racket-test"
      "typed-racket-lib"
      "plot"
      "draw-lib"
      "gui-lib"
      "pict-lib"
    ];
  };
  "dotlambda" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/dotlambda.git#main";
      rev = "96cfe93ab611db377a4a68f4b0a7e483ebf506a6";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-map-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "chain-module-begin"
      "debug-scopes"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
    ];
  };
  "web-server-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-test.zip";
      sha256 = "0w3qpv824mmni5c5gdp3p9crz7rpb070ajhmq165xf2kpjsb7wb4";
    };
    deps = [
      "base"
      "compatibility-lib"
      "eli-tester"
      "htdp-lib"
      "rackunit-lib"
      "web-server-lib"
      "net-cookies"
    ];
  };
  "get-primitive" = {
    src = fetchGit {
      url = "https://github.com/samth/get-primitive.git";
      rev = "c69044511178cd544f5ce0c3d672c1e077030282";
    };

    deps = [
      "base"
    ];
  };
  "txexpr-stxparse" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/txexpr-stxparse.git";
      rev = "d570bca4a1156497a20189a682fa555bf0bbcfd6";
    };

    deps = [
      "base"
      "txexpr"
      "rackunit-lib"
    ];
  };
  "punctaffy" = {
    src = fetchGit {
      url = "https://github.com/lathe/punctaffy-for-racket.git";
      rev = "2a958bf3987459e9197eb5963fe5107ea2e2e912";
      ref = "main";
    };
    subpath = "punctaffy";
    deps = [
      "punctaffy-doc"
      "punctaffy-lib"
    ];
  };
  "sxml" = {
    src = fetchGit {
      url = "https://github.com/jbclements/sxml";
      rev = "5d1d65561b7bf5059456934c34a5c5f257de4416";
      ref = "master";
    };
    deps = [
      "base"
      "srfi-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "scheme2d" = {
    src = fetchGit {
      url = "https://github.com/eutro/scheme2d.git";
      rev = "65b4a3c69d8c13fbcfc542fa366409fecc1089f4";
    };

    deps = [
      "base"
    ];
  };
  "alexis-collections" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-alexis-collections";
      rev = "997c8642d9b2adb28728d609202618bc8ffbd750";
    };

    deps = [
      "alexis-util"
      "base"
      "collections"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "lipics" = {
    src = fetchGit {
      url = "https://github.com/takikawa/lipics-scribble";
      rev = "32a8cb9782493e237c25994f70aa7c572d7ea567";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "sha"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "ffmpeg-x86_64-macosx" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "ffmpeg-x86_64-macosx";
    deps = [
      "base"
    ];
  };
  "namespaced-transformer-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/namespaced-transformer";
      rev = "4cdc1bdae09a07b78f23665267f2c7df4be5a7f6";
    };
    subpath = "namespaced-transformer-doc";
    deps = [
      "base"
      "namespaced-transformer-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "lti-freq-domain-toolbox" = {
    src = fetchGit {
      url = "https://github.com/istefanis/lti-freq-domain-toolbox.git";
      rev = "9b45661a197542663b786b1ea1ecac225d00df58";
    };

    deps = [
      "plot-lib"
      "base"
      "math-lib"
      "plot-gui-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "redex-abbrevs" = {
    src = fetchGit {
      url = "https://github.com/bennn/redex-abbrevs.git";
      rev = "9e08f5a3ea0c2b70c5324c73969397c161a624df";
    };
    subpath = "redex-abbrevs";
    deps = [
      "redex-abbrevs-lib"
      "redex-abbrevs-doc"
    ];
  };
  "monad" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-monad";
      rev = "e61a1b940cac3e85a0408d4463c9324bb3615413";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "colormaps" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/colormaps.git";
      rev = "f0dc88be58bae0d0331bfa778987460d7d71a08a";
    };

    deps = [
      "base"
      "plot-lib"
      "pict-lib"
      "draw-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "pict-doc"
      "plot-doc"
      "plot-gui-lib"
    ];
  };
  "forms-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-forms.git";
      rev = "e6ba9fa4a4e17d744760193dc7b8a4b399e9db71";
    };
    subpath = "forms-doc";
    deps = [
      "base"
      "forms-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "web-server-doc"
      "web-server-lib"
    ];
  };
  "k-example" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/k.git";
      rev = "2b5f5066806a5bbd0733b781a2ed5fce6956a4f5";
      ref = "develop";
    };
    subpath = "k-example";
    deps = [
      "base"
      "k-core"
      "k-lib"
    ];
  };
  "libsqlite3-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsqlite3-x86_64-macosx-3.43.1.tar.gz";
      sha256 = "17p2y9bpdzziy2c50z3xja4gv41992s90r7qf30hr0nkfg9vpnyd";
    };
    deps = [
      "base"
    ];
  };
  "zeromq-win32-i386" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-natipkg-zeromq.git";
      rev = "c9c89e3542508d753384c62ab368b3585796be8b";
    };
    subpath = "zeromq-win32-i386";
    deps = [
      "base"
    ];
  };
  "temp-c-doc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/temp-c";
      rev = "43f7f2141c81a301aa229ef4105f458eee070653";
    };
    subpath = "temp-c-doc";
    deps = [
      "base"
      "temp-c-lib"
      "scribble-lib"
      "automata"
      "racket-doc"
    ];
  };
  "license-audit" = {
    src = fetchGit {
      url = "https://github.com/sorawee/license-audit.git";
      rev = "71fa716a1d0b7a4f3aae5bb2087329fd4e98e768";
    };

    deps = [
      "base"
      "text-table"
      "pprint"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "serialize-syntax-introducer" = {
    src = fetchGit {
      url = "https://github.com/macrotypefunctors/serialize-syntax-introducer.git";
      rev = "5944d9f32df50b608c3493a7fd6a510afabf8fd3";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "pmsf-license" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-license";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "pmsf-condition"
      "pmsf-lib"
    ];
  };
  "web-galaxy" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/web-galaxy.git";
      rev = "d484efe7422df0390d291f74c71cebf6006ab87a";
    };
    subpath = "web-galaxy";
    deps = [
      "web-galaxy-lib"
      "web-galaxy-doc"
    ];
  };
  "game-engine-style-demos" = {
    src = fetchGit {
      url = "https://github.com/srfoster/game-engine-demos.git";
      rev = "614d1c5fb871f17e4008a26cb42542800457576b";
    };
    subpath = "style-demos";
    deps = [
      "game-engine-demos-common"
    ];
  };
  "russian-lang" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/russian-lang.git";
      rev = "c3b7166fe617a7ba7af2e1e49f33addb38351376";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "parser-tools-lib"
    ];
  };
  "rml-core" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/rml-core.git";
      rev = "0e493502d3f50670201500c11e50430464e8dd35";
    };

    deps = [
      "base"
      "math-lib"
      "csv-reading"
      "mcfly"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "racket-doc"
      "math-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "libargon2-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libargon2-x86_64-macosx-20210625.0.tar.gz";
      sha256 = "1p9fs5bvmkasw3rdw9pxgaqm456501jdhvcf62h5sm3rmp9k3yxf";
    };
    deps = [
      "base"
    ];
  };
  "mboxrd-read" = {
    src = fetchGit {
      url = "https://github.com/jbclements/mboxrd-read.git";
      rev = "fe1fa607c8efabe267f30a8c9a321e823c775dbd";
    };

    deps = [
      "base"
      "compatibility-lib"
      "rackunit-lib"
      "scribble-lib"
      "net-doc"
      "racket-doc"
    ];
  };
  "irandom" = {
    src = fetchGit {
      url = "https://github.com/hkrish/irandom.git";
      rev = "f38e03c69fce7462b81106f567c32ce34f0ed830";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "cmx" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-cmx.git";
      rev = "3591f092f7aac01e5c529d5b82421e321cdda8cb";
    };

    deps = [
      "base"
      "event-lang"
      "draw-lib"
      "pict-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "acmart" = {
    src = fetchGit {
      url = "https://github.com/racket/scribble";
      rev = "3bdb66a287c9929fa37dc0da7bc8c6c61c5c8a05";
    };
    subpath = "scribble-lib";
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "scribble-text-lib"
      "scribble-html-lib"
      "planet-lib"
      "net-lib"
      "at-exp-lib"
      "draw-lib"
      "syntax-color-lib"
      "sandbox-lib"
      "typed-racket-lib"
      "rackunit-lib"
    ];
  };
  "brag" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/brag.git";
      rev = "30cbf95e6a717e71fb8bda6b15a7253aed36115a";
    };
    subpath = "brag";
    deps = [
      "base"
      "brag-lib"
      "at-exp-lib"
      "br-parser-tools-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "emo" = {
    src = fetchGit {
      url = "https://gitlab.com/yurb/emo.git#main";
      rev = "6241f415556885f3d4631a377d5b839c7663acd6";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "rackpropagator" = {
    src = fetchGit {
      url = "https://github.com/ots22/rackpropagator.git";
      rev = "5c5367985bf5fe20e8dd6e9da35792a203c296d1";
    };
    subpath = "rackpropagator";
    deps = [
      "rackpropagator-lib"
      "rackpropagator-doc"
    ];
  };
  "libb2" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-salty-crypto.git";
      rev = "81f9ce23af9ee493cfdf7947ae0bd1bc7deaabe3";
      ref = "main";
    };
    subpath = "libb2";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "ragg" = {
    src = fetchGit {
      url = "https://github.com/jbclements/ragg.git";
      rev = "fe71542609bd707d4fd6d842d74c164ae2b2adff";
    };

    deps = [
      "base"
      "parser-tools-lib"
      "rackunit-lib"
      "python-tokenizer"
      "at-exp-lib"
      "parser-tools-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "tessellation" = {
    src = fetchGit {
      url = "https://github.com/zkry/tessellation.git";
      rev = "6f881912eb35592f96539485e7bdd62bdc329528";
    };

    deps = [
      "base"
      "metapict"
      "scribble-lib"
    ];
  };
  "regraph" = {
    src = fetchGit {
      url = "https://github.com/herbie-fp/regraph.git";
      rev = "53177afac7697c1e46e16b145bb7a8793573e7c2";
    };

    deps = [
      "math-lib"
      "plot-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "syntax-implicits" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-syntax-implicits.git";
      rev = "59e10754cc0e96b899e4194e83b4966801262a63";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "net" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net.zip";
      sha256 = "0drkxw7sww04dpwsd9xfd41dk5kp9rml40mf7da0l2ns3jbjw3ap";
    };
    deps = [
      "net-lib"
      "net-doc"
    ];
  };
  "preprocessor" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/preprocessor.zip";
      sha256 = "099jc1lasizc8p23w4rvk9n4j47w0in8b03fbk2m7mr6jr175npd";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "2d" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/2d.zip";
      sha256 = "0zdqm2scwqrc1an2q0carmii0vxva3l0rxf50cc1yf0ipg5idb8x";
    };
    deps = [
      "2d-lib"
      "2d-doc"
    ];
  };
  "rackdis" = {
    src = fetchGit {
      url = "https://github.com/eu90h/rackdis";
      rev = "975aeb46b6432d2359fb1c625f69ae5b97f450d1";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "parendown-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/parendown-for-racket.git";
      rev = "bbd36ea3fec9b78b3ccc05dcf20341f768a7f4ac";
      ref = "main";
    };
    subpath = "parendown-test";
    deps = [
      "base"
      "parendown-lib"
      "rackunit-lib"
    ];
  };
  "binary-class-mp3" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/binary-class-mp3";
      rev = "bc10152d1bc6cd1ed7be7bec0e8d3f1ae0bf7977";
    };

    deps = [
      "binary-class"
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "racketscript-doc" = {
    src = fetchGit {
      url = "https://github.com/racketscript/racketscript.git";
      rev = "bff853c802b0073d08043f850108a57981d9f826";
      ref = "master";
    };
    subpath = "racketscript-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "scribble-enhanced"
      "racketscript-compiler"
    ];
  };
  "gdlisp" = {
    src = fetchGit {
      url = "https://github.com/eutro/gdlisp.git";
      rev = "97317d0a5ecbb42b51a4ce45a7af2bc70c9bc95a";
    };

    deps = [
      "base"
      "syntax-classes-lib"
      "file-watchers"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "net-ip" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-net-ip.git";
      rev = "be7075c78baf122dc05beaf71faf941159aaad64";
    };
    subpath = "net-ip";
    deps = [
      "net-ip-doc"
      "net-ip-lib"
    ];
  };
  "dbm" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/dbm";
      rev = "a5bf5a400457f49e3e8f5b2009f97e6c4494d1c6";
      ref = "master";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "raco-cross-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/raco-cross.git";
      rev = "f3eb98fdf1069899d2e82d9e87146fbe8f92766b";
    };
    subpath = "raco-cross-doc";
    deps = [
      "base"
      "raco-cross-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "diagrama-lib" = {
    src = fetchGit {
      url = "https://github.com/florence/diagrama.git";
      rev = "291f244843d7226df4b7cb763bc3d6b1e98af71b";
    };
    subpath = "diagrama-lib";
    deps = [
      "draw-lib"
      "base"
      "pict-lib"
    ];
  };
  "http123-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-http123.git";
      rev = "2f17657c1ab058ec1b6c04f2c964cae42b54833e";
    };
    subpath = "http123-lib";
    deps = [
      "base"
      "binaryio-lib"
      "scramble-lib"
      "net-cookies-lib"
      "rackunit-lib"
    ];
  };
  "effect-racket-lib" = {
    src = fetchGit {
      url = "https://github.com/camoy/effect-racket.git";
      rev = "e8b8247c2339a89da8c0d8dad58bf13eda21eed2";
      ref = "master";
    };
    subpath = "effect-racket-lib";
    deps = [
      "base"
    ];
  };
  "simple-tree-text-markup" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/simple-tree-text-markup.zip";
      sha256 = "095vxibx6cac08nx0i47v0nwg5qhdy49gphb3kkiy9f50rbdzl4p";
    };
    deps = [
      "simple-tree-text-markup-lib"
      "simple-tree-text-markup-doc"
    ];
  };
  "punctaffy-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/punctaffy-for-racket.git";
      rev = "2a958bf3987459e9197eb5963fe5107ea2e2e912";
      ref = "main";
    };
    subpath = "punctaffy-test";
    deps = [
      "base"
      "lathe-comforts-lib"
      "parendown-lib"
      "profile-lib"
      "punctaffy-lib"
      "rackunit-lib"
    ];
  };
  "racket-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-doc.zip";
      sha256 = "0pdwr7l9aqbpmbmny48lxwg69b41si3ffz4sijc423ls12hqgax9";
    };
    deps = [
      "scheme-lib"
      "base"
      "net-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-index"
      "rackunit-doc"
      "errortrace-doc"
      "at-exp-lib"
      "rackunit-lib"
      "gui-doc"
      "gui-lib"
      "draw-doc"
      "draw-lib"
      "pict-lib"
      "readline-lib"
      "readline-doc"
      "syntax-color-doc"
      "syntax-color-lib"
      "scribble-doc"
      "future-visualizer"
      "distributed-places-doc"
      "distributed-places-lib"
      "serialize-cstruct-lib"
      "cext-lib"
      "net-doc"
      "planet-doc"
      "compiler-lib"
      "compatibility-lib"
      "xrepl-lib"
      "xrepl-doc"
    ];
  };
  "csv-writing" = {
    src = fetchGit {
      url = "https://github.com/jbclements/csv-writing.git";
      rev = "a656ce4ee8ee9ef618e257a9def8f673f3ec6122";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "redex-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-lib.zip";
      sha256 = "1lq1rzj8mk02hyk6w1s2ps0p5y3xpg2dhvqx5kmyl8dbrd96ygwc";
    };
    deps = [
      "data-enumerate-lib"
      "scheme-lib"
      "base"
      "data-lib"
      "math-lib"
      "tex-table"
      "profile-lib"
      "typed-racket-lib"
      "testing-util-lib"
      "2d-lib"
      "rackunit-lib"
    ];
  };
  "memoize" = {
    src = fetchGit {
      url = "https://github.com/jbclements/memoize.git";
      rev = "911a0d3abe44fca1203425f6ff5767a9796f0c1f";
      ref = "master";
    };
    subpath = "memoize";
    deps = [
      "memoize-lib"
      "memoize-doc"
      "memoize-test"
    ];
  };
  "rws-html-template" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/rws-html-template.zip";
      sha256 = "0ywy9248c8q92dllw0xashn00vl2irxylbrdz67fkvc4478kcm9s";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "web-server-lib"
      "web-server-doc"
      "mcfly"
      "html-template"
    ];
  };
  "opt" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/opt.git";
      rev = "83544737512709bfbdf5d65a956ee12c4cc7e822";
    };

    deps = [
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "prefab-predicate-compat" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/prefab-predicate-compat.git";
      rev = "7c6cc40738062f336839b1f63e9b9ceb2a80071a";
    };

    deps = [
      "base"
    ];
  };
  "crontab-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-crontab.git";
      rev = "8540b0eb8c133497b315ed1f54fc5bd9e94225cb";
    };
    subpath = "crontab-lib";
    deps = [
      "base"
    ];
  };
  "dlm-read" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-dlm-read#master";
      rev = "9ae0487b315e762d311ea0e14b72a9bd2de27470";
      ref = "master";
    };

    deps = [
      "base"
      "rackunit-lib"
      "csv-reading"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "http-easy-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-http-easy.git";
      rev = "1f79be1e420b111f17fac2b27573d2411c7445a2";
    };
    subpath = "http-easy-test";
    deps = [
      "base"
      "http-easy"
      "net-cookies-lib"
      "rackunit-lib"
      "resource-pool-lib"
      "web-server-lib"
    ];
  };
  "protobuf" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://chust.org/repos/racket-protobuf/uv/protobuf-1.1.3.zip";
      sha256 = "0p049g4daz6771c2d99py0mvzzmryzknn43xzz0a5frbpfh2njy8";
    };
    deps = [
      "base"
      "srfi-lib"
      "srfi-lite-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "raco-macro-step" = {
    src = fetchGit {
      url = "https://github.com/samth/raco-macro-step";
      rev = "efbc4ba9ebfda38624050e9cfa0452da823decf0";
    };

    deps = [
      "macro-debugger"
      "base"
    ];
  };
  "redex-pict-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-pict-lib.zip";
      sha256 = "1wdglz60kakwdm28h4sg08y0lc0l3yxmvzsdwaay51cqhrsi567s";
    };
    deps = [
      "scheme-lib"
      "base"
      "draw-lib"
      "data-lib"
      "profile-lib"
      "redex-lib"
      "pict-lib"
      "rackunit-lib"
    ];
  };
  "zeromq" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/zeromq";
      rev = "9743809a4415f342da111aaf876c1b9c8dfa8bf1";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
      "math-lib"
      "rackunit-lib"
    ];
  };
  "cldr-numbers-modern" = {
    src = fetchGit {
      url = "https://github.com/97jaz/cldr-numbers-modern";
      rev = "625428099b3f8cd264955a283dddc176a6080ba1";
    };

    deps = [
      "base"
      "cldr-core"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "k-doc" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/k.git";
      rev = "2b5f5066806a5bbd0733b781a2ed5fce6956a4f5";
      ref = "develop";
    };
    subpath = "k-doc";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "k-core"
      "k-lib"
    ];
  };
  "racket-locale" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/racket-locale.git";
      rev = "4381d42d76548b6b52522349955be55ee46e3700";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-index"
      "gregor-lib"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "pict3d-orig" = {
    src = fetchGit {
      url = "https://github.com/ntoronto/pict3d";
      rev = "09283c9d930c63b6a6a3f2caa43e029222091bdb";
    };

    deps = [
      "base"
      "draw-lib"
      "srfi-lite-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "math-lib"
      "scribble-lib"
      "gui-lib"
      "pconvert-lib"
      "pict-lib"
      "profile-lib"
      "pfds"
      "draw-doc"
      "gui-doc"
      "gui-lib"
      "racket-doc"
      "plot-doc"
      "plot-lib"
      "plot-gui-lib"
      "images-doc"
      "images-lib"
      "htdp-doc"
      "htdp-lib"
      "pict-doc"
      "typed-racket-doc"
    ];
  };
  "dherman-struct" = {
    src = fetchGit {
      url = "https://github.com/jbclements/dherman-struct";
      rev = "1f0510d8e50ca3d22b3ba7ee65cce117450d44a0";
    };

    deps = [
      "base"
      "compatibility-lib"
      "scheme-lib"
      "rackunit-lib"
      "srfi-lite-lib"
    ];
  };
  "static-rename" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-static-rename";
      rev = "50f1ff9866a3ef116471eb1a483c1992480dcd45";
    };
    subpath = "static-rename";
    deps = [
      "static-rename-doc"
      "static-rename-lib"
    ];
  };
  "gtp-util" = {
    src = fetchGit {
      url = "https://github.com/utahplt/gtp-util.git";
      rev = "bd6c1babaa1bcf668c052495f0ad0b5103a68835";
    };

    deps = [
      "base"
      "math-lib"
      "pict-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "scribble-doc"
      "rackunit-abbrevs"
      "pict-doc"
    ];
  };
  "elf" = {
    src = fetchzip {
      stripRoot = false;
      url = "http://code_man.cybnet.ch/racket/elf.zip";
      sha256 = "";
    };
    deps = [
    ];
  };
  "ldap" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/ldap";
      rev = "e7440a2632f01563182f277135ab066c41157639";
      ref = "master";
    };
    deps = [
      "base"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "dotenv-lib" = {
    src = fetchGit {
      url = "https://github.com/royallthefourth/dotenv.git";
      rev = "9afc37bff71944f12aeb83b744263f340fe929f9";
    };
    subpath = "dotenv-lib";
    deps = [
      "base"
    ];
  };
  "live-free-or-die" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/live-free-or-die";
      rev = "b6fbe5364c51eb793a7f88fb916e41506b1d519e";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "brush" = {
    src = fetchGit {
      url = "https://github.com/david-christiansen/brush.git";
      rev = "91b83cda313f77f2068f0c02753c55c2563680d5";
    };

    deps = [
      "base"
      "scribble"
      "at-exp-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "event" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-event.git";
      rev = "5c31cb32a816b0b23af2905bf25c7c3b69bd36cb";
    };

    deps = [
      "algebraic"
      "base"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "deta" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/deta.git";
      rev = "df9ddc886df098537fa18f1ec775ec591d9a630b";
    };
    subpath = "deta";
    deps = [
      "deta-doc"
      "deta-lib"
    ];
  };
  "pollen-tuftorial" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/pollen-tuftorial.git";
      rev = "bb50c7bf4544c0013a59a65e38d48bd174231d05";
    };

    deps = [
      "base"
      "pollen"
      "hyphenate"
      "css-tools"
      "txexpr"
      "sugar"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "mcfly" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/mcfly.zip";
      sha256 = "14rmdblzywmxbfa913lhpqx4asg6lv49ix38j5b83cx2mi93y040";
    };
    deps = [
      "at-exp-lib"
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "global" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/global.git";
      rev = "9ea449742edaa08d6b0f770acda9134f540d28bc";
    };

    deps = [
      "text-table"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "english" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/english.git";
      rev = "b03f3b203fdbc11780291e09a528ff0590b5802b";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "euclid" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/euclid.git";
      rev = "bd64f8f2c7e60ce6d435c7f0241cf3dfffe6d297";
    };

    deps = [
      "rebellion"
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "hash-view-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-hash-view.git";
      rev = "7bfad3b89241beaca45f43ec1d70ef3ed268b495";
    };
    subpath = "hash-view-lib";
    deps = [
      "base"
    ];
  };
  "distributed-places-test" = {
    src = fetchGit {
      url = "https://github.com/racket/distributed-places/";
      rev = "4e75977ab091999dfd7de765e7807fabc06a6bf3";
    };
    subpath = "distributed-places-test";
    deps = [
      "distributed-places-lib"
      "base"
    ];
  };
  "mario" = {
    src = fetchGit {
      url = "https://github.com/mlang/mario.git";
      rev = "4604f58610230176abdde0ffca38c9df77810a49";
    };

    deps = [
    ];
  };
  "gmp-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-gmp";
      rev = "768c33615a1c2414ccaf1a1e4ea1064bd5dd46af";
    };
    subpath = "gmp-lib";
    deps = [
      "base"
    ];
  };
  "colon-kw" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/colon-kw";
      rev = "376c42e6dadb9d6a329f3af3d37567fa49faaf66";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "racket-tree-sitter" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/racket-tree-sitter.git#develop";
      rev = "d5193cb8af43428372db34188924f4fea372ba8d";
      ref = "develop";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "srfi-doc-nonfree" = {
    src = fetchGit {
      url = "https://github.com/racket/srfi/";
      rev = "cab009da67adf40737ae7ff02cd7c8bd6316d61d";
    };
    subpath = "srfi-doc-nonfree";
    deps = [
      "scheme-lib"
      "base"
      "scribble-lib"
      "racket-index"
      "srfi-lib"
      "srfi-doc"
    ];
  };
  "text-table" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/text-table.git#master";
      rev = "f45a78d802e44d0d79e2732efa9d3bcfd635835e";
      ref = "master";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ts-game-jam-1" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/ts-game-jam-1.git";
      rev = "24816ceeb072938926d30e9508aedeb64a960593";
    };

    deps = [
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-rpg.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "continued-fractions" = {
    src = fetchGit {
      url = "https://derend@bitbucket.org/derend/continued-fractions.git";
      rev = "1b64abbd6adcaf781c7873a8489bbeff87cbaa56";
    };

    deps = [
      "base"
      "math-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "ppict" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/ppict";
      rev = "141332655e6c3003f847282d4187882aa8c95792";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "slideshow-lib"
      "racket-doc"
      "scribble-lib"
      "pict-doc"
      "slideshow-doc"
    ];
  };
  "diagrams" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-diagrams.git";
      rev = "ab990ea081e982f7216ed9f7ff3c8e44749cd645";
    };

    deps = [
    ];
  };
  "pipe" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/pipe.git";
      rev = "179b8f8ad92ced86ea8dacec607deb24aefc15aa";
    };

    deps = [
      "typed-racket-lib"
      "base"
      "racket-doc"
      "typed-racket-doc"
      "scribble-lib"
    ];
  };
  "advent-of-code" = {
    src = fetchGit {
      url = "https://github.com/eutro/advent-of-code-racket.git#master";
      rev = "683d3c8647a2b1fddb0dcce5cec937ade1a7e2bf";
      ref = "master";
    };

    deps = [
      "base"
      "net-lib"
      "http-easy"
      "scribble-lib"
      "racket-doc"
      "net-doc"
    ];
  };
  "net-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-lib.zip";
      sha256 = "06aj7qq59vch070g01lw44k4dzr6bjm49b0n1gzaiyvh0765p895";
    };
    deps = [
      "srfi-lite-lib"
      "base"
    ];
  };
  "lathe-ordinals-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-ordinals-for-racket.git";
      rev = "7968ab73b43990ff6607239c742a816b0703612c";
      ref = "main";
    };
    subpath = "lathe-ordinals-lib";
    deps = [
      "base"
      "lathe-comforts-lib"
      "parendown-lib"
    ];
  };
  "nevermore" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/nevermore.git";
      rev = "c281d521670fdd956de256b26075923ea7c8151b";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "racl" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racl";
      rev = "a54859d0e39e61a4b69e46454ad67299d1967c4f";
      ref = "master";
    };
    deps = [
      "srfi-lite-lib"
      "base"
      "dynext-lib"
      "sandbox-lib"
      "rackunit-lib"
    ];
  };
  "parser-tools-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/parser-tools-lib.zip";
      sha256 = "0s6qhirqdsps2ay7n7p35b3mi6v7bp5wy4gw6z0m56qqgh0mcvn6";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "reed-solomon" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-reed-solomon.git";
      rev = "7a25345290d6621463972223c558141f3cdcd7ac";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "sqlite-table" = {
    src = fetchGit {
      url = "https://github.com/jbclements/sqlite-table";
      rev = "d1b892fe91a9413efd42da9ca75b5e1db5333993";
    };

    deps = [
      "base"
      "db-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "zstd" = {
    src = fetchGit {
      url = "https://git.sr.ht/~williewillus/racket-zstd";
      rev = "d2a49b29c4778a513ddaff830881c29d737d7ede";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "draw-win32-i386-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/00ea4a3f75d1e9441edfe4d17ea28e49cdba93d9/draw-win32-i386-2.zip";
      sha256 = "0dc5q69r48l73qyh4k632gm7zcxryp42m5hni2cpaqr45hv2drwh";
    };
    deps = [
      "base"
    ];
  };
  "al2-test-runner" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/al2-test-runner.git";
      rev = "b6757271932151dff6507ee6f1b690d0268da808";
    };

    deps = [
      "base"
      "rackunit-lib"
      "sandbox-lib"
      "racket-doc"
      "rackunit-doc"
      "scribble-lib"
    ];
  };
  "modern-macros-talk" = {
    src = fetchGit {
      url = "https://github.com/rfindler/modern-macros-talk.git";
      rev = "e4c5c2db0a4e69a0bb5f54685081262344c204e2";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "slideshow-lib"
      "drracket-tool-lib"
      "reactor"
      "datalog"
      "recursive-language"
      "redex-gui-lib"
      "dssl2"
      "turnstile-lib"
      "typed-racket-lib"
      "scribble-lib"
    ];
  };
  "http11-server" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/http11-server.git";
      rev = "f45e745600995225fb492adc86bc31597b6b9b3d";
    };

    deps = [
      "http11"
      "string-util"
      "uri"
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "draw-ppc-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/39fff30e20afa9d649f1bcda8017877e18f2a38c/draw-ppc-macosx.zip";
      sha256 = "1qq2dsqhgjhgnrwb4ra9f30z87wxfjbvki0n9cshxd4w98yqvvk3";
    };
    deps = [
      "base"
    ];
  };
  "pmsf-condition" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-condition";
    deps = [
      "base"
      "reprovide-lang-lib"
      "threading-lib"
    ];
  };
  "syndicate-classic" = {
    src = fetchGit {
      url = "https://github.com/tonyg/syndicate.git";
      rev = "0226b74305d3e0d33d5b65a4d03652b5f11c0504";
    };
    subpath = "racket";
    deps = [
      "base"
      "data-lib"
      "htdp-lib"
      "net-lib"
      "profile-lib"
      "rackunit-lib"
      "sha"
      "automata"
      "auxiliary-macro-context"
      "data-enumerate-lib"
      "datalog"
      "db-lib"
      "draw-lib"
      "gui-lib"
      "images-lib"
      "macrotypes-lib"
      "pict-lib"
      "rackunit-macrotypes-lib"
      "rfc6455"
      "sandbox-lib"
      "sgl"
      "struct-defaults"
      "turnstile-example"
      "turnstile-lib"
      "web-server-lib"
      "draw-doc"
      "gui-doc"
      "htdp-doc"
      "pict-doc"
      "racket-doc"
      "scribble-lib"
      "sha"
    ];
  };
  "quickscript-competition-2020" = {
    src = fetchGit {
      url = "https://github.com/Quickscript-Competiton/July2020entries.git";
      rev = "4fca3a6eac86a3af944d4e3763395d31705b59b1";
    };

    deps = [
      "data-lib"
      "base"
      "drracket"
      "gui-lib"
      "htdp-lib"
      "markdown"
      "net-lib"
      "plot-gui-lib"
      "plot-lib"
      "quickscript"
      "rackunit-lib"
      "scribble-lib"
      "search-list-box"
      "syntax-color-lib"
      "at-exp-lib"
    ];
  };
  "plt-web-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plt-web-lib.zip";
      sha256 = "0pr9g75b3i5c06yzp9vp20di7m0z4gywfhfzpn104sir4xssfarl";
    };
    deps = [
      "base"
      "at-exp-lib"
      "scribble-html-lib"
    ];
  };
  "raw-string" = {
    src = fetchGit {
      url = "https://github.com/cmpitg/racket-raw-string";
      rev = "b2745daf6da26c58b0138ab3ec0c20c1133e0ab6";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "ziptie-git" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie-git";
    deps = [
      "base"
      "threading-lib"
    ];
  };
  "lathe-ordinals-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-ordinals-for-racket.git";
      rev = "7968ab73b43990ff6607239c742a816b0703612c";
      ref = "main";
    };
    subpath = "lathe-ordinals-doc";
    deps = [
      "base"
      "lathe-comforts-lib"
      "lathe-ordinals-lib"
      "parendown-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ansi" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-ansi";
      rev = "c14081de59bc7273f1f9088a51d6d9c202b2b9d0";
      ref = "master";
    };
    deps = [
      "base"
      "dynext-lib"
    ];
  };
  "pretty-expressive" = {
    src = fetchGit {
      url = "https://github.com/sorawee/pretty-expressive.git#main";
      rev = "0984931c6f8ff32921dd477c875127de7600dfd5";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "pmap" = {
    src = fetchGit {
      url = "https://github.com/APOS80/pmap";
      rev = "e352de9bbc6735b1ca089a21490f87fc2fba5279";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "math-doc"
    ];
  };
  "phc-adt" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/phc-adt.git";
      rev = "36c1047c4899d1b478cc6052f9b2e71168aeefb5";
      ref = "main";
    };
    subpath = "phc-adt";
    deps = [
      "phc-adt-lib"
      "phc-adt-doc"
      "phc-adt-test"
    ];
  };
  "cs-bootstrap" = {
    src = fetchGit {
      url = "https://github.com/racket/racket.git";
      rev = "5a6921d77bb29363ecd81e56f8ec1b964b60cdf9";
    };
    subpath = "racket/src/rktboot";
    deps = [
      "base"
    ];
  };
  "sasl" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sasl.zip";
      sha256 = "1fzdgxdg009sg0lb3h8zxlp1cf3dxdvknq3vx56rhqxr04g18pmh";
    };
    deps = [
      "sasl-lib"
      "sasl-doc"
      "base"
    ];
  };
  "web-server" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server.zip";
      sha256 = "1gm9x95k3q3h4s9ybmc6vbsk59b59sxrqs21h5d76qvicwx7v71r";
    };
    deps = [
      "web-server-lib"
      "web-server-doc"
    ];
  };
  "profj" = {
    src = fetchGit {
      url = "https://github.com/mflatt/profj";
      rev = "bc30ab369ac92ef3859d57be5c13c9562948bb8a";
      ref = "master";
    };
    deps = [
      "combinator-parser"
      "base"
      "compatibility-lib"
      "drracket-plugin-lib"
      "errortrace-lib"
      "gui-lib"
      "htdp-lib"
      "parser-tools-lib"
      "scheme-lib"
      "srfi-lite-lib"
      "string-constants-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "distro-build-server" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distro-build-server.zip";
      sha256 = "0aaz5bjisb5i1pac002mbxci0vmfj4injig0v9gi1sy4kjf4g8sy";
    };
    deps = [
      "base"
      "distro-build-client"
      "web-server-lib"
      "ds-store-lib"
      "net-lib"
      "scribble-html-lib"
      "plt-web-lib"
      "remote-shell-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "zaoqil" = {
    src = fetchGit {
      url = "https://github.com/zaoqil/zaoqil.git";
      rev = "804a7f5c96d173928205693f244578a19e3cebc5";
    };
    subpath = "racket";
    deps = [
      "racket"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "redis-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-redis.git";
      rev = "df397e05f6e65e3d12c2f1040bd716089644302c";
    };
    subpath = "redis-lib";
    deps = [
      "base"
      "resource-pool-lib"
      "unix-socket-lib"
    ];
  };
  "hidapi" = {
    src = fetchGit {
      url = "https://github.com/jpathy/hidapi.git";
      rev = "91c5e5b8eb7380d3b6031d736e6d8fc9121a7cb0";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "abnf" = {
    src = fetchGit {
      url = "https://github.com/samth/abnf";
      rev = "71bc4739a0b2aa22aa42ad905ba7de5c3e2c7f79";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "pmsf-test" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-test";
    deps = [
      "base"
      "rackunit-lib"
      "threading-lib"
      "vdb-lib"
      "pmsf-condition"
      "pmsf-depend"
      "pmsf-iuse"
      "pmsf-keywords"
      "pmsf-license"
      "pmsf-name"
      "pmsf-required-use"
      "pmsf-restrict"
      "pmsf-slot"
      "pmsf-src-uri"
      "typed-pmsf"
    ];
  };
  "zKanren" = {
    src = fetchGit {
      url = "https://github.com/the-language/zKanren2.git";
      rev = "82c936ed11fa703b3b26895b3a2d7b7f379a8c35";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket"
    ];
  };
  "happy-names" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/happy-names.git";
      rev = "3a74d689059e77106318b751e65b113233008d19";
    };

    deps = [
      "memoize"
    ];
  };
  "rackonsole" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/rackonsole.zip";
      sha256 = "07lvg30jy38j9bhwpn54hwldg992jnbwcixw8ancbva7lzylvzxq";
    };
    deps = [
      "base"
      "mcfly"
      "charterm"
      "gdbdump"
      "compatibility-lib"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "rilouworld" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/rilouworld.git";
      rev = "184dea6c187f4f94da6616b89ec15cc8ba6bb786";
    };

    deps = [
      "base"
      "math-lib"
      "draw-lib"
      "anaphoric"
      "web-server-lib"
      "mode-lambda"
      "lux"
      "reprovide-lang"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "main-distribution" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/main-distribution.zip";
      sha256 = "0g7np5hm60172k6rajv8g95d0jnilqfq8cmdawqq7hxi6vich6lc";
    };
    deps = [
      "2d"
      "algol60"
      "at-exp-lib"
      "compatibility"
      "contract-profile"
      "compiler"
      "data"
      "datalog"
      "db"
      "deinprogramm"
      "draw"
      "draw-doc"
      "draw-lib"
      "drracket"
      "drracket-tool"
      "eopl"
      "expeditor"
      "errortrace"
      "future-visualizer"
      "future-visualizer-typed"
      "frtime"
      "games"
      "gui"
      "htdp"
      "html"
      "icons"
      "images"
      "lazy"
      "macro-debugger"
      "macro-debugger-text-lib"
      "make"
      "math"
      "mysterx"
      "mzcom"
      "mzscheme"
      "net"
      "net-cookies"
      "optimization-coach"
      "option-contract"
      "parser-tools"
      "pconvert-lib"
      "pict"
      "pict-snip"
      "picturing-programs"
      "plai"
      "planet"
      "plot"
      "preprocessor"
      "profile"
      "r5rs"
      "r6rs"
      "racket-doc"
      "distributed-places"
      "racket-cheat"
      "racket-index"
      "racket-lib"
      "racklog"
      "rackunit"
      "rackunit-typed"
      "readline"
      "realm"
      "redex"
      "sandbox-lib"
      "sasl"
      "schemeunit"
      "scribble"
      "serialize-cstruct-lib"
      "sgl"
      "shell-completion"
      "simple-tree-text-markup"
      "slatex"
      "slideshow"
      "snip"
      "srfi"
      "string-constants"
      "swindle"
      "syntax-color"
      "trace"
      "typed-racket"
      "typed-racket-more"
      "unix-socket"
      "web-server"
      "wxme"
      "xrepl"
      "ds-store"
    ];
  };
  "binaryio-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/binaryio";
      rev = "34ad07e9e33cf835670c4697572e93e8a0af5f02";
    };
    subpath = "binaryio-lib";
    deps = [
      "base"
      "data-lib"
    ];
  };
  "poppler-x86-64-macosx" = {
    src = fetchGit {
      url = "https://github.com/soegaard/poppler-libs";
      rev = "f39e31f2b561b457fdbda50117f6bc4802ef14b6";
    };
    subpath = "poppler-x86_64-macosx";
    deps = [
      "base"
    ];
  };
  "thrift" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/racket-thrift.git";
      rev = "bbed34e6af97167ec5e9327c7c6ad739e331e793";
    };

    deps = [
      "base"
      "http"
      "unix-socket-lib"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "chain-module-begin" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/chain-module-begin.git#main";
      rev = "77fca59322b93cb83a2d57c25546dd7a7313bc56";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "debug-scopes"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "koyo-sentry" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo-sentry.git";
      rev = "9eba1b94c07440b5fcca8f4c5ab25c7c4f2518c6";
    };

    deps = [
      "base"
      "koyo-lib"
      "sentry-lib"
      "web-server-lib"
      "racket-doc"
      "scribble-lib"
      "sentry-doc"
      "web-server-doc"
    ];
  };
  "xlist" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/xlist.git#main";
      rev = "e82c02f99186b062df86a92dc63a954861e36064";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "mutable-match-lambda"
      "scribble-enhanced"
      "multi-id"
      "type-expander"
      "typed-racket-lib"
      "typed-racket-more"
      "phc-toolkit"
      "reprovide-lang"
      "match-string"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "scribble-math"
    ];
  };
  "k-infix" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/k-infix.git";
      rev = "ce32c918dd9c96c8366270a3127f5a42e3d2638f";
    };

    deps = [
      "base"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "memoize"
    ];
  };
  "hygienic-quote-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/hygienic-quote-lang";
      rev = "54bd504575b13399c6a1425b7e34dc697b81e14e";
    };

    deps = [
      "base"
      "hygienic-reader-extension"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "xrepl-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-doc.zip";
      sha256 = "16yj9yndfiiygdmxkp1nsic2yyhwhx6j8l9bccwvhys64x6a5bhg";
    };
    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "errortrace-doc"
      "macro-debugger"
      "profile-doc"
      "readline-doc"
      "macro-debugger-text-lib"
      "profile-lib"
      "readline-lib"
      "xrepl-lib"
      "racket-doc"
    ];
  };
  "compatibility-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-test.zip";
      sha256 = "0d0g0sj1x42jl3lnb826isqkvrym9wbza2ws7hp17y0v6wx8jyry";
    };
    deps = [
      "base"
      "racket-test"
      "compatibility-lib"
      "drracket-tool-lib"
      "rackunit-lib"
      "pconvert-lib"
    ];
  };
  "tandem" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-tandem";
      rev = "fa6bae480f6f4a3ae411ca5c3bad7ae5f8d106ac";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "racket-doc"
    ];
  };
  "code-sync" = {
    src = fetchGit {
      url = "https://github.com/rymaju/code-sync.git";
      rev = "d6eb869cac7cf97407e276144ae6f2cac2180377";
    };

    deps = [
      "base"
      "gui-lib"
      "data-lib"
      "drracket-plugin-lib"
      "rfc6455"
      "net"
      "web-server-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "jen-doc" = {
    src = fetchGit {
      url = "https://github.com/HeladoDeBrownie/jen.git";
      rev = "eb49e8f4a84f9a5deb93756669c2208e7590bb37";
      ref = "Unstable";
    };
    subpath = "jen-doc";
    deps = [
      "base"
      "jen-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "digimon" = {
    src = fetchGit {
      url = "https://github.com/wargrey/digimon.git";
      rev = "b1d90409621cf3a3f15f9e7118341df2901ddcc9";
    };

    deps = [
      "base"
      "gui-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-index"
      "sandbox-lib"
      "scribble-lib"
      "math-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "lambda-sh" = {
    src = fetchGit {
      url = "https://github.com/wargrey/lambda-shell.git";
      rev = "6d1c93045887e5fb950f2c64996b1f540d271cf0";
    };

    deps = [
      "base"
      "digimon"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "graphics"
      "math-lib"
      "digimon"
      "scribble-lib"
      "graphics"
      "math-lib"
      "racket-doc"
    ];
  };
  "neu-cs2500-handin" = {
    src = fetchGit {
      url = "https://github.com/nuprl/cs2500-client#f2016";
      rev = "d48c433d69d75ea03c029ec0207faa928796e757";
      ref = "f2016";
    };

    deps = [
      "base"
      "gui-lib"
      "net-lib"
      "drracket"
      "drracket-plugin-lib"
    ];
  };
  "finalizer" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/finalizer";
      rev = "74517770d70b786a3df48fd20ea9ea8059e4a641";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "nasa-open-api" = {
    src = fetchGit {
      url = "https://github.com/m-hugi/nasa-open-api.git";
      rev = "aea1067af82aa4516f192e96bb987751ad2f6316";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "portage-admin-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-portage-admin.git";
      rev = "84fc9d2e2838eca9d576ca0f6862ed0e10841c86";
    };
    subpath = "src/portage-admin-lib";
    deps = [
      "base"
      "gui-lib"
      "plot-gui-lib"
      "plot-lib"
      "threading-lib"
    ];
  };
  "data-frame" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/data-frame.git";
      rev = "3c77217501d6943111e4696c5e35c2f72b7267ba";
    };

    deps = [
      "db-lib"
      "draw-lib"
      "math-lib"
      "plot-gui-lib"
      "plot-lib"
      "srfi-lite-lib"
      "typed-racket-lib"
      "rackunit-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "db-doc"
      "math-doc"
      "plot-doc"
      "al2-test-runner"
    ];
  };
  "racket-i386-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-i386-macosx-3.zip";
      sha256 = "0jg9lpyp5pcdx7hqh7q3aphbw2k18pby23c6bsc28ll41xabfq9y";
    };
    deps = [
      "base"
    ];
  };
  "com-win32-i386" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/com-win32-i386.zip";
      sha256 = "146gs8xr65lraq9304fv6d0r7bhjklgx8204rz1wh4ssj1zc7ddj";
    };
    deps = [
      "base"
    ];
  };
  "punctaffy-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/punctaffy-for-racket.git";
      rev = "2a958bf3987459e9197eb5963fe5107ea2e2e912";
      ref = "main";
    };
    subpath = "punctaffy-lib";
    deps = [
      "base"
      "lathe-comforts-lib"
      "lathe-morphisms-lib"
      "reprovide-lang-lib"
      "parendown-lib"
    ];
  };
  "pict-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-test.zip";
      sha256 = "0zzzaddrdgwwwaslhf2isrbqv7y3bkn9dqfqflbyis59qmy6vyz5";
    };
    deps = [
      "base"
      "pict-lib"
      "rackunit-lib"
      "htdp-lib"
      "draw-lib"
    ];
  };
  "threading-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/threading";
      rev = "aedb198261cf73b3f9b282566e7e7dd9b9be63a6";
    };
    subpath = "threading-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "threading-lib"
    ];
  };
  "nsf-scribble" = {
    src = fetchGit {
      url = "https://github.com/chrdimo/nsf-scribble.git";
      rev = "0552f396375894cd9df7be7fb1f314df70be4462";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "pcg" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/pcg.git";
      rev = "4a03a774377ff84aae29c563bc5170edd9a200e0";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "draw-ppc-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-ppc-macosx-3.zip";
      sha256 = "0zhc7ivl0z6fa9gja9496kcplszpslnjc29bh6qzaqnnpyarm3y4";
    };
    deps = [
      "base"
    ];
  };
  "routy" = {
    src = fetchGit {
      url = "https://github.com/Junker/routy.git";
      rev = "68409310aa853d2b72030f9029abb92bbbdb170e";
    };

    deps = [
      "base"
      "web-server-lib"
      "rackunit-lib"
      "racket-route-match"
      "response-ext"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "web-server-doc"
    ];
  };
  "aosd" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-aosd";
      rev = "7ab51262a256a324b062d7b407cb5341d1f41f69";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "x11"
    ];
  };
  "rsa" = {
    src = fetchGit {
      url = "https://github.com/mgbowe1/racket-rsa";
      rev = "0498189663e984d849ef4f2109cfd32058b247e0";
    };

    deps = [
    ];
  };
  "scribble-bettergrammar" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-bettergrammar.git";
      rev = "75aa8759e19da7ed240acfbbdae9239126502866";
      ref = "main";
    };
    subpath = "scribble-bettergrammar";
    deps = [
      "scribble-bettergrammar-lib"
      "scribble-bettergrammar-doc"
    ];
  };
  "words" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/words.git";
      rev = "ae0030aefa03d3cde4f6549a9b77561742d88e34";
    };

    deps = [
      "gui-lib"
      "icns"
      "beautiful-racket-lib"
      "base"
      "debug"
      "rackunit-lib"
    ];
  };
  "compact-annotations" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/compact-annotations";
      rev = "dcd5f87dec21f40904e92eefb747472151bd3ace";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "cover"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "bs" = {
    src = fetchGit {
      url = "https://github.com/oldsin/bs.git";
      rev = "0a88ed7217076a6286fdaef0183bea596149991b";
    };

    deps = [
      "base"
      "brag"
      "crypto-lib"
      "parser-tools-lib"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "plai-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plai-doc.zip";
      sha256 = "19bnsy0x8lj2kax6dig095w2dg346hzdpc920kl4zj9m78zc479z";
    };
    deps = [
      "scheme-lib"
      "srfi-lite-lib"
      "base"
      "gui-lib"
      "sandbox-lib"
      "web-server-lib"
      "plai-lib"
      "at-exp-lib"
      "scheme-doc"
      "eli-tester"
      "pconvert-lib"
      "rackunit-lib"
      "racket-doc"
      "web-server-doc"
      "scribble-lib"
      "drracket-tool-lib"
    ];
  };
  "polysemy" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/polysemy.git#main";
      rev = "5d9838618ae6d6b8c412eaf30bac4bfa9fcf12c9";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "Drrackgit" = {
    src = fetchGit {
      url = "https://github.com/bbusching/drrackgit";
      rev = "7c2836bf5a08858eca7d32959d8ae3fd90a5defe";
    };

    deps = [
      "libgit2"
    ];
  };
  "libvid-x86_64-macosx-0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-x86_64-macosx";
    deps = [
      "base"
    ];
  };
  "datalog" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/datalog.zip";
      sha256 = "15gbn6z87b6kmc7nh7vggppx0qfi8ivqfg8sh8xj3r62nr1xby86";
    };
    deps = [
      "base"
      "parser-tools-lib"
      "syntax-color-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "compatibility-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-lib.zip";
      sha256 = "0zr4md8xh34wpd91qbiy7bl7xlbaazghjpwwxxv9bsys021vbybp";
    };
    deps = [
      "scheme-lib"
      "base"
      "net-lib"
      "sandbox-lib"
    ];
  };
  "struct-persist" = {
    src = fetchGit {
      url = "https://github.com/javiervivanco/struct-persist.git#master";
      rev = "e577dc0f834123abeb14e82db868ce3769fe84cc";
      ref = "master";
    };

    deps = [
      "base"
      "buid"
      "rackunit"
    ];
  };
  "mini-theme" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/mini-theme.git#develop";
      rev = "0dc671679070aeaeebe1bf23b741d914bf5b8892";
      ref = "develop";
    };

    deps = [
      "base"
      "scribble-lib"
    ];
  };
  "tablesci" = {
    src = fetchGit {
      url = "https://gitlab.com/hashimmm/tablesci.git";
      rev = "43c4544d64e9d218acabe167bfa3c894fa6f5f42";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "brag-lib"
      "rackunit-lib"
    ];
  };
  "mzcom" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mzcom.zip";
      sha256 = "1lwwmw6vhj67hsyc059v7dlc9b338h6k2xbw8j3d3ri4i22sm5g7";
    };
    deps = [
      "base"
      "compatibility-lib"
      "scheme-lib"
      "racket-doc"
      "mysterx"
      "scribble-lib"
    ];
  };
  "ralist" = {
    src = fetchGit {
      url = "https://github.com/dvanhorn/ralist";
      rev = "8f830a01463c547d2588671e76202cfe566a3fb1";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
    ];
  };
  "gregor" = {
    src = fetchGit {
      url = "https://github.com/97jaz/gregor.git";
      rev = "2d20192e8795e01a1671869dddaf1984f0cbafee";
    };
    subpath = "gregor";
    deps = [
      "gregor-lib"
      "gregor-doc"
      "base"
    ];
  };
  "destruct" = {
    src = fetchGit {
      url = "https://github.com/MichaelBurge/destruct";
      rev = "5ecd7cbb6848b38f68e5152ac09164b6eeb3e6d8";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "graphics" = {
    src = fetchGit {
      url = "https://github.com/wargrey/graphics";
      rev = "fd0ca72558c49202b3ed41dfb28c81d3fe2aba1a";
    };

    deps = [
      "base"
      "digimon"
      "math-lib"
      "draw-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "digimon"
      "w3s"
    ];
  };
  "bitwise-ops" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/bitwise-ops.git#main";
      rev = "07073195769cedb3e2336ef8c6ece568323e4e4e";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "viz" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-viz.git";
      rev = "";
    };

    deps = [
    ];
  };
  "xsmith" = {
    src = fetchGit {
      url = "https://gitlab.flux.utah.edu/xsmith/xsmith.git";
      rev = "de6ace161b0a09a8137c38a181a66c1403f5698a";
      ref = "current-release";
    };
    subpath = "xsmith";
    deps = [
      "base"
      "version-string-with-git-hash"
      "quickcheck"
      "rackunit-lib"
      "at-exp-lib"
      "pprint"
      "racr"
      "clotho"
      "math-lib"
      "unix-socket-lib"
      "memoize"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "scribble-rainbow-delimiters" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/scribble-rainbow-delimiters.git";
      rev = "5ddb7a7563686a8b2c84e526aace9c0ca23c76ef";
    };

    deps = [
      "base"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "web-sessions" = {
    src = fetchGit {
      url = "https://bitbucket.org/nadeemabdulhamid/web-sessions.git";
      rev = "ba973ee46a41a81536ddf5d6a8ea8f928385b217";
    };

    deps = [
    ];
  };
  "rawk" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-rawk.git";
      rev = "3098de5140da665e1259ebb087b29486298eed69";
    };
    subpath = "src/rawk";
    deps = [
      "base"
      "rawk-doc"
      "rawk-test"
      "rawk-tool"
    ];
  };
  "sweet-exp-lib" = {
    src = fetchGit {
      url = "https://github.com/takikawa/sweet-racket";
      rev = "460a2f52db582014c144f4cc83ee8e2703f46cc7";
    };
    subpath = "sweet-exp-lib";
    deps = [
      "base"
    ];
  };
  "buid-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-buid.git";
      rev = "cc016257fd517f5e17643a58e6062dc6119f2fe6";
    };
    subpath = "buid-lib";
    deps = [
      "base"
    ];
  };
  "redis" = {
    src = fetchGit {
      url = "https://github.com/stchang/redis";
      rev = "ec69a3ea1c6b5eda35502361bc88d204c38b1120";
      ref = "master";
    };
    deps = [
      "base"
      "data-lib"
      "rackunit-lib"
    ];
  };
  "hackett-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/hackett.git";
      rev = "e90ace9e4a056ec0a2a267f220cb29b756cbefce";
    };
    subpath = "hackett-test";
    deps = [
      "base"
      "hackett-lib"
      "rackunit-lib"
      "sandbox-lib"
      "testing-util-lib"
    ];
  };
  "crypto-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/crypto.git";
      rev = "129997ab537db2eea142b5eb25cf2fc74a19d4ec";
    };
    subpath = "crypto-lib";
    deps = [
      "base"
      "asn1-lib"
      "base64-lib"
      "binaryio-lib"
      "gmp-lib"
      "scramble-lib"
    ];
  };
  "linux-shared-libraries" = {
    src = fetchGit {
      url = "https://github.com/soegaard/linux-shared-libraries.git";
      rev = "f49d1bd6794437482c46d351c71313070e0244d5";
    };

    deps = [
      "base"
    ];
  };
  "megaparsack-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/megaparsack";
      rev = "0ccdee4270da0337700ac62aa106735d0d879695";
    };
    subpath = "megaparsack-lib";
    deps = [
      "base"
      "curly-fn-lib"
      "functional-lib"
      "match-plus"
    ];
  };
  "effects" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-effects.git";
      rev = "e4e7cd99e120660b84baa6c7612995a528e8a1b2";
    };

    deps = [
      "base"
    ];
  };
  "wffi" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/wffi";
      rev = "03bd59bea2aa6e0a855de28fb5bb18769ed04b3b";
      ref = "master";
    };
    deps = [
      "base"
      "http"
      "parser-tools-lib"
      "rackunit-lib"
    ];
  };
  "minipascal" = {
    src = fetchGit {
      url = "https://github.com/soegaard/minipascal";
      rev = "646c1cedefc3d269db43b9d186d892655d4efb78";
      ref = "master";
    };
    deps = [
      "ragg"
      "base"
      "parser-tools-lib"
      "base"
      "parser-tools-lib"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "simple-http" = {
    src = fetchGit {
      url = "https://github.com/DarrenN/simple-http";
      rev = "cf15bfd0c71f3dd3189417dd1a7a34fc6bfad557";
    };

    deps = [
      "base"
      "rackunit-lib"
      "html-parsing"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "array" = {
    src = fetchGit {
      url = "https://github.com/rvs314/array.git";
      rev = "c671a08ba55093a4cf6a869aa0365521637d3e50";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "typeset-rewriter" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/typeset-rewriter#master";
      rev = "38164dca24bb66127ba40ba5a8293b304a2e8e1c";
      ref = "master";
    };

    deps = [
      "base"
      "redex-pict-lib"
    ];
  };
  "scribble-minted-lib" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-minted.git";
      rev = "935ad9cd76f7598a60ac3981f94171c486fa91ee";
      ref = "main";
    };
    subpath = "scribble-minted-lib";
    deps = [
      "rackunit-lib"
      "scribble-lib"
      "base"
    ];
  };
  "rsvg" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-rsvg";
      rev = "0945d7ae08880996a3409e2e7143273b06345c93";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "pict-doc"
      "scribble-lib"
      "rackunit-lib"
      "scribble-lib"
      "pict-lib"
      "draw-doc"
      "racket-doc"
      "slideshow-doc"
    ];
  };
  "loess" = {
    src = fetchGit {
      url = "https://github.com/ralsei/loess.git";
      rev = "db88acff8c0265768cbd62072a895ef67dbccf37";
    };

    deps = [
      "base"
      "math-lib"
      "plot-lib"
      "typed-racket-lib"
      "plot-doc"
      "plot-gui-lib"
      "racket-doc"
      "scribble-lib"
      "typed-racket-doc"
    ];
  };
  "rml-neural" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/rml-neural.git";
      rev = "5e3c95ab118007e16ac25627229674894e8c5302";
    };

    deps = [
      "base"
      "math-lib"
      "plot-gui-lib"
      "plot-lib"
      "rackunit-lib"
      "scribble-lib"
      "scribble-math"
      "racket-doc"
      "racket-index"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "turnstile" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "turnstile";
    deps = [
      "turnstile-lib"
      "turnstile-example"
      "turnstile-doc"
      "turnstile-test"
    ];
  };
  "ziptie-distro" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie-distro";
    deps = [
      "base"
      "threading-lib"
    ];
  };
  "job-queue" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/job-queue";
      rev = "0a2c349636aa88b06c9c299ef201494df648b164";
    };
    subpath = "job-queue";
    deps = [
      "base"
      "job-queue-lib"
      "job-queue-doc"
    ];
  };
  "interconfection-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/interconfection-for-racket.git";
      rev = "fc28969ac94ab3d7277b4b8771ecdc6c9bffc513";
      ref = "main";
    };
    subpath = "interconfection-doc";
    deps = [
      "base"
      "interconfection-lib"
      "lathe-comforts-doc"
      "lathe-comforts-lib"
      "parendown-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "racket-cheat" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-cheat.zip";
      sha256 = "1ssdr64z0sxwihb4mik9gn303v1dg6kazs4pnh5nj36sa8yjrghr";
    };
    deps = [
      "base"
      "scribble-lib"
      "db-doc"
      "db-lib"
      "drracket"
      "net-doc"
      "net-lib"
      "parser-tools-doc"
      "parser-tools-lib"
      "pict-doc"
      "pict-lib"
      "racket-doc"
      "sandbox-lib"
      "slideshow-doc"
      "slideshow-lib"
    ];
  };
  "openmpi" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/openmpi";
      rev = "0750c3443492b1b240fdb246dc61cee542ec7b3d";
      ref = "master";
    };
    deps = [
      "base"
      "parser-tools-lib"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
    ];
  };
  "mordae" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-mordae";
      rev = "01d86a7453241f438b01a37f991a28feeb43df8e";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "racket-doc"
      "typed-racket-lib"
    ];
  };
  "graphite-tutorial" = {
    src = fetchGit {
      url = "https://github.com/ralsei/graphite.git";
      rev = "58a7bc54345e9b0bc5ac080401757f76d3999b0c";
    };
    subpath = "graphite-tutorial";
    deps = [
      "base"
      "plot-doc"
      "data-frame"
      "graphite-doc"
      "graphite-lib"
      "racket-doc"
      "sandbox-lib"
      "sawzall-doc"
      "sawzall-lib"
      "scribble-lib"
      "threading-doc"
      "threading-lib"
    ];
  };
  "loop" = {
    src = fetchGit {
      url = "https://github.com/sorawee/loop.git";
      rev = "10338757e7ef5ce297070b6c2c4a74678430bb9c";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "plot-gui-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-gui-lib.zip";
      sha256 = "0i3d6jp3w66ln5zhypmvq9wa8qja9vvgdm3bfas6i6cqkj92i6c4";
    };
    deps = [
      "base"
      "plot-lib"
      "math-lib"
      "gui-lib"
      "snip-lib"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "latex-pict" = {
    src = fetchGit {
      url = "https://github.com/soegaard/latex-pict.git";
      rev = "847bd5f42903fa1b357125cee67b9a2addf240c6";
    };

    deps = [
      "base"
      "pict-lib"
      "racket-poppler"
      "scribble-lib"
      "racket-doc"
      "draw-doc"
      "pict-doc"
    ];
  };
  "ziptie-completion" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie-completion";
    deps = [
      "base"
      "threading-lib"
    ];
  };
  "lsl" = {
    src = fetchGit {
      url = "https://github.com/logiccomp/lsl.git";
      rev = "ef7fc1f7d95287f0fbe85cde54b24fe601ad7910";
      ref = "main";
    };
    subpath = "lsl";
    deps = [
      "errortrace-lib"
      "base"
      "lsl-lib"
      "automata-doc"
      "compatibility-doc"
      "htdp-doc"
      "htdp-lib"
      "chk-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "warp" = {
    src = fetchGit {
      url = "https://github.com/david-vanderson/warp.git";
      rev = "cdc1d0bd942780fb5360dc6a34a2a06cf9518408";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "mode-lambda"
    ];
  };
  "send-exp" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-send-exp";
      rev = "fcbb060fb9a0d8efc6810f6d77accf11093f6c8e";
    };

    deps = [
      "base"
    ];
  };
  "map-widget" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/map-widget.git";
      rev = "2a0846244bb1450c029fdb853678f9b77794a184";
    };

    deps = [
      "draw-lib"
      "errortrace-lib"
      "gui-lib"
      "db-lib"
      "math-lib"
      "base"
      "http-easy"
      "geoid"
      "rackunit-lib"
      "pict-lib"
      "scribble-lib"
      "draw-doc"
      "gui-doc"
      "racket-doc"
      "pict-doc"
      "al2-test-runner"
    ];
  };
  "ts-camp-jam-1" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/ts-camp-jam-1.git";
      rev = "11eece35a6f3c562f4d2b767e2fbbdeb06ffeeec";
    };

    deps = [
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/ts-kata-util.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "slack-archive-viewer" = {
    src = fetchGit {
      url = "https://github.com/benknoble/slack-archive-viewer.git#main";
      rev = "edfac302413e3074ff38b2541e55404951b94eee";
      ref = "main";
    };

    deps = [
      "sass"
      "jsond"
      "pollen"
      "beeswax"
      "txexpr"
      "sugar"
      "markdown"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "relation-test" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/relation.git";
      rev = "a88f119147d054f00b02a6deac4f2fc644780b75";
      ref = "master";
    };
    subpath = "relation-test";
    deps = [
      "base"
      "arguments"
      "collections-lib"
      "functional-lib"
      "qi-lib"
      "rackunit-lib"
      "relation-lib"
    ];
  };
  "pmsf-slot" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-slot";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "pmsf-lib"
    ];
  };
  "racketmq" = {
    src = fetchGit {
      url = "https://git.syndicate-lang.org/syndicate-lang/racketmq-2017.git#main";
      rev = "1a764691e735798dd00e5b467bfdf4f16367d85e";
      ref = "main";
    };

    deps = [
      "base"
      "syndicate-classic"
      "web-server-lib"
      "rackunit-lib"
    ];
  };
  "config" = {
    src = fetchGit {
      url = "https://github.com/themetaschemer/config.git";
      rev = "c74575ee9126abb940f0de7e3f476f36c4e81cf4";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "bazaar" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/bazaar";
      rev = "c88080ee012877102a473158266c08c620a38b4f";
      ref = "master";
    };
    deps = [
      "base"
      "data-lib"
      "define2"
      "draw-lib"
      "gui-lib"
      "images"
      "math-lib"
      "net-lib"
      "plot-gui-lib"
      "plot-lib"
      "racket-index"
      "rackunit-lib"
      "scribble-lib"
      "slideshow-lib"
      "srfi-lite-lib"
    ];
  };
  "pprint" = {
    src = fetchGit {
      url = "https://github.com/takikawa/pprint.plt";
      rev = "7845c3bf102b499b38ea05df21e16c6cf96af520";
    };

    deps = [
      "base"
      "dherman-struct"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ming" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/ming.git";
      rev = "c350334bb30fc6f6e5e8379adb8b17ffa3079a23";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "sandbox-lib"
      "scribble-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "shplait" = {
    src = fetchGit {
      url = "https://github.com/mflatt/shplait.git";
      rev = "e8da0e1a8a22e5d1f0b1ec6603697471a571b780";
    };

    deps = [
      "base"
      "rhombus-prototype"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "graph-doc" = {
    src = fetchGit {
      url = "https://github.com/stchang/graph.git";
      rev = "9d77ab184e26f4f3c917c7bd49eda2e980a24fae";
    };
    subpath = "graph-doc";
    deps = [
      "base"
      "graph-lib"
      "racket-doc"
      "math-doc"
      "math-lib"
      "scribble-lib"
    ];
  };
  "relation" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/relation.git";
      rev = "a88f119147d054f00b02a6deac4f2fc644780b75";
      ref = "master";
    };
    subpath = "relation";
    deps = [
      "base"
      "relation-lib"
      "relation-doc"
      "relation-test"
    ];
  };
  "lathe-comforts-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-comforts-for-racket.git";
      rev = "43829a1613140d6b12ee1d078ea1d08f9f0c1827";
      ref = "main";
    };
    subpath = "lathe-comforts-doc";
    deps = [
      "base"
      "lathe-comforts-lib"
      "parendown-doc"
      "parendown-lib"
      "racket-doc"
      "reprovide-lang-lib"
      "scribble-lib"
    ];
  };
  "fexpress-lib" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/fexpress.git";
      rev = "b5c951fddebc3e4d3463cdf78dc9d417de97d50f";
      ref = "main";
    };
    subpath = "fexpress-lib";
    deps = [
      "base"
    ];
  };
  "scripty-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/scripty.git";
      rev = "09a0e2fd24dfcd5942177d4a328821534ee60ded";
    };
    subpath = "scripty-lib";
    deps = [
      "base"
    ];
  };
  "openfst" = {
    src = fetchGit {
      url = "https://github.com/AlexMaclean/racket-openfst.git";
      rev = "cdd7ce0f62d159c56fc77df2fc299045f37e5d50";
    };
    subpath = "openfst";
    deps = [
      "base"
      "openfst-x86_64-linux"
      "openfst-x86_64-win32"
      "openfst-x86_64-macosx"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "x64asm-lib" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/racket-x64asm.git";
      rev = "b8a4e9998428f4f0b1d083d74d9730e8369f0110";
    };
    subpath = "x64asm-lib";
    deps = [
      "base"
      "typed-racket-lib"
    ];
  };
  "graphite-doc" = {
    src = fetchGit {
      url = "https://github.com/ralsei/graphite.git";
      rev = "58a7bc54345e9b0bc5ac080401757f76d3999b0c";
    };
    subpath = "graphite-doc";
    deps = [
      "base"
      "loess"
      "draw-doc"
      "plot-gui-lib"
      "simple-polynomial"
      "data-frame"
      "graphite-lib"
      "graphite-tutorial"
      "pict-doc"
      "pict-lib"
      "plot-doc"
      "plot-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "gregor"
    ];
  };
  "cur-lib" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/cur.git";
      rev = "98f721818c72966df3171a504f14a5e550a6fcfd";
      ref = "main";
    };
    subpath = "cur-lib";
    deps = [
      "base"
      "turnstile-lib"
      "macrotypes-lib"
      "reprovide-lang-lib"
    ];
  };
  "tabular-asa" = {
    src = fetchGit {
      url = "https://github.com/massung/tabular-asa.git";
      rev = "90365df6b81f827a1d5663627e136dc835ff61fc";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "csv-reading"
    ];
  };
  "cur" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/cur.git";
      rev = "98f721818c72966df3171a504f14a5e550a6fcfd";
      ref = "main";
    };
    subpath = "cur";
    deps = [
      "cur-lib"
      "cur-doc"
      "cur-test"
    ];
  };
  "plot-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-test.zip";
      sha256 = "0kp4lbjgpnyi2dnshqbkfs9c89xhgnqpmg20kp25fv901h42nksv";
    };
    deps = [
      "base"
      "plot-compat"
      "plot-gui-lib"
      "plot-lib"
      "plot-doc"
      "draw-lib"
      "pict-lib"
      "rackunit-lib"
      "slideshow-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "contract-profile"
    ];
  };
  "staged-slide" = {
    src = fetchGit {
      url = "https://github.com/stamourv/staged-slide";
      rev = "28b9389ea83984306dd50b634cb795c3bd86ca41";
    };

    deps = [
      "base"
      "pict-lib"
      "slideshow-lib"
      "scribble-lib"
      "pict-doc"
      "racket-doc"
      "slideshow-doc"
    ];
  };
  "syntax-color-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color-test.zip";
      sha256 = "1a4l160zc9lpcbq33krxr0vs9gakazgdr8nmbm5smpjyhbf3mzgs";
    };
    deps = [
      "base"
      "rackunit-lib"
      "scheme-lib"
      "syntax-color-lib"
      "gui-lib"
    ];
  };
  "rbulkresizer" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/rbulkresizer.git";
      rev = "fc00d861a31ba2417ac946f47570cbbd3e04ae58";
    };

    deps = [
      "base"
      "gui-lib"
      "htdp-lib"
      "net-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "cow-repl" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-cow-repl";
      rev = "19b38c35a868d3e3fe02d4f5fcc59e8212c37228";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "json-socket" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-json-socket";
      rev = "0acf5117ed335133e30a4ab6593278a4534ac42e";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
    ];
  };
  "portage-admin" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-portage-admin.git";
      rev = "84fc9d2e2838eca9d576ca0f6862ed0e10841c86";
    };
    subpath = "src/portage-admin";
    deps = [
      "base"
      "portage-admin-doc"
      "portage-admin-lib"
      "portage-admin-test"
    ];
  };
  "plot-bestfit" = {
    src = fetchGit {
      url = "https://github.com/florence/plot-bestfit";
      rev = "dd6ffbef2626d7cc7e6802389ce53d57d36bb21d";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "plot-lib"
      "plot-gui-lib"
      "math-lib"
      "racket-doc"
      "typed-racket-doc"
      "scribble-lib"
      "math-doc"
      "plot-doc"
    ];
  };
  "extensible-parser-specifications" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/extensible-parser-specifications.git#main";
      rev = "616130a74b83cf7790257150655949698a7a3913";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "phc-toolkit"
      "generic-syntax-expanders"
      "alexis-util"
      "scribble-lib"
      "racket-doc"
      "seq-no-order"
    ];
  };
  "vlc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/vlc.zip";
      sha256 = "09xlp644dxanzyvvw2fjrxhlncdvi56yj54nyjfhlf0wr7dl0jb6";
    };
    deps = [
      "base"
      "mcfly"
      "overeasy"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ring-buffer" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/ring-buffer";
      rev = "e93665407487ca0d31e1dadebc570371044f0c27";
      ref = "master";
    };
    deps = [
      "base"
      "eli-tester"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "recaptcha" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/recaptcha.git#main";
      rev = "ca38159c2358657de0580eb65a3bdcc6d45d42b5";
      ref = "main";
    };

    deps = [
      "base"
      "web-server-lib"
      "scribble-lib"
      "racket-doc"
      "web-server-doc"
    ];
  };
  "scribble" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble.zip";
      sha256 = "184hnvi7zba6386526b576fzg618b5zgzmfk9klnndv51g67naf2";
    };
    deps = [
      "scribble-lib"
      "scribble-doc"
    ];
  };
  "scgi" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/scgi.zip";
      sha256 = "0849vlvg85ipjvd62a3zb09g5q44bgb7r740h5psjck6z2z4832k";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "json-lexer" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-json-lexer.git";
      rev = "d3b61463971d495d3b7ae834f2c3256faf2ed593";
    };
    subpath = "json-lexer";
    deps = [
      "base"
      "json-lexer-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "markdown-ng" = {
    src = fetchGit {
      url = "https://github.com/pmatos/markdown-ng.git";
      rev = "2df7fd1dca47faa99799f427275f3f4ee1f50a32";
    };

    deps = [
      "base"
      "parsack"
      "sandbox-lib"
      "scribble-lib"
      "srfi-lite-lib"
      "threading-lib"
      "at-exp-lib"
      "html-lib"
      "racket-doc"
      "rackunit-lib"
      "redex-lib"
      "scribble-doc"
      "sexp-diff"
      "markdown"
    ];
  };
  "glass" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/glass.git";
      rev = "a5b25ed7716598b49ccdb5b6917d0eacd95764cf";
    };

    deps = [
      "base"
      "fancy-app"
      "rebellion"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "spvector" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/spvector";
      rev = "aba0ba4f4d8df27dc17252b984eca2f76f4ae414";
      ref = "master";
    };
    deps = [
      "base"
      "compatibility-lib"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "match-plus" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-match-plus.git";
      rev = "cd72471c582f5c20ec35a96fa08936f4f3fd6c47";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "draw-win32-x86_64-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/39780d836728fe4be90460a861a3b6bcaf530aa2/draw-win32-x86_64-2.zip";
      sha256 = "140vmscfgmxfzdsrkzx4sgxsd7m28wjy9sc04znkq8xhmj24hrgn";
    };
    deps = [
      "base"
    ];
  };
  "binary-class-riff" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/binary-class-riff";
      rev = "ddad0c7fa1e1f7a3b990809bcccbd521204e2fd0";
    };

    deps = [
      "base"
      "binary-class"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "asn1" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/asn1.git";
      rev = "3cd32b61a68b40ec03bed98cd0c4d4d4f72cacf2";
    };
    subpath = "asn1";
    deps = [
      "base"
      "asn1-lib"
      "asn1-doc"
    ];
  };
  "compiler-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compiler-lib.zip";
      sha256 = "0biyynbg5ma2idfswbh5mqzyvmf2nxazsp8xzp0dbafqpbpxavyw";
    };
    deps = [
      "base"
      "scheme-lib"
      "rackunit-lib"
      "zo-lib"
    ];
  };
  "SAT" = {
    src = fetchGit {
      url = "https://github.com/Kraks/SAT.rkt";
      rev = "68cf0699f447d2c420db3b8a03fe83163af62dbe";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "expr-in-racket" = {
    src = fetchGit {
      url = "https://github.com/connor2059/expr-in-racket.git";
      rev = "fa8266d311df18010da4e56648e06a9fe53c6b0b";
    };

    deps = [
    ];
  };
  "java-array-list" = {
    src = fetchGit {
      url = "https://github.com/johnnyodonnell/java-array-list.git#master";
      rev = "530c76031abb521e0ac6782053f6555c0e9e9590";
      ref = "master";
    };

    deps = [
      "base"
    ];
  };
  "Packrat" = {
    src = fetchGit {
      url = "https://github.com/simonhaines/packrat.git";
      rev = "b439a1d997df7bc6cf5d5c4f349355d84cb89e03";
    };

    deps = [
      "base"
      "rackunit-lib"
      "srfi-lite-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "wordle-solver" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/wordle-solver.git";
      rev = "4c7b2c5010bcf4ef0bf1630b09eba4b71d3fef5d";
    };

    deps = [
      "base"
      "define2"
      "global"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "jen-lib" = {
    src = fetchGit {
      url = "https://github.com/HeladoDeBrownie/jen.git";
      rev = "eb49e8f4a84f9a5deb93756669c2208e7590bb37";
      ref = "Unstable";
    };
    subpath = "jen-lib";
    deps = [
      "base"
    ];
  };
  "typed-colorize" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-typed-colorize.git";
      rev = "27e9d7d219fe842018cb3aabfcd081d8220f94e0";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "colorize"
    ];
  };
  "binary-class" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/binary-class";
      rev = "6eaf37b5de716d377c3c6ab4658addc5ae70bd45";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "bech32" = {
    src = fetchGit {
      url = "https://github.com/MohamedLEGH/bech32.git";
      rev = "1e6f6ab3a45cf38dcef8161929a4d4ab44fde2e3";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "gillette" = {
    src = fetchGit {
      url = "https://github.com/jessealama/gillette.git";
      rev = "0f574df183aa91762697f1bce3961c3d425896ea";
    };
    subpath = "gillette";
    deps = [
      "gillette-lib"
      "gillette-doc"
    ];
  };
  "interconfection-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/interconfection-for-racket.git";
      rev = "fc28969ac94ab3d7277b4b8771ecdc6c9bffc513";
      ref = "main";
    };
    subpath = "interconfection-test";
    deps = [
      "base"
      "interconfection-lib"
      "lathe-comforts-lib"
      "rackunit-lib"
      "parendown-lib"
    ];
  };
  "marionette-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/marionette.git";
      rev = "daac17634775dc516611de6ea1e4c43776d64405";
    };
    subpath = "marionette-test";
    deps = [
      "base"
      "marionette-lib"
      "rackunit-lib"
    ];
  };
  "try" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/try.git";
      rev = "b73f3053ac6930443bbbc6a12cfd947e1b4d9413";
    };

    deps = [
      "typed-racket-lib"
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "Stacker" = {
    src = fetchGit {
      url = "https://github.com/LuKC1024/stacker.git#main";
      rev = "c7451b54ed95f6f3da88baa0800e2c7b630d747d";
      ref = "main";
    };

    deps = [
      "base"
      "plait"
      "pict-lib"
      "pprint"
      "gui-lib"
      "draw-lib"
      "redex-gui-lib"
      "sandbox-lib"
      "testing-util-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "lang" = {
    src = fetchGit {
      url = "https://github.com/zaoqil/zaoqil.git";
      rev = "804a7f5c96d173928205693f244578a19e3cebc5";
    };
    subpath = "racket";
    deps = [
      "racket"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "libvid-i386-linux-0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-i386-linux";
    deps = [
      "base"
    ];
  };
  "interconfection-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/interconfection-for-racket.git";
      rev = "fc28969ac94ab3d7277b4b8771ecdc6c9bffc513";
      ref = "main";
    };
    subpath = "interconfection-lib";
    deps = [
      "base"
      "lathe-comforts-lib"
      "reprovide-lang-lib"
      "parendown-lib"
    ];
  };
  "poppler-win32-x86-64" = {
    src = fetchGit {
      url = "https://github.com/soegaard/poppler-libs";
      rev = "f39e31f2b561b457fdbda50117f6bc4802ef14b6";
    };
    subpath = "poppler-win32-x86_64";
    deps = [
      "base"
    ];
  };
  "macrokey-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-macrokey.git";
      rev = "7b7063fa5efee392f309b4b208df927868735495";
    };
    subpath = "src/macrokey-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "macrokey-lib"
    ];
  };
  "plot-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-lib.zip";
      sha256 = "0kw5j53ll9gljds0vqzv7fgfa5alw6nfgybxfk8qnn71367p29xs";
    };
    deps = [
      "base"
      "draw-lib"
      "pict-lib"
      "db-lib"
      "srfi-lite-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "compatibility-lib"
      "math-lib"
    ];
  };
  "cover-lib" = {
    src = fetchGit {
      url = "https://github.com/florence/cover.git";
      rev = "ad50ffa8f6246053bec24b39b9cae7fad1534373";
      ref = "release";
    };
    subpath = "cover-lib";
    deps = [
      "base"
      "compiler-lib"
      "custom-load"
      "data-lib"
      "errortrace-lib"
      "syntax-color-lib"
      "testing-util-lib"
    ];
  };
  "racket-x86_64-linux-natipkg-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-x86_64-linux-natipkg-3.zip";
      sha256 = "1js4p9rqpr34xzgs6zadw9m3jhwgnlb2qrzr3nfqx2kl73dj2j8z";
    };
    deps = [
      "base"
    ];
  };
  "mmap" = {
    src = fetchGit {
      url = "https://github.com/samth/mmap";
      rev = "8ead18bc73fa629ae352471c63a7b0847b18fb3f";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "crypto" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/crypto.git";
      rev = "129997ab537db2eea142b5eb25cf2fc74a19d4ec";
    };
    subpath = "crypto";
    deps = [
      "base"
      "crypto-lib"
      "crypto-doc"
    ];
  };
  "rkt-tree-widget" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/rkt-tree-widget.git";
      rev = "0c6e354874f063338cb4549f7d4a0338d6ea6586";
    };

    deps = [
      "base"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "rackunit-lib"
    ];
  };
  "ffmpeg-x86_64-win32" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "ffmpeg-x86_64-win32";
    deps = [
      "base"
    ];
  };
  "kafka-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-kafka.git";
      rev = "1ac07163404b7ff2dbdc69a545a88dbb0bbd09ea";
    };
    subpath = "kafka-lib";
    deps = [
      "base"
      "binfmt-lib"
      "libzstd"
      "lz4-lib"
      "net-lib"
      "sasl-lib"
      "snappy-lib"
      "rackunit-lib"
    ];
  };
  "sentry-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-sentry.git";
      rev = "720daa812297328cd8d50852865b514143dad12d";
    };
    subpath = "sentry-test";
    deps = [
      "base"
      "gregor-lib"
      "rackunit-lib"
      "sentry-lib"
      "threading-lib"
      "web-server-lib"
    ];
  };
  "protocol-buffers" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-protocol-buffers.git";
      rev = "c4cec28f29b05c7d9875c944429033d29d3fd555";
    };
    subpath = "protocol-buffers";
    deps = [
      "base"
      "protocol-buffers-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "intellij" = {
    src = fetchGit {
      url = "https://github.com/aymanosman/racket-intellij.git";
      rev = "79a6f24ca6fa58854c1cf62c284d0aff6b47181f";
    };

    deps = [
      "base"
      "macro-debugger-text-lib"
    ];
  };
  "nproc" = {
    src = fetchGit {
      url = "https://github.com/jeroanan/nproc.git";
      rev = "779fe7db83918a6ade7cf27f64d2fd5f9358f8bc";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "hdf5" = {
    src = fetchGit {
      url = "https://github.com/oetr/racket-hdf5.git";
      rev = "5836fc438ee36f94c80362b7da79b252a6429009";
    };

    deps = [
      "base"
      "rackunit"
      "math"
    ];
  };
  "extensible-functions" = {
    src = fetchGit {
      url = "https://github.com/leafac/extensible-functions.git";
      rev = "7aa4c134ba48137bd66d30ad9282d261a5507dbe";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
    ];
  };
  "codepoint" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/racket-codepoint.git#main";
      rev = "f114a142f08bee5ca26b17d37ed698ebc7e63176";
      ref = "main";
    };

    deps = [
      "base"
      "srfi-lite-lib"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "rackunit-lib"
    ];
  };
  "monitors" = {
    src = fetchGit {
      url = "https://github.com/howell/monitors";
      rev = "928a1b27b15ad46eb0f715b3bccfe06b437edf30";
    };

    deps = [
      "base"
      "data-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "glossolalia" = {
    src = fetchGit {
      url = "https://github.com/robertkleffner/glossolalia";
      rev = "528eefa533d4f06b29b73c35a8ad294aafd35db2";
    };

    deps = [
      "beautiful-racket-macro"
      "base"
      "rackunit-lib"
      "math-lib"
      "brag"
      "beautiful-racket"
      "beautiful-racket-lib"
      "br-parser-tools-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "racket-immutable" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/racket-immutable";
      rev = "ceb8282535b0a14073fd1c420fcdfbcb44fe4913";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "yaragg" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/yaragg.git#master";
      rev = "937d86c9c52b38381cbb72521dfa50cee00ebbf9";
      ref = "master";
    };

    deps = [
      "base"
      "rebellion"
      "syntax-color-lib"
      "at-exp-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "syntax-color-doc"
    ];
  };
  "toml" = {
    src = fetchGit {
      url = "https://github.com/toml-racket/toml-racket.git";
      rev = "fe46aa2c75939997dc21a2faaa79ea51304c4d15";
    };
    subpath = "toml";
    deps = [
      "toml-lib"
      "toml-doc"
      "toml-compliance"
      "base"
    ];
  };
  "ini-test" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ini.git";
      rev = "8ed624b74d42ab5ea3142c9af70285fe82d47590";
    };
    subpath = "src/ini-test";
    deps = [
      "base"
      "rackunit-lib"
      "ini-lib"
    ];
  };
  "drcomplete-base" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-base";
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "rackunit-lib"
    ];
  };
  "picturing-programs" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/picturing-programs.zip";
      sha256 = "05ya1gvzr4kv5s38n457dav7172k47zfym6ir46z8almh130wsbf";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "snip-lib"
      "htdp-lib"
      "racket-doc"
      "htdp-doc"
      "scribble-lib"
    ];
  };
  "r-lexer" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-r-lexer";
      rev = "0f19dd7364b69507a6f5d41ea4d77f85b24d5449";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "parser-tools-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "affix" = {
    src = fetchGit {
      url = "https://github.com/morcmarc/affix.git";
      rev = "32a8e88e8547227d473013d8f90f41f6b5665b69";
    };

    deps = [
      "base"
      "racket"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "tweedledum" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/tweedledum.git";
      rev = "64417ba609ea7a5db1ca7c25baa63dfb59a3955e";
    };

    deps = [
      "base"
    ];
  };
  "gui-x86_64-linux-natipkg" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-x86_64-linux-natipkg.zip";
      sha256 = "00avk5vcigd82v16wdqlvgfpg03v8gn22cwskx70y0y1bac7jfdc";
    };
    deps = [
      "base"
    ];
  };
  "bsd-sysv-checksum" = {
    src = fetchGit {
      url = "https://github.com/jeroanan/bsd-sysv-checksum.git";
      rev = "b4c5dcf2c24d56bcd5eef2e3885458eaf6f164d4";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "libxml2-x86_64-linux-natipkg" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/libxml2-x86_64-linux-natipkg.git";
      rev = "1353531ae3dab579f1222947c156062fe7e0a78b";
    };

    deps = [
      "base"
    ];
  };
  "unicode-breaks" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-unicode-breaks.git";
      rev = "770f687f4621824294b9e54d8ba844670d3e8d9b";
    };

    deps = [
      "base"
      "srfi-lib"
      "racket"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "sexp-diff" = {
    src = fetchGit {
      url = "https://github.com/stamourv/sexp-diff.git";
      rev = "5791264cb7031308b81c8c91df457cd51888210f";
    };
    subpath = "sexp-diff";
    deps = [
      "sexp-diff-lib"
      "sexp-diff-doc"
      "sexp-diff-test"
    ];
  };
  "point-free" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/point-free";
      rev = "d294a342466d5071dd2c8f16ba9e50f9006b54af";
    };

    deps = [
      "base"
      "rackunit-lib"
      "doc-coverage"
      "cover"
      "doc-coverage"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "jack-posn" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-posn";
      rev = "402ca7d3d5db28b04d82ff825a684c4995dcf355";
    };

    deps = [
      "scribble-lib"
      "base"
      "sweet-exp"
      "fancy-app"
      "cover"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "doc-coverage"
    ];
  };
  "geoip-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-geoip.git";
      rev = "92383b375490af54bec49e54f8e2ffb236b76827";
    };
    subpath = "geoip-doc";
    deps = [
      "base"
      "geoip-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "distro-build-client" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distro-build-client.zip";
      sha256 = "12kby3z5h7z6im640dkl0rm203w523ragvba6x7f9bfcjjq09y4m";
    };
    deps = [
      "base"
      "ds-store-lib"
      "at-exp-lib"
    ];
  };
  "math-aarch64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-aarch64-macosx.zip";
      sha256 = "13h3bm1ykx7r20jjnbzfnyh7wm53y3yiymnrdnlwyr08h8233ymy";
    };
    deps = [
      "base"
    ];
  };
  "boincrpc" = {
    src = fetchGit {
      url = "https://github.com/parnikkapore/rkt-boincrpc.git";
      rev = "f05dc275c2dac7196b65058f26af9ca9e074aef6";
    };

    deps = [
      "base"
      "libquiche"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "queue" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/racket-queue.git";
      rev = "cb8926bcaec6f6c9daf4450a27184df2f82f599e";
    };

    deps = [
      "base"
      "struct-plus-plus"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "test-more"
    ];
  };
  "ts-icons" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/ts-icons.git";
      rev = "ff6013cbb58ca0914b13a53bcdd2b4dd9bc609d3";
    };

    deps = [
      "base"
      "https://github.com/thoughtstem/define-assets-from.git"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "draw-x86_64-linux-natipkg-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-x86_64-linux-natipkg-3.zip";
      sha256 = "07r8aps7yy1lffgm9wp2zhf62x4anlbvv1cv4kvfw50a12rba4c4";
    };
    deps = [
      "base"
    ];
  };
  "qi-test" = {
    src = fetchGit {
      url = "https://github.com/drym-org/qi.git";
      rev = "548bc76668d0dcd84cf15eddab3def6dd55e7656";
      ref = "main";
    };
    subpath = "qi-test";
    deps = [
      "base"
      "rackunit-lib"
      "adjutor"
      "math-lib"
      "qi-lib"
    ];
  };
  "elle-doc" = {
    src = fetchGit {
      url = "https://github.com/tail-reversion/elle.git";
      rev = "87053a6ba8e12c15823395149fe74a62ebb77fee";
      ref = "release";
    };
    subpath = "elle-doc";
    deps = [
      "base"
      "elle-lib"
      "scribble-lib"
      "racket-doc"
      "rebellion"
    ];
  };
  "case-kw-lambda-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/case-kw-lambda.git";
      rev = "985c184062c614548892d6a24b644f6e75725eff";
    };
    subpath = "case-kw-lambda-doc";
    deps = [
      "base"
      "case-kw-lambda-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "iswim" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/iswim.git";
      rev = "2cb8644c2caccbebe0493cf36ae83db827a3dee0";
    };

    deps = [
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "base"
    ];
  };
  "beautiful-racket" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/beautiful-racket.git";
      rev = "7d41a489c6ec6e1f35fdd5b7ee1861cc11ccde19";
    };
    subpath = "beautiful-racket";
    deps = [
      "base"
      "beautiful-racket-lib"
      "beautiful-racket-demo"
      "gui-doc"
      "gui-lib"
      "at-exp-lib"
      "br-parser-tools-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rackterm" = {
    src = fetchGit {
      url = "https://github.com/willghatch/rackterm.git";
      rev = "32d04212d09c31d780e16bd1528325ba04920a47";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "rackunit-lib"
      "scheme-lib"
    ];
  };
  "define-attributes" = {
    src = fetchGit {
      url = "https://github.com/SimonLSchlee/define-attributes.git";
      rev = "57bffa14f11a604a7bf34a7dbc16f56f5ebf638c";
      ref = "main";
    };
    subpath = "define-attributes";
    deps = [
      "base"
      "define-attributes-lib"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "gillette-lib" = {
    src = fetchGit {
      url = "https://github.com/jessealama/gillette.git";
      rev = "0f574df183aa91762697f1bce3961c3d425896ea";
    };
    subpath = "gillette-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "syntax-classes-lib"
      "txexpr"
      "http-easy"
      "laramie-lib"
      "rackunit-lib"
      "rackunit-typed"
    ];
  };
  "scribble-include-text" = {
    src = fetchGit {
      url = "https://gitlab.com/bengreenman/scribble-include-text.git";
      rev = "2d89318b1cece9ab94ba9b4796869aef41b3506e";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "scribble-lib"
      "scribble-doc"
      "racket-doc"
    ];
  };
  "buid" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-buid.git";
      rev = "cc016257fd517f5e17643a58e6062dc6119f2fe6";
    };
    subpath = "buid";
    deps = [
      "base"
      "buid-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "multimethod-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-multimethod";
      rev = "8a0903ebaedd919971c382eeb785f05080c7a8d6";
    };
    subpath = "multimethod-doc";
    deps = [
      "base"
      "multimethod-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pie" = {
    src = fetchGit {
      url = "https://github.com/the-little-typer/pie.git";
      rev = "2c89553a693ac6688b16d722f416914f2e9aa4c3";
    };

    deps = [
      "base"
      "data-lib"
      "gui-lib"
      "slideshow-lib"
      "pict-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "parser-tools-lib"
      "syntax-color-lib"
      "rackunit-lib"
      "todo-list"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "rackunit-lib"
    ];
  };
  "math-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-doc.zip";
      sha256 = "1h8srcdxpjn0r2akf4r6ha492wlhrz0ydcjap7kp0z3v4dx1b2c1";
    };
    deps = [
      "base"
      "at-exp-lib"
      "math-lib"
      "plot-doc"
      "plot-gui-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
      "typed-racket-doc"
      "typed-racket-lib"
      "2d-lib"
    ];
  };
  "collector2-test" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-collector2.git";
      rev = "2e61ec9ce09a465081105300537b21930e76f24a";
    };
    subpath = "src/collector2-test";
    deps = [
      "base"
      "rackunit-lib"
      "collector2-lib"
    ];
  };
  "opencl" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/opencl";
      rev = "f984050b0c02beb6df186d1d531c4a92a98df1a1";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "superc"
      "at-exp-lib"
      "racket-doc"
    ];
  };
  "snappy-rkt" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-snappy.git";
      rev = "b02fa86ac7527f7a3a8731ac52f8b351e7d5feca";
    };
    subpath = "snappy";
    deps = [
      "base"
      "snappy-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "handin" = {
    src = fetchGit {
      url = "https://github.com/plt/handin";
      rev = "5caa19c3352bd4b9b2fc784ba442b8f605ac1648";
      ref = "master";
    };
    deps = [
      "base"
      "compatibility-lib"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "htdp-lib"
      "net-lib"
      "pconvert-lib"
      "sandbox-lib"
      "rackunit-lib"
      "web-server-lib"
      "gui-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "csexp" = {
    src = fetchGit {
      url = "https://gitlab.com/spritely/racket-csexp.git";
      rev = "a5b054836db26c6568d88d4e6c7706ff270f83f4";
    };
    subpath = "csexp";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "racket-i386-macosx-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/0925c922dce6f6135957b461e67585614c358a46/racket-i386-macosx-2.zip";
      sha256 = "1yaglipnrspgczwgxhkkdf3m5l6y6m3anzkb8xns82i306ssgwfm";
    };
    deps = [
      "base"
    ];
  };
  "decentralized-internet" = {
    src = fetchGit {
      url = "https://github.com/Lonero-Team/Racket-Package.git";
      rev = "ee4d1dba31f578e7480478a1d4c13a31f1f7e6da";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "files-viewer" = {
    src = fetchGit {
      url = "https://github.com/MatrixForChange/files-viewer.git";
      rev = "aea086981ad4b96d1a9d748dc9ffc268ef1a8acb";
    };

    deps = [
      "base"
      "gui-lib"
      "drracket"
      "rackunit-lib"
      "scheme-lib"
      "compatibility-lib"
      "scribble-lib"
      "pict-lib"
    ];
  };
  "xmllint-win32-x86_64" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/xmllint-win32-x86_64.git";
      rev = "8b3ff2681a47bf0fb0036c8b900526e7a7a63086";
    };

    deps = [
      "base"
    ];
  };
  "racket-llvm" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/racket-llvm.git#develop";
      rev = "efa24c63c5c9e0585bfced35720243ac36ecfe0a";
      ref = "develop";
    };

    deps = [
      "base"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "at-exp-lib"
    ];
  };
  "megaparsack-parser" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/megaparsack";
      rev = "0ccdee4270da0337700ac62aa106735d0d879695";
    };
    subpath = "megaparsack-parser";
    deps = [
      "base"
      "collections-lib"
      "curly-fn-lib"
      "functional-lib"
      "megaparsack-lib"
    ];
  };
  "search-list-box" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/search-list-box.git";
      rev = "725fbb6111677b8b7ca0f79d5b7adeb4ed4a773d";
    };

    deps = [
      "gui-lib"
      "base"
      "gui-doc"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "codespells-live" = {
    src = fetchGit {
      url = "https://github.com/ldhandley/codespells-live.git#main";
      rev = "ff1d635bc711b21d6814a5626167dd340f843545";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "type-conventions" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/type-conventions";
      rev = "550d9045206bd1c0a05713fa866a9cc2a0b48d99";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "rackunit-lib"
    ];
  };
  "drcomplete-module" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-module";
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "drcomplete-base"
    ];
  };
  "lathe-morphisms-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-morphisms-for-racket.git";
      rev = "07e4a0c299e1f015e531acf51393e6f8fd8d7354";
      ref = "main";
    };
    subpath = "lathe-morphisms-lib";
    deps = [
      "base"
      "lathe-comforts-lib"
      "parendown-lib"
    ];
  };
  "define-sobj" = {
    src = fetchGit {
      url = "https://github.com/sorawee/define-sobj.git";
      rev = "ba833cfcff497acb49c78d51cf3477b8e5a84ffd";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "puzzler" = {
    src = fetchGit {
      url = "https://github.com/aowens-21/puzzler.git";
      rev = "be84df0049795acddf4eee0cc0225f0659df0445";
    };

    deps = [
      "beautiful-racket"
      "brag"
      "draw-lib"
      "gui-lib"
      "base"
      "parser-tools-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "polyglot-lib" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/polyglot.git";
      rev = "d27ca7fe90fd4ba2a6c5bcd921fce89e72d2c408";
    };
    subpath = "polyglot-lib";
    deps = [
      "base"
      "file-watchers"
      "txexpr"
      "unlike-assets-lib"
      "aws"
      "markdown"
      "web-server-lib"
    ];
  };
  "tulip-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-tulip";
      rev = "1613cfd4d7e8dbc8ceb86cf33479375147f42b2f";
    };
    subpath = "tulip-lib";
    deps = [
      "base"
      "functional-lib"
      "megaparsack-lib"
      "megaparsack-parser-tools"
      "parser-tools-lib"
      "curly-fn"
    ];
  };
  "sagiri-comm" = {
    src = fetchGit {
      url = "https://github.com/ProjectNiwl/sagiri-comm.git";
      rev = "cd744287cc140a8b61d5d9c2862431e2fa51e72d";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "explorer" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-explorer";
      rev = "2a1836d01a7ff2ed025a67cc5f06c38b56776b2d";
    };

    deps = [
      "base"
      "gui-lib"
      "rackunit-lib"
    ];
  };
  "lens-lib" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/lens";
      rev = "733db7744921409b69ddc78ae5b23ffaa6b91e37";
    };
    subpath = "lens-lib";
    deps = [
      "base"
      "lens-common"
      "lens-data"
      "reprovide-lang-lib"
      "rackunit-lib"
      "sweet-exp-lib"
    ];
  };
  "layout-interactive" = {
    src = fetchGit {
      url = "https://github.com/SimonLSchlee/layout-interactive.git";
      rev = "bf245c3ecbc2c93cc236fd27ea7b37bb8560eccd";
    };

    deps = [
      "base"
      "layout"
      "gui-lib"
    ];
  };
  "icons" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/icons.zip";
      sha256 = "0qv2c2lyakdlixvb9g5p9x5k5z50lb80lh7cw6f3g8hi55mcgda8";
    };
    deps = [
      "base"
    ];
  };
  "graph-lib" = {
    src = fetchGit {
      url = "https://github.com/stchang/graph.git";
      rev = "9d77ab184e26f4f3c917c7bd49eda2e980a24fae";
    };
    subpath = "graph-lib";
    deps = [
      "base"
      "gen-queue-lib"
      "data-lib"
      "math-lib"
    ];
  };
  "pict-snip" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-snip.zip";
      sha256 = "1x4rgi8v7kjdlbmarq8ym5jnwv967h3aqi07pddvh1la0xw4gg2q";
    };
    deps = [
      "pict-snip-lib"
      "pict-snip-doc"
    ];
  };
  "sci" = {
    src = fetchGit {
      url = "https://github.com/soegaard/sci.git";
      rev = "3635df4f63c4815870ea307f2cbfe5d77657b971";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "scribble-math"
      "math-doc"
      "racket-doc"
      "linux-shared-libraries"
    ];
  };
  "racket-win32-x86_64-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/e73b7263dc52878d3b5c6f8453f00192a076b3d2/racket-win32-x86_64-2.zip";
      sha256 = "05qgk18x9vrh70732zyx71xdmv2a37paqfa3jmscx70aal8209y5";
    };
    deps = [
      "base"
    ];
  };
  "messagepack-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-messagepack.git";
      rev = "53074c338fa99102ac9c036311fba5c04f7e9049";
    };
    subpath = "messagepack-test";
    deps = [
      "base"
      "messagepack-lib"
      "rackcheck-lib"
      "rackunit-lib"
    ];
  };
  "character-creator" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/character-creator.git";
      rev = "a401b0265f57ac4417d30e09445b913b5e73152b";
    };

    deps = [
      "game-engine"
    ];
  };
  "configurable" = {
    src = fetchGit {
      url = "https://github.com/llazarek/configurable.git";
      rev = "a9088f5338d48600406add19ab6f3dfab78e70fb";
      ref = "master";
    };
    subpath = "configurable";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "component-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-component.git";
      rev = "ed1d2b24a548b4652d3d0fd60588301026acb4c2";
    };
    subpath = "component-test";
    deps = [
      "base"
      "component-lib"
      "rackunit-lib"
    ];
  };
  "net2" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-net2.git";
      rev = "b4247d52177120ff246b60c400b070dc962ee24b";
    };

    deps = [
      "reprovide-lang"
      "base"
      "unix-socket-doc"
      "unix-socket-lib"
      "disposable"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "trivial" = {
    src = fetchGit {
      url = "https://github.com/bennn/trivial.git";
      rev = "6da6a2edea1912c7b28d0bcaca5ffe09bf247ca5";
    };
    subpath = "trivial";
    deps = [
      "base"
      "db-lib"
      "plot-lib"
      "rackunit-lib"
      "reprovide-lang"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "at-exp-lib"
      "racket-doc"
      "rackunit-abbrevs"
      "rackunit-lib"
      "scribble-doc"
      "typed-racket-doc"
      "scribble-lib"
    ];
  };
  "mvar-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-mvar.git";
      rev = "aac2876805fd79257b4076b750f5b8a16667f595";
    };
    subpath = "mvar-doc";
    deps = [
      "base"
      "mvar-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rchess" = {
    src = fetchGit {
      url = "https://github.com/srfoster/rchess.git";
      rev = "77bcee50f661b638d9f05bc74149f75b21b03fed";
    };

    deps = [
      "base"
      "chess"
      "brag"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "check-sexp-equal" = {
    src = fetchGit {
      url = "https://github.com/zenspider/check-sexp-equal";
      rev = "59d1d837e8d7d6d0d4a8d4dc23497a9589f234fc";
    };

    deps = [
      "sexp-diff"
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "draw-x86_64-linux-natipkg-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/4c88e80871ef9e7e54082ca889a251271aa6185b/draw-x86_64-linux-natipkg-2.zip";
      sha256 = "04ik82mydkna6k46srqph3mk0j6ikh606g4ykl1z58w9xk0ahimh";
    };
    deps = [
      "base"
    ];
  };
  "YACP" = {
    src = fetchGit {
      url = "https://github.com/xiaoyu2006/yacp.git#dev";
      rev = "13fbc58c70d082567bf9dc1a387a06603c6f2d58";
      ref = "dev";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "xrepl" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl.zip";
      sha256 = "0wh0nzsfadlkb9bd4z9wq3prkcil39gd753ysaxz6q93b6s18ld7";
    };
    deps = [
      "xrepl-lib"
      "xrepl-doc"
    ];
  };
  "try-catch" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/try-catch.git";
      rev = "878adb4d3e7ae9af320f0331a67ddedea9b4746e";
    };

    deps = [
      "base"
      "syntax-classes-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
      "sandbox-lib"
    ];
  };
  "pidec" = {
    src = fetchGit {
      url = "https://github.com/logc/pidec.git";
      rev = "4ec0b094709d83d54cb1de69209ecfd6a642573d";
    };

    deps = [
      "base"
      "rackunit-lib"
      "math-lib"
      "typed-racket-lib"
      "while-loop"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "drracket-scheme-dark-green" = {
    src = fetchGit {
      url = "https://github.com/shhyou/drracket-scheme-dark-green.git";
      rev = "bda60667005f146ffa78b6435e10cd5731d7f211";
    };

    deps = [
      "base"
    ];
  };
  "unix-socket" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/unix-socket.zip";
      sha256 = "1pzvbljg9rh4cq4bmrlmlnngid6gxyjnccxx5kg0blifygzyspy9";
    };
    deps = [
      "unix-socket-lib"
      "unix-socket-doc"
    ];
  };
  "ffmpeg-i386-macosx-3-4" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "";
      ref = "ffmpeg-3.4";
    };
    subpath = "ffmpeg-i386-macosx";
    deps = [
    ];
  };
  "hash-view" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-hash-view.git";
      rev = "7bfad3b89241beaca45f43ec1d70ef3ed268b495";
    };
    subpath = "hash-view";
    deps = [
      "base"
      "rackunit-lib"
      "hash-view-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "struct-set" = {
    src = fetchGit {
      url = "https://github.com/camoy/struct-set.git";
      rev = "61837f6aa2843fdeae67c108d397b11acde1de74";
    };

    deps = [
      "syntax-classes-lib"
      "base"
      "sandbox-lib"
      "chk-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "libvid-x86_64-win32-0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-x86_64-win32";
    deps = [
      "base"
    ];
  };
  "spmatrix" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/matrix";
      rev = "15e1c74f8763abbdfb4348702c98ca6043e52a1c";
      ref = "master";
    };
    deps = [
      "spvector"
      "base"
      "compatibility-lib"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "racket-predicates" = {
    src = fetchGit {
      url = "https://github.com/aryaghan-mutum/racket-predicates.git";
      rev = "3a4f82ffaaf80033bb744e45eb57b05ef5399c99";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "malt" = {
    src = fetchGit {
      url = "https://github.com/themetaschemer/malt.git";
      rev = "4fee9a6b70146058bf253dbadaae1eff3681ccbe";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "jni" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/racket-jni.git";
      rev = "9573a3ae8832d53e19dd9bfe63a4a27f7e978384";
    };

    deps = [
      "base"
      "parser-tools-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "redex-gui-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-gui-lib.zip";
      sha256 = "05pwn10na4vn3ln8i9607ryq2ll4bbxf162fk8a67w3478a1qams";
    };
    deps = [
      "scheme-lib"
      "base"
      "draw-lib"
      "gui-lib"
      "data-lib"
      "profile-lib"
      "redex-lib"
      "redex-pict-lib"
      "pict-lib"
      "rackunit-lib"
    ];
  };
  "mzscheme-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mzscheme-doc.zip";
      sha256 = "0r0ggipw7gi5xnjja5yfnixwi82zya28f610cpw3iyl154h1sip6";
    };
    deps = [
      "base"
      "compatibility-lib"
      "r5rs-doc"
      "r5rs-lib"
      "racket-doc"
      "scheme-lib"
      "scheme-doc"
      "scribble-lib"
    ];
  };
  "web-galaxy-doc" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/web-galaxy.git";
      rev = "d484efe7422df0390d291f74c71cebf6006ab87a";
    };
    subpath = "web-galaxy-doc";
    deps = [
    ];
  };
  "scratch" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-scratch";
      rev = "92ec687d248f7ce587589305611367512d2a0506";
    };

    deps = [
      "base"
      "rackunit-lib"
      "reprovide-lang"
      "at-exp-lib"
      "gui-lib"
      "pict-lib"
      "plot-gui-lib"
      "draw-lib"
      "data-lib"
      "profile-lib"
      "wxme-lib"
      "sandbox-lib"
      "syntax-color-lib"
      "zo-lib"
      "with-cache"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "rackunit-typed" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-typed.zip";
      sha256 = "19d7brskpnxn9pvh0sz26ii3nh4x46jgb9mwmjc96fnrlzp2kd2j";
    };
    deps = [
      "racket-index"
      "rackunit-gui"
      "rackunit-lib"
      "typed-racket-lib"
      "base"
      "testing-util-lib"
    ];
  };
  "pprint-compact" = {
    src = fetchGit {
      url = "https://github.com/sorawee/pprint-compact.git";
      rev = "9a85add8e67bc94e37932693c2c1e6f368722427";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "source-syntax" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/source-syntax.zip";
      sha256 = "0ij6wdx1xq85hkv6j1ryi0bwndaikl4hna9sq0xa1x3pan53681d";
    };
    deps = [
      "base"
    ];
  };
  "private-in" = {
    src = fetchGit {
      url = "https://github.com/camoy/private-in.git";
      rev = "631a767e92ac7d641b88ac84fb073f5eb2841854";
    };

    deps = [
      "base"
      "chk-lib"
      "rackunit-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "vector-struct" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-vector-struct";
      rev = "f5137a445b567a213f20d9c35c60cea88f61c7b1";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "video" = {
    src = fetchGit {
      url = "https://github.com/videolang/video#stable";
      rev = "aa958b5ab250c8a202b24444935255d773608ea6";
      ref = "stable";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "draw-lib"
      "images-lib"
      "drracket-plugin-lib"
      "data-lib"
      "pict-lib"
      "wxme-lib"
      "sandbox-lib"
      "at-exp-lib"
      "scribble-lib"
      "bitsyntax"
      "opengl"
      "portaudio"
      "net-lib"
      "syntax-color-lib"
      "parser-tools-lib"
      "graph"
      "libvid-x86_64-macosx"
      "libvid-x86_64-win32"
      "libvid-i386-win32"
      "libvid-x86_64-linux"
      "libvid-i386-linux"
      "ffmpeg-x86_64-macosx-3-4"
      "ffmpeg-x86_64-win32-3-4"
      "ffmpeg-i386-win32-3-4"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "draw-doc"
      "ppict"
      "reprovide-lang"
    ];
  };
  "asn1-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/asn1.git";
      rev = "3cd32b61a68b40ec03bed98cd0c4d4d4f72cacf2";
    };
    subpath = "asn1-lib";
    deps = [
      "base"
      "binaryio-lib"
    ];
  };
  "libnotify" = {
    src = fetchGit {
      url = "https://github.com/takikawa/racket-libnotify";
      rev = "c1112e8095f53dde26da994c5d2025871cec9d12";
    };

    deps = [
      "base"
      "draw-lib"
      "scribble-lib"
      "racket-doc"
      "draw-doc"
    ];
  };
  "quickscript" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/quickscript.zip";
      sha256 = "12vs62mm1bwvsisz8pyn3l1fy8mal70hhn5plq8x7i6144mhgfx4";
    };
    deps = [
      "base"
      "drracket-plugin-lib"
      "drracket"
      "gui-lib"
      "net-lib"
      "scribble-lib"
      "at-exp-lib"
      "drracket"
      "gui-doc"
      "racket-doc"
      "draw-doc"
      "rackunit-lib"
    ];
  };
  "rktfetch" = {
    src = fetchGit {
      url = "https://github.com/mythical-linux/rktfetch.git";
      rev = "d2315c176716bc1364b7b049c492af3945c960ba";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "memoize-test" = {
    src = fetchGit {
      url = "https://github.com/jbclements/memoize.git";
      rev = "911a0d3abe44fca1203425f6ff5767a9796f0c1f";
      ref = "master";
    };
    subpath = "memoize-test";
    deps = [
      "base"
      "rackunit-lib"
      "memoize-lib"
    ];
  };
  "paren-shape" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/paren-shape";
      rev = "c25e7aa6671e1630a669d33de6e554e9ad7f5fd2";
    };

    deps = [
      "base"
      "syntax-classes-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "syntax-classes-doc"
    ];
  };
  "rapider" = {
    src = fetchGit {
      url = "https://github.com/nuty/rapider.git";
      rev = "909ea324095c89bdd568f73428ce306aa313d7d4";
    };
    subpath = "rapider";
    deps = [
      "rapider-lib"
      "base"
    ];
  };
  "animated-canvas" = {
    src = fetchGit {
      url = "https://github.com/spdegabrielle/animated-canvas.git";
      rev = "53b3c3c861c6d8c899ae71f59b2741673c61f887";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "effect-racket" = {
    src = fetchGit {
      url = "https://github.com/camoy/effect-racket.git";
      rev = "e8b8247c2339a89da8c0d8dad58bf13eda21eed2";
      ref = "master";
    };
    subpath = "effect-racket";
    deps = [
      "base"
      "effect-racket-doc"
      "effect-racket-lib"
      "effect-racket-test"
    ];
  };
  "named-arguments" = {
    src = fetchGit {
      url = "https://github.com/t0mpr1c3/named-arguments.git";
      rev = "c5a82e3ad94ea575362e0e6c3015db2f45154118";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "sexp-enforest" = {
    src = fetchGit {
      url = "https://github.com/syntacticlosure/sexp-enforest.git#main";
      rev = "00888fd0bba81472c5dc775bcb966612fdf4d5e8";
      ref = "main";
    };

    deps = [
    ];
  };
  "multimethod-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-multimethod";
      rev = "8a0903ebaedd919971c382eeb785f05080c7a8d6";
    };
    subpath = "multimethod-lib";
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-spec"
    ];
  };
  "tulip-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-tulip";
      rev = "1613cfd4d7e8dbc8ceb86cf33479375147f42b2f";
    };
    subpath = "tulip-test";
    deps = [
      "base"
      "rackunit-lib"
      "tulip-lib"
    ];
  };
  "typed-map-test" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/typed-map.git";
      rev = "7a70650b6f8e1222fe1e4ebd2fb6b9b2489301e2";
      ref = "main";
    };
    subpath = "typed-map-test";
    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "typed-map-lib"
      "aful"
    ];
  };
  "aws-cloudformation-template-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/aws-cloudformation-template";
      rev = "00f52274a5bfc03f23c9dd511db0c87e35cf80e5";
    };
    subpath = "aws-cloudformation-template-lib";
    deps = [
      "base"
      "curly-fn-lib"
      "syntax-classes-lib"
      "threading-lib"
      "turnstile"
    ];
  };
  "postfix-dot-notation" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/postfix-dot-notation";
      rev = "7475bf0b7f0f6fdd534933b86a29de633841f2b0";
    };

    deps = [
      "base"
      "sweet-exp"
      "hygienic-reader-extension"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "animal-assets" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/animal-assets.git";
      rev = "7053186f2aa5f60edb3c64531b574e047a02f8bd";
    };

    deps = [
      "game-engine"
      "define-assets-from"
    ];
  };
  "ffi-utils" = {
    src = fetchGit {
      url = "https://github.com/thinkmoore/ffi-utils";
      rev = "20fd038aad7978f6613a78cc48fae1358b90089d";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "margrave" = {
    src = fetchGit {
      url = "https://github.com/jbclements/margrave.git#LISA10-pkg";
      rev = "09780169700c463def0d6c66192f3b07048671d8";
      ref = "LISA10-pkg";
    };

    deps = [
      "base"
      "gui-lib"
      "parser-tools-lib"
      "rackunit-lib"
      "scheme-lib"
      "srfi-lite-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "beautiful-racket-macro" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/beautiful-racket.git";
      rev = "b0d133f4ba4149ea506d8b0dbd3845c915efdd06";
    };
    subpath = "beautiful-racket-macro";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "remap" = {
    src = fetchGit {
      url = "https://gitlab.com/hashimmm/remap.git";
      rev = "d51fb2169b79e6bf5cfdd175af08239d3362445c";
    };

    deps = [
      "base"
      "db-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "rackunit-typed"
    ];
  };
  "roomba" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/roomba.zip";
      sha256 = "0zrbcgkwf08qa9i18nlnyb2xsb6y8dnih9ggasc8bnhfr7cj3yyh";
    };
    deps = [
      "base"
      "mcfly"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "overeasy"
    ];
  };
  "r-cade" = {
    src = fetchGit {
      url = "https://github.com/massung/r-cade.git";
      rev = "0cce22885aad28234d3f6e1d88568cdc16daf3e6";
    };

    deps = [
      "base"
      "csfml"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "lsl-lib" = {
    src = fetchGit {
      url = "https://github.com/logiccomp/lsl.git";
      rev = "ef7fc1f7d95287f0fbe85cde54b24fe601ad7910";
      ref = "main";
    };
    subpath = "lsl-lib";
    deps = [
      "automata-lib"
      "http-easy-lib"
      "plot-gui-lib"
      "plot-lib"
      "rackunit-lib"
      "struct-set"
      "threading-lib"
      "base"
      "ee-lib"
      "errortrace-lib"
      "mischief"
      "rosette"
      "syntax-classes"
      "threading"
    ];
  };
  "levintreesearch_cm" = {
    src = fetchGit {
      url = "https://github.com/deepmind/levintreesearch_cm.git";
      rev = "82c8b4ed63bde1978b153a060095cddf000dd217";
    };

    deps = [
      "data-lib"
      "define2"
      "global"
      "gui-lib"
      "math-lib"
      "pict-lib"
      "plot-gui-lib"
      "plot-lib"
      "rackunit-lib"
      "safe-case"
      "text-table"
      "text-block"
      "base"
      "distributed-places-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "effect-racket-doc" = {
    src = fetchGit {
      url = "https://github.com/camoy/effect-racket.git";
      rev = "e8b8247c2339a89da8c0d8dad58bf13eda21eed2";
      ref = "master";
    };
    subpath = "effect-racket-doc";
    deps = [
      "base"
      "effect-racket-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "expeditor-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/expeditor-doc.zip";
      sha256 = "06kc3b8w6zimxh290j2ppzznnpnkxa6v4in75w10sszy48mwwwia";
    };
    deps = [
      "base"
      "scribble-lib"
      "expeditor-lib"
      "racket-doc"
    ];
  };
  "kinda-ferpy" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/kinda-ferpy.git";
      rev = "1523284752332fa0379a0c25798551e5db760b28";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "kw-make-struct-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/kw-make-struct";
      rev = "1d377d6be64d848b945fdce5e618ca3eef95395a";
    };
    subpath = "kw-make-struct-lib";
    deps = [
      "base"
      "syntax-classes-lib"
      "rackunit-lib"
    ];
  };
  "plplot" = {
    src = fetchGit {
      url = "https://github.com/oetr/racket-plplot.git";
      rev = "230cf5cd469f6d63c045da945c0e1cbd3d76c7d5";
    };

    deps = [
      "base"
    ];
  };
  "racket-scaffold" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/racket-scaffold.git";
      rev = "e6df9238aef49e36d8cef641601ee7c5f4d5c16b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-index"
      "dali"
      "scribble-lib"
      "scribble-doc"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "math-win32-x86_64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-win32-x86_64.zip";
      sha256 = "04lgy6dnk9p5f3gv6wamilwvnmwflp2q74adkvk13qk16akp4xd1";
    };
    deps = [
      "base"
    ];
  };
  "splitflap-doc" = {
    src = fetchGit {
      url = "https://github.com/otherjoel/splitflap.git";
      rev = "d8faa3aef672b355280f36e299ae57756ef02383";
      ref = "main";
    };
    subpath = "splitflap-doc";
    deps = [
      "scribble-lib"
      "base"
      "at-exp-lib"
      "net-doc"
      "txexpr"
      "gregor-doc"
      "gregor-lib"
      "racket-doc"
      "scribble-lib"
      "splitflap-lib"
    ];
  };
  "lua-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lua.git";
      rev = "7551d2efbc1187ab91afb61ef6b291b382e1edce";
    };
    subpath = "lua-test";
    deps = [
      "base"
      "lua-lib"
      "rackcheck-lib"
      "rackunit-lib"
      "rackunit-lib"
    ];
  };
  "sql-sourcery" = {
    src = fetchGit {
      url = "https://github.com/adjkant/sql-sourcery.git";
      rev = "f6c0619ed9febbb66864f36aa41fa495df683f95";
      ref = "f6c0619ed9febbb66864f36aa41fa495df683f95";
    };
    subpath = "sql-sourcery";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "planet-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-doc.zip";
      sha256 = "0i43r67w4x2av3ngrqigmla0jkxafi43479m8d68hfs8gaaxkpi8";
    };
    deps = [
      "planet-lib"
      "scribble-lib"
      "base"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "effection" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/effection.git";
      rev = "012c8ab1b45993770ed240cae0831f09574fe976";
      ref = "main";
    };
    subpath = "effection";
    deps = [
      "effection-doc"
      "effection-lib"
    ];
  };
  "multimethod" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-multimethod";
      rev = "8a0903ebaedd919971c382eeb785f05080c7a8d6";
    };
    subpath = "multimethod";
    deps = [
      "base"
      "multimethod-lib"
      "multimethod-doc"
    ];
  };
  "control" = {
    src = fetchGit {
      url = "https://github.com/soegaard/control";
      rev = "51bc2319c07a06b1275a231c8ccfc433a8f34258";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "toml-doc" = {
    src = fetchGit {
      url = "https://github.com/toml-racket/toml-racket.git";
      rev = "fe46aa2c75939997dc21a2faaa79ea51304c4d15";
    };
    subpath = "toml-doc";
    deps = [
      "base"
      "base"
      "scribble-lib"
      "racket-doc"
      "gregor-doc"
      "toml-lib"
    ];
  };
  "csfml" = {
    src = fetchGit {
      url = "https://github.com/massung/racket-csfml.git";
      rev = "5f8a1146b659c6cf66f31b35dafb77054c8be501";
    };

    deps = [
      "base"
    ];
  };
  "basedir" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-basedir.git";
      rev = "487dfc49ff3268b76dea9aa2011ddfe585da2672";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "memoize-doc" = {
    src = fetchGit {
      url = "https://github.com/jbclements/memoize.git";
      rev = "911a0d3abe44fca1203425f6ff5767a9796f0c1f";
      ref = "master";
    };
    subpath = "memoize-doc";
    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "memoize-lib"
    ];
  };
  "cksum" = {
    src = fetchGit {
      url = "https://github.com/jeroanan/cksum.git";
      rev = "ea390924866cb53df44f4d812c1f187e2e88b8a7";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "parsack-lib" = {
    src = fetchGit {
      url = "https://github.com/stchang/parsack.git";
      rev = "57b21873e8e3eb7ffbdfa253251c3c27a66723b1";
      ref = "master";
    };
    subpath = "parsack-lib";
    deps = [
      "base"
    ];
  };
  "survival-pokemon" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "survival-pokemon";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-GE-Languages.git?path=survival"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "syrup" = {
    src = fetchGit {
      url = "https://github.com/ocapn/syrup.git";
      rev = "2214cbb7c0ee081699fdef64edbc2444af2bb1d2";
    };
    subpath = "impls/racket/syrup";
    deps = [
      "base"
    ];
  };
  "fra" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/fra";
      rev = "151ca5afbb8e732e0da89198cf0b982625233b87";
      ref = "master";
    };
    deps = [
      "base"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "require-latency" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/require-latency.git";
      rev = "072d061dc891a55af29e31c9e6ddbfbec56096fc";
      ref = "main";
    };
    subpath = "require-latency";
    deps = [
      "base"
      "cli"
    ];
  };
  "plai-typed-s-exp-match" = {
    src = fetchGit {
      url = "https://github.com/mflatt/plai-typed-s-exp-match";
      rev = "ff05b257cc8739d2f4ad8f33b65440635ab9cce0";
      ref = "master";
    };
    deps = [
      "base"
      "plai-typed"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "numspell" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/numspell.zip";
      sha256 = "11k7ly8alp8py7b868ibsw0m9qksvf041psz81aybdyagnjq2dbd";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "snip" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/snip.zip";
      sha256 = "05rzsrlfi1mrx143hsq9b73yfvvgwxgjzbl1n5br17vlr4drx6d2";
    };
    deps = [
      "snip-lib"
      "gui-doc"
    ];
  };
  "debug" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/debug";
      rev = "db0b1f41f5e338bfb01d1e2193bbb778e8fc4977";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "pretty-format"
      "rackunit-lib"
      "rackunit-typed"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "curly-fn-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-curly-fn";
      rev = "d64cd71d5b386be85f5979edae6f6b6469a4df86";
    };
    subpath = "curly-fn-lib";
    deps = [
      "base"
      "namespaced-transformer-lib"
    ];
  };
  "clicker-assets" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/clicker-assets.git";
      rev = "a377ae67172c3174a094c4794ea98c9f50b1dedd";
    };

    deps = [
      "base"
      "define-assets-from"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "wavenet" = {
    src = fetchGit {
      url = "https://github.com/otherjoel/wavenet-api.git#main";
      rev = "555b0c70cd5e20982ce73de729d9dd88b91d802b";
      ref = "main";
    };

    deps = [
      "base"
      "hash-view-lib"
      "http-easy"
      "gui-doc"
      "gui-lib"
      "hash-view"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "htdp-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/htdp-lib.zip";
      sha256 = "0m74vwk70w9aphvkwygax7cz2hyf3r3kzz6x7p09wcc384mvvdqf";
    };
    deps = [
      "base"
      "compatibility-lib"
      "draw-lib"
      "drracket-plugin-lib"
      "errortrace-lib"
      "html-lib"
      "images-gui-lib"
      "images-lib"
      "net-lib"
      "pconvert-lib"
      "plai-lib"
      "r5rs-lib"
      "sandbox-lib"
      "scheme-lib"
      "scribble-lib"
      "simple-tree-text-markup-lib"
      "slideshow-lib"
      "snip-lib"
      "srfi-lite-lib"
      "string-constants-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "web-server-lib"
      "wxme-lib"
      "gui-lib"
      "deinprogramm-signature"
      "pict-lib"
      "racket-index"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "opencpu" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/opencpu";
      rev = "ab5433418a3a19aeafe239901c3a530d745e2dbd";
    };

    deps = [
      "base"
      "rackunit-lib"
      "adjutor"
      "scribble-lib"
      "racket-doc"
      "net-doc"
    ];
  };
  "meow" = {
    src = fetchGit {
      url = "https://github.com/meows/racket-meow.git";
      rev = "86b2ed46a2cadb04cf6cc3d93610cee6ad6b2af1";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "moonrat" = {
    src = fetchGit {
      url = "https://github.com/zzkt/moonrat.git";
      rev = "44fbf0c8c5bacc4237bba6f06ad91d352d52fd68";
    };

    deps = [
      "base"
      "parsack"
      "english"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "gui-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-doc.zip";
      sha256 = "1h9cxifdja9h4pqxk869x7sq29khk81312zww025adnz2zbbyqww";
    };
    deps = [
      "base"
      "scheme-lib"
      "syntax-color-doc"
      "at-exp-lib"
      "draw-doc"
      "draw-lib"
      "scribble-lib"
      "snip-lib"
      "string-constants-lib"
      "syntax-color-lib"
      "wxme-lib"
      "gui-lib"
      "pict-lib"
      "racket-doc"
      "string-constants-doc"
      "simple-tree-text-markup-doc"
    ];
  };
  "value-evt" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/value-evt.git";
      rev = "10c3b0cc46f7fface88d2609c6de29ed5cea5767";
    };

    deps = [
      "base"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "memcached" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/memcached";
      rev = "465d1bfc700140232c4abd0b854d807740895237";
      ref = "master";
    };
    deps = [
      "base"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "racket-processing" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-processing.git";
      rev = "c4c51b528fa10fe69f89cc7b7c27bb3388ad11c7";
    };

    deps = [
      "racket-to"
    ];
  };
  "ebml" = {
    src = fetchGit {
      url = "https://github.com/jbclements/ebml";
      rev = "469ee377b33a1212147185c84b0683058d28b764";
      ref = "master";
    };
    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "measures-with-dimensions" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/measures-with-dimensions.git#main";
      rev = "fc6c78f79ac89cf488a5ccc5fc20391bd254886c";
      ref = "main";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "threading"
      "math-lib"
      "htdp-lib"
      "unstable-lib"
      "sweet-exp"
      "reprovide-lang"
      "predicates"
      "colon-match"
      "scribble-lib"
      "rackunit-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
      "typed-racket-doc"
      "at-exp-lib"
    ];
  };
  "planning" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/planning.git";
      rev = "b880f85effd4520e14b815d1dbe0ff7e71f4aaf8";
    };

    deps = [
      "snip-lib"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "slideshow-lib"
      "chess"
      "fancy-app"
      "point-free"
      "rebellion"
      "base"
      "pict-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "drracket-red" = {
    src = fetchGit {
      url = "https://github.com/jagen31/drracket-red.git";
      rev = "06030dbc0451476ba652db86e19e737de6e1d9a1";
    };

    deps = [
      "base"
    ];
  };
  "racket-rackunit-grade" = {
    src = fetchGit {
      url = "https://github.com/ifigueroap/racket-rackunit-grade";
      rev = "92526d7ced3b4cf7b5323752f20d8f36752e69b6";
    };

    deps = [
      "base"
      "rackunit"
      "doc-coverage"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "sexp-diff-test" = {
    src = fetchGit {
      url = "https://github.com/stamourv/sexp-diff.git";
      rev = "5791264cb7031308b81c8c91df457cd51888210f";
    };
    subpath = "sexp-diff-test";
    deps = [
      "base"
      "rackunit-lib"
      "sexp-diff-lib"
    ];
  };
  "schemeunit" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/schemeunit.zip";
      sha256 = "13fkqmlg70h6vqviqjn0mfnc59kyf9bcb7jkh27dw5lqgi5141k9";
    };
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-gui"
    ];
  };
  "pmsf-iuse" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-iuse";
    deps = [
      "base"
    ];
  };
  "overscan" = {
    src = fetchGit {
      url = "https://github.com/mwunsch/overscan.git";
      rev = "f198e6b4c1f64cf5720e66ab5ad27fdc4b9e67e9";
    };

    deps = [
      "base"
      "rackunit-lib"
      "draw-lib"
      "gui-lib"
      "sgl"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "xrepl-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-test.zip";
      sha256 = "0w1dav6kxj5j6304mq2v5l6jfavi71a66rvj1n3xs3r9fk607gjs";
    };
    deps = [
      "at-exp-lib"
      "base"
      "eli-tester"
      "xrepl-lib"
    ];
  };
  "netrc" = {
    src = fetchGit {
      url = "https://github.com/apg/netrc";
      rev = "af814d20a77910ab6de2161ac37d02586604a192";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "rascas" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/rascas.git";
      rev = "f575e5a63b02358e80bfde53c7cb3eaae396e41a";
    };

    deps = [
      "base"
      "math-lib"
      "parser-tools-lib"
      "rackunit-lib"
      "srfi-lite-lib"
      "plot-gui-lib"
      "plot-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "data-lib"
    ];
  };
  "web-server-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-lib.zip";
      sha256 = "0jwkizp7gy32aa2b97kbx56xpp4p1y4llq2ffa60q4zc35gm7ir8";
    };
    deps = [
      "srfi-lite-lib"
      "base"
      "net-lib"
      "net-cookies-lib"
      "scribble-text-lib"
      "parser-tools-lib"
      "rackunit-lib"
    ];
  };
  "draw-win32-i386-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-win32-i386-3.zip";
      sha256 = "1719n2plbfym9i44f0764rpxcmsam6dg88qljw2nzvhbq2m4wahk";
    };
    deps = [
      "base"
    ];
  };
  "lathe-morphisms" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-morphisms-for-racket.git";
      rev = "07e4a0c299e1f015e531acf51393e6f8fd8d7354";
      ref = "main";
    };
    subpath = "lathe-morphisms";
    deps = [
      "lathe-morphisms-doc"
      "lathe-morphisms-lib"
    ];
  };
  "parameter" = {
    src = fetchGit {
      url = "https://github.com/samth/parameter.plt";
      rev = "e1693adf37a6438b596cef0b31ff0ad266c9958d";
    };

    deps = [
      "base"
      "scheme-lib"
      "scribble-lib"
    ];
  };
  "uri" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/uri.git";
      rev = "79934c1432baad34a3272c0429caa4b695c4b996";
    };

    deps = [
      "string-util"
      "opt"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "sonic-pi" = {
    src = fetchGit {
      url = "https://github.com/jbclements/sonic-pi.git";
      rev = "de70c9169b7bb6b6764c513c6caac25f533c79dc";
    };

    deps = [
      "base"
      "osc"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "htdp-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "images-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-lib.zip";
      sha256 = "0hx79phf0gbv25gzg69mb3z7av7w4x386f0myygncbnn798jk707";
    };
    deps = [
      "base"
      "draw-lib"
      "typed-racket-lib"
      "scribble-lib"
    ];
  };
  "mysterx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mysterx.zip";
      sha256 = "08jbhja3vn2q36ph9y562icpdv5kgzsdym32ycgmxgfskgr6sfap";
    };
    deps = [
      "scheme-lib"
      "base"
      "racket-doc"
      "at-exp-lib"
      "scribble-lib"
    ];
  };
  "turn-based-game" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/turn-based-game";
      rev = "eb290ed914fb91fc2db8e135570453608bc51f39";
    };

    deps = [
      "base"
      "agile"
      "collections-lib"
      "htdp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "htdp-doc"
      "collections-doc"
    ];
  };
  "contract-etc" = {
    src = fetchGit {
      url = "https://github.com/camoy/contract-etc.git";
      rev = "b160afa0b38b432013017296582ef2a2cef18f4d";
      ref = "main";
    };
    subpath = "contract-etc";
    deps = [
      "contract-etc-lib"
      "base"
      "chk-lib"
      "option-contract-doc"
      "option-contract-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "whalesong-tools" = {
    src = fetchGit {
      url = "https://github.com/vishesh/drracket-whalesong";
      rev = "980bd29cdb77749627f21edeeb6aa76a3f80750a";
    };

    deps = [
      "base"
      "gui-lib"
      "drracket-plugin-lib"
      "whalesong"
    ];
  };
  "drracket-wakatime" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/drracket-wakatime.git#develop";
      rev = "df3c8096d91e11ba6c7ec40f0bab628680223682";
      ref = "develop";
    };

    deps = [
      "base"
      "gui-lib"
      "drracket-plugin-lib"
      "formatted-string"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "portaudio" = {
    src = fetchGit {
      url = "https://github.com/jbclements/portaudio";
      rev = "bb4faf5e5500d2b89c22f16ba9adf455b263f097";
      ref = "master";
    };
    deps = [
      "base"
      "portaudio-x86_64-macosx"
      "portaudio-x86_64-linux"
      "portaudio-x86_64-win32"
      "portaudio-aarch64-macosx"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "scope-operations" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/scope-operations.git#main";
      rev = "5ea8f32528bcf1ed4393cf9a054920936c27a556";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "zeromq-x86_64-linux-natipkg" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-natipkg-zeromq.git";
      rev = "c9c89e3542508d753384c62ab368b3585796be8b";
    };
    subpath = "zeromq-x86_64-linux-natipkg";
    deps = [
      "base"
    ];
  };
  "elle-lib" = {
    src = fetchGit {
      url = "https://github.com/tail-reversion/elle.git";
      rev = "87053a6ba8e12c15823395149fe74a62ebb77fee";
      ref = "release";
    };
    subpath = "elle-lib";
    deps = [
      "base"
      "rebellion"
    ];
  };
  "xxhash" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lz4.git";
      rev = "df811b1166b22221f641b3c78171cd31f4e2ba53";
    };
    subpath = "xxhash";
    deps = [
      "base"
      "xxhash-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "racketscript-extras" = {
    src = fetchGit {
      url = "https://github.com/racketscript/racketscript.git";
      rev = "bff853c802b0073d08043f850108a57981d9f826";
      ref = "master";
    };
    subpath = "racketscript-extras";
    deps = [
      "base"
      "racket"
      "racketscript-compiler"
      "rackunit-lib"
    ];
  };
  "chk-lib" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/chk";
      rev = "32fb635e19fa2dc2d9c35bac0964ab76dde1e89e";
    };
    subpath = "chk-lib";
    deps = [
      "testing-util-lib"
      "base"
    ];
  };
  "command-tree" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/command-tree.git";
      rev = "3a5dd35d43f3be52fb9743361adcb53eabcb8a3a";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "zeromq-r-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-zeromq.git";
      rev = "5917ef00278433cf4d953632a13744b6d826cae9";
    };
    subpath = "zeromq-r-lib";
    deps = [
      "base"
      "zeromq-win32-i386"
      "zeromq-win32-x86_64"
      "zeromq-x86_64-linux-natipkg"
    ];
  };
  "cext-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/cext-lib.zip";
      sha256 = "17dh5jqv115czcic83qnh0aisc8fiwc3pxyylagw9mz88wl35ryk";
    };
    deps = [
      "base"
      "compiler-lib"
      "dynext-lib"
      "scheme-lib"
    ];
  };
  "brick-snip" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-blocks.git";
      rev = "e3653cac8500883e91feefd6462cb413751d0c16";
    };
    subpath = "brick-snip";
    deps = [
      "racket-bricks"
    ];
  };
  "gdbdump" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/gdbdump.zip";
      sha256 = "1la78br3yjc8cw4i8v6bzsmfi6hhv7061di4jm11ap497789286a";
    };
    deps = [
      "base"
      "mcfly"
      "compatibility-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rex" = {
    src = fetchGit {
      url = "https://github.com/alehed/rex.git";
      rev = "e3b41f706b4b72ea5f168b0f2a2600d77ee07ea0";
    };

    deps = [
      "base"
      "br-parser-tools-lib"
      "brag"
      "data-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "pretty-graphs" = {
    src = fetchGit {
      url = "https://github.com/v-nys/pretty-graphs";
      rev = "a525fdc779e745b222b9e3d495c9f525290fd4cc";
    };

    deps = [
      "base"
      "at-exp-lib"
      "graph"
      "pict-doc"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "lz4-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lz4.git";
      rev = "df811b1166b22221f641b3c78171cd31f4e2ba53";
    };
    subpath = "lz4-lib";
    deps = [
      "base"
      "xxhash-lib"
    ];
  };
  "bcrypt" = {
    src = fetchGit {
      url = "https://github.com/samth/bcrypt.rkt";
      rev = "aefe2dd22eaf1617cada1995288af390475f3e0f";
      ref = "master";
    };
    deps = [
      "base"
      "dynext-lib"
      "rackunit-lib"
    ];
  };
  "squicky" = {
    src = fetchzip {
      stripRoot = false;
      url = "http://nxg.me.uk/dist/squicky/squicky.zip";
      sha256 = "1dbqkwwzbdh0ssml4c4qb5syfvqw9kdzl2dc7q7znqdknpw81547";
    };
    deps = [
      "base"
      "parser-tools-lib"
      "scribble-lib"
      "srfi-lite-lib"
      "at-exp-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "raco-search" = {
    src = fetchGit {
      url = "https://github.com/yilinwei/raco-search.git";
      rev = "b5341b696c280f15f8a731008e0f814cc95c2865";
    };

    deps = [
      "base"
      "levenshtein"
    ];
  };
  "sew-lib" = {
    src = fetchGit {
      url = "https://github.com/lathe/sew-for-racket.git";
      rev = "8758c3792adb413af2b822e54d3e8f5e8d3f55db";
      ref = "main";
    };
    subpath = "sew-lib";
    deps = [
      "base"
      "parendown-lib"
    ];
  };
  "libzstd-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libzstd-x86_64-macosx-1.5.5.tar.gz";
      sha256 = "0qns2nwff03pkgsadplr69li0af25wb0ff0hyzp00dgkldcbmsa7";
    };
    deps = [
      "base"
    ];
  };
  "font-finder" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/font-finder.git";
      rev = "fa316eef64ee8525ad741479f132246b4a0acf85";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "pex" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-pex";
      rev = "57997dcdcf5533249d65a9040d55763b22dda57a";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "mordae"
      "libserialport"
      "racket-doc"
      "typed-racket-doc"
      "typed-racket-lib"
    ];
  };
  "readline" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/readline.zip";
      sha256 = "0qsdz4jq17mvbqyg66rhph5zjx6056dghg2bcpvd2zj06hnk2lzv";
    };
    deps = [
      "readline-lib"
      "readline-doc"
    ];
  };
  "biginterval" = {
    src = fetchGit {
      url = "https://github.com/oflatt/biginterval.git";
      rev = "5a0311dc12a7d63b9598d7ddc7aad048ce3df165";
    };

    deps = [
      "base"
      "math-lib"
    ];
  };
  "html-parsing" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/html-parsing.zip";
      sha256 = "1hksx2yixxn6ncwa39s8yxxp3sdxjz1j2pg7jvz9il02sq137qbb";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "trie" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/racket-trie.git";
      rev = "4b3d77756fcf6ad7889d5a656f8f14f5a67193ad";
    };

    deps = [
      "base"
      "handy"
      "struct-plus-plus"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "handy"
    ];
  };
  "bookcover" = {
    src = fetchGit {
      url = "https://github.com/otherjoel/bookcover.git";
      rev = "870b54e86e0bc2b01da51828a1ccb2fb2a605544";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "draw-lib"
      "pict-lib"
      "draw-doc"
      "pict-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "slideshow-doc"
    ];
  };
  "video-v0-0" = {
    src = fetchGit {
      url = "https://github.com/videolang/video#v0.0";
      rev = "39112ec3b7fbc6b611a67cc5f9ac3c988c50f16d";
      ref = "v0.0";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "images-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "termconfig" = {
    src = fetchGit {
      url = "https://github.com/dodgez/termconfig.git#main";
      rev = "620c2fee9491186fc5faf8a5d2b4c0eb67062657";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "data-table" = {
    src = fetchGit {
      url = "https://github.com/jadudm/data-table.git";
      rev = "331dcd445372435abcca64e4eb75c8d34a73fe5b";
    };

    deps = [
      "db"
      "data-lib"
      "csv-reading"
      "gregor"
      "rackunit"
      "rackunit-chk"
    ];
  };
  "pyffi-lib" = {
    src = fetchGit {
      url = "https://github.com/soegaard/pyffi.git";
      rev = "ca640c10acb1ca20c2ea4d6d8eabfd68c020c305";
      ref = "main";
    };
    subpath = "pyffi-lib";
    deps = [
      "base"
      "at-exp-lib"
      "base"
      "at-exp-lib"
    ];
  };
  "static-rename-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-static-rename";
      rev = "50f1ff9866a3ef116471eb1a483c1992480dcd45";
    };
    subpath = "static-rename-test";
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-spec"
      "static-rename-lib"
    ];
  };
  "z3" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/z3-rkt.git";
      rev = "78deda2c7a377b93caefd40fd16e5df9c6d53c40";
    };
    subpath = "z3/";
    deps = [
      "base"
      "html-lib"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "aws" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/aws";
      rev = "99c2831efd87858633748f8dc3c4e7b96e428579";
      ref = "master";
    };
    deps = [
      "base"
      "http"
      "sha"
      "at-exp-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "Fairylog" = {
    src = fetchGit {
      url = "https://github.com/pezipink/fairylog.git";
      rev = "f0c1d0d82e2ed9ff02486ddd91a0ede5c5483ef7";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "plisqin" = {
    src = fetchGit {
      url = "https://github.com/default-kramer/plisqin.git";
      rev = "26421c7c42656c873c4e0a4fc7f48c0a3ed7770f";
    };

    deps = [
      "base"
      "db-lib"
      "morsel-lib"
      "at-exp-lib"
      "db-doc"
      "doc-coverage"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "zeromq-guide-examples" = {
    src = fetchGit {
      url = "https://github.com/aymanosman/racket-packages.git";
      rev = "b938f6e33d04cfd62f9a328543d3943a0f3f53a0";
    };
    subpath = "zeromq-guide-examples";
    deps = [
      "base"
      "zeromq-r-lib"
    ];
  };
  "eopl" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/eopl.zip";
      sha256 = "1y0n69j500c68b5mwwznskpjpjysnz8csjc9byskyhnf9n8v29kc";
    };
    deps = [
      "base"
      "compatibility-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "scheme-doc"
    ];
  };
  "math-i386-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-i386-macosx.zip";
      sha256 = "0dwanfh3r5ls4bxhwkvcqnd7mkhclry344yhkhlqfpx19my4zcwr";
    };
    deps = [
      "base"
    ];
  };
  "neuron-shell" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-neuron-shell.git";
      rev = "6f60ede1866a8a419e44972ea11220d0457e8acb";
    };

    deps = [
      "base"
      "scribble-lib"
    ];
  };
  "battlearena" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "battlearena";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "racket-ppc-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-ppc-macosx-3.zip";
      sha256 = "0q9m702008mhihch1g2zsqzgr431j117a00q18fm7qwyj9sjx5z0";
    };
    deps = [
      "base"
    ];
  };
  "version-string-with-git-hash" = {
    src = fetchGit {
      url = "https://gitlab.flux.utah.edu/xsmith/version-string-with-git-hash.git";
      rev = "4ce6127180c08f0149207ff62605264df82f6bc0";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "cldr-dates-modern" = {
    src = fetchGit {
      url = "https://github.com/97jaz/cldr-dates-modern";
      rev = "c36282917247f6a069e553535f4619007cd7b6e5";
    };

    deps = [
      "base"
      "cldr-core"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "plt-build-plot" = {
    src = fetchGit {
      url = "https://github.com/racket/plt-build-plot";
      rev = "98b65b868be50510b01090a41165751c165689e5";
    };

    deps = [
      "base"
      "aws"
      "s3-sync"
      "draw-lib"
      "gui-lib"
      "scribble-html-lib"
      "plt-web-lib"
      "plt-service-monitor"
    ];
  };
  "racket-to" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-to.git";
      rev = "c76caf3721c09d68c5871a64481b15be72293259";
    };

    deps = [
    ];
  };
  "cur-doc" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/cur.git";
      rev = "98f721818c72966df3171a504f14a5e550a6fcfd";
      ref = "main";
    };
    subpath = "cur-doc";
    deps = [
      "base"
      "base"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "cur-lib"
      "data-doc"
    ];
  };
  "unb-cs4613" = {
    src = fetchGit {
      url = "https://pivot.cs.unb.ca/git/unb-cs4613.git";
      rev = "ee45904d7ed9f3ca27be5f06dff08ceb3fcb8ef3";
    };

    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "net-lib"
      "plait"
      "plai-dynamic"
      "https://github.com/shriram/smol.git"
      "brag"
    ];
  };
  "sawzall-doc" = {
    src = fetchGit {
      url = "https://github.com/ralsei/sawzall.git";
      rev = "2866f3646aad5d062c559b2c7a6b5c61d10b8481";
      ref = "main";
    };
    subpath = "sawzall-doc";
    deps = [
      "base"
      "data-frame"
      "racket-doc"
      "sawzall-lib"
      "scribble-lib"
      "threading-lib"
      "threading-doc"
    ];
  };
  "barrel" = {
    src = fetchGit {
      url = "https://github.com/the-cellar/barrel.git";
      rev = "0f8f683eea4c738f534cc4425b6abd7ea303999d";
      ref = "main";
    };
    subpath = "barrel";
    deps = [
      "base"
      "beautiful-racket"
      "brag-lib"
      "threading-lib"
      "br-parser-tools"
      "control"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "lambda-calculus" = {
    src = fetchGit {
      url = "https://github.com/oransimhony/lambda-calculus.git";
      rev = "9111401749ef9be7f162eec79961b448024522af";
    };

    deps = [
      "beautiful-racket-lib"
      "rackunit-lib"
      "base"
      "brag"
      "beautiful-racket"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "syntax-classes" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/syntax-classes.git";
      rev = "4d64d35259d69ee8d5c90f475fe777c66d54c8fd";
    };
    subpath = "syntax-classes";
    deps = [
      "base"
      "syntax-classes-lib"
      "syntax-classes-doc"
    ];
  };
  "lua-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lua.git";
      rev = "7551d2efbc1187ab91afb61ef6b291b382e1edce";
    };
    subpath = "lua-lib";
    deps = [
      "base"
      "iso-printf-lib"
      "sandbox-lib"
    ];
  };
  "scribble-abbrevs" = {
    src = fetchGit {
      url = "https://github.com/bennn/scribble-abbrevs";
      rev = "1ad7eeb94a2fdfafa89222507c518a55b035f702";
    };

    deps = [
      "base"
      "scribble-lib"
      "reprovide-lang-lib"
      "pict-lib"
      "draw-lib"
      "scribble-lib"
      "scribble-doc"
      "racket-doc"
      "rackunit-abbrevs"
      "rackunit-lib"
      "rackunit-abbrevs"
      "pict-doc"
    ];
  };
  "iso-printf-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-iso-printf.git";
      rev = "88e025741aa955107b06c1fd282273d345900b4b";
    };
    subpath = "iso-printf-lib";
    deps = [
      "base"
    ];
  };
  "rustc-wrapper" = {
    src = fetchGit {
      url = "https://github.com/csmoe/rustc-wrapper#main";
      rev = "2287383203334ce73185b96d702d5a3768f69bf0";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "laundry" = {
    src = fetchGit {
      url = "https://github.com/tgbugs/laundry.git";
      rev = "5f08dbadd1b9ec9477340a145fc6fe2a459d3745";
      ref = "master";
    };
    subpath = "laundry";
    deps = [
      "rackunit-lib"
      "base"
      "brag"
    ];
  };
  "webscraperhelper" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/webscraperhelper.zip";
      sha256 = "19p1bfdqnrif5b0qlvhv4n2k6rnxi9x1q8scqqsfn2frsk9cgm4n";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "x509-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/crypto.git";
      rev = "129997ab537db2eea142b5eb25cf2fc74a19d4ec";
    };
    subpath = "x509-lib";
    deps = [
      "base"
      "asn1-lib"
      "base64-lib"
      "crypto-lib"
      "db-lib"
      "scramble-lib"
    ];
  };
  "minetest" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/minetest.git";
      rev = "74ba2d02511e96bfc477ab6db4937d1732bd1e2b";
    };

    deps = [
    ];
  };
  "science" = {
    src = fetchGit {
      url = "https://github.com/planet-ports/science.git";
      rev = "ccd0b7277de38eb871202d1af09542cfd1f125c8";
    };

    deps = [
    ];
  };
  "r7rs" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-r7rs.git";
      rev = "84be3d16aab202e08b13da2f0e7c095e03ff0895";
      ref = "master";
    };
    subpath = "r7rs";
    deps = [
      "base"
      "r7rs-lib"
    ];
  };
  "css-tools" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/css-tools.git";
      rev = "90c8f8f1068e5d03e0c4793712a5cb48af9aef48";
    };

    deps = [
      "base"
      "sugar"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "refined-acl2" = {
    src = fetchGit {
      url = "https://github.com/carl-eastlund/refined-acl2";
      rev = "2e344ad7bcbc5b5a758296a8158dcf9a7f3880bd";
      ref = "master";
    };
    deps = [
      "mischief"
    ];
  };
  "rockstar" = {
    src = fetchGit {
      url = "https://github.com/whichxjy/rockstar-rkt.git";
      rev = "47723774e7ec6995eedd8fba27856b58ab056f71";
    };
    subpath = "rockstar";
    deps = [
      "base"
      "beautiful-racket-lib"
      "brag-lib"
      "rackunit-lib"
    ];
  };
  "srfi-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-test.zip";
      sha256 = "1gca2v9wwz6zpcsni8i3i229axwr9rv0hqw9di16ykyfwcd25kvz";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "rackunit-lib"
      "srfi-lib"
    ];
  };
  "draw-i386-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-i386-macosx-3.zip";
      sha256 = "11a7wyjjihgi033fj4mah8vqk9az4iwbr7ffw60ly9gyljz57qac";
    };
    deps = [
      "base"
    ];
  };
  "Qi-Quickscripts" = {
    src = fetchGit {
      url = "https://github.com/spdegabrielle/Qi-Quickscripts.git#master";
      rev = "662e749cc2edd21d5abb689c28e5052dafc24059";
      ref = "master";
    };

    deps = [
      "base"
      "quickscript"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "opengl" = {
    src = fetchGit {
      url = "https://github.com/stephanh42/RacketGL";
      rev = "1aaf2b2836680f807fbec5234ed475585b41b4ab";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "scribble-lib"
      "srfi-lite-lib"
      "draw-doc"
      "gui-doc"
      "gui-lib"
      "racket-doc"
    ];
  };
  "pict-snip-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-snip-test.zip";
      sha256 = "06a4x3cdsgzhvfps35rss0b0ab6699jlcgbn6jsnl79djirnj5b6";
    };
    deps = [
      "base"
      "pict-snip-lib"
      "draw-lib"
      "pict-lib"
      "rackunit-lib"
    ];
  };
  "cur-test" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/cur.git";
      rev = "98f721818c72966df3171a504f14a5e550a6fcfd";
      ref = "main";
    };
    subpath = "cur-test";
    deps = [
      "base"
      "rackunit-lib"
      "cur-lib"
      "sweet-exp-lib"
      "chk-lib"
      "rackunit-macrotypes-lib"
    ];
  };
  "vdb-test" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-vdb.git";
      rev = "af864c8f711114a20f3fde23c48d581248e27e05";
    };
    subpath = "src/vdb-test";
    deps = [
      "base"
      "rackunit-lib"
      "threading-lib"
      "vdb-lib"
    ];
  };
  "class-iop" = {
    src = fetchGit {
      url = "https://github.com/racket/class-iop";
      rev = "f640064b50109887c40da6df3d3cebf635040794";
    };
    subpath = "class-iop";
    deps = [
      "class-iop-lib"
      "class-iop-doc"
    ];
  };
  "ds-store" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/ds-store.zip";
      sha256 = "0blvqhksal9fyab145451w721p6c6gkayp1gb81f7rxbys74i5wg";
    };
    deps = [
      "ds-store-lib"
      "ds-store-doc"
      "base"
    ];
  };
  "toml-lib" = {
    src = fetchGit {
      url = "https://github.com/toml-racket/toml-racket.git";
      rev = "fe46aa2c75939997dc21a2faaa79ea51304c4d15";
    };
    subpath = "toml-lib";
    deps = [
      "base"
      "gregor-lib"
      "parsack-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "tetris" = {
    src = fetchGit {
      url = "https://github.com/mosceo/tetris.git";
      rev = "bbf9dc58b8b1606f574ebf1a466eeef278689a68";
    };

    deps = [
      "base"
      "htdp-lib"
      "rackunit-lib"
    ];
  };
  "syntax-highlighting" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/syntax-highlighting.git";
      rev = "44eec676564ee45d631870e494796ed55a55434f";
    };

    deps = [
      "base"
    ];
  };
  "errortrace" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/errortrace.zip";
      sha256 = "05fm54lycy08l4yapip3wabnn8j400p7hbvmacg21hgifl0srm9n";
    };
    deps = [
      "errortrace-lib"
      "errortrace-doc"
    ];
  };
  "berkeley" = {
    src = fetchzip {
      stripRoot = false;
      url = "http://inst.eecs.berkeley.edu/~cs61as/library/berkeley.zip";
      sha256 = "1i7jrqhpksx2yd1m9xwrb3aji7b7v27fn2ssvl1z489ri559hlli";
    };
    deps = [
    ];
  };
  "option-bind" = {
    src = fetchGit {
      url = "https://github.com/RenaissanceBug/option-bind";
      rev = "8d8346d612e401d7b44a04a121881f66e5a43cf6";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "multicolumn" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/multicolumn.git";
      rev = "916e9acca5ccf56b319bf5e641fac483ed60eac9";
    };

    deps = [
      "base"
      "stretchable-snip"
      "gui-lib"
    ];
  };
  "box-extra-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-box-extra.git";
      rev = "041412cd5b122ecfb9cc2312f21d281e0d4b7143";
    };
    subpath = "box-extra-lib";
    deps = [
      "base"
    ];
  };
  "syntax-extension" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/syntax-extension.git#develop";
      rev = "d43f43194ecc19e314677b57ac77e7c188867dda";
      ref = "develop";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
    ];
  };
  "racquel" = {
    src = fetchGit {
      url = "https://github.com/brown131/racquel";
      rev = "e5ae8cf5a848be390596122cd43f777efa683549";
    };

    deps = [
      "base"
      "db-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "math-x86_64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-x86_64-macosx.zip";
      sha256 = "0qmg76232nxypzrn5jrs1hk3q7b0qk3b2kajbgbwj49lrgpcbbs6";
    };
    deps = [
      "base"
    ];
  };
  "version-case" = {
    src = fetchGit {
      url = "https://github.com/samth/version-case";
      rev = "9c1ebfec3cc2291dacd07c8537d041537a30b58b";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "typed-struct-props" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/typed-struct-props.git#main";
      rev = "5512b7f4c9dff6b2be445435b86babfc9b189fc8";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "type-expander"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
    ];
  };
  "semilit" = {
    src = fetchGit {
      url = "https://github.com/samth/semilit";
      rev = "54db05b04b17c3b74facea8e8a438c73d238936a";
      ref = "master";
    };
    deps = [
      "base"
      "datalog"
      "scribble-lib"
    ];
  };
  "aws-cloudformation-template-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/aws-cloudformation-template";
      rev = "00f52274a5bfc03f23c9dd511db0c87e35cf80e5";
    };
    subpath = "aws-cloudformation-template-doc";
    deps = [
      "aws-cloudformation-template-lib"
      "base"
      "racket-doc"
      "scribble-lib"
      "threading-lib"
      "turnstile"
    ];
  };
  "mzscheme" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mzscheme.zip";
      sha256 = "1whxziqixqqgqhjb9lsmi0pv41apjja21sqvzp86351blsgl11d7";
    };
    deps = [
      "mzscheme-lib"
      "mzscheme-doc"
    ];
  };
  "ziptie" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie";
    deps = [
      "ziptie-distro"
      "ziptie-git"
      "ziptie-monorepo"
    ];
  };
  "test-more" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/racket-test-more.git";
      rev = "3f4a4dd3bbb7d033949524eba6792a3a642bbae7";
    };

    deps = [
      "base"
    ];
  };
  "text-date" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/text-date.git";
      rev = "27fcf96cbed87293b7db285f509d3a527855f924";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "gui-lib"
      "gui-doc"
    ];
  };
  "synology-decrypt" = {
    src = fetchGit {
      url = "https://github.com/nikhilm/synology-decrypt.git";
      rev = "8a9f47b2b3fbf81d7c5fad3f721126cf9deefc7e";
    };

    deps = [
      "base64-lib"
      "crypto-lib"
      "lz4-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "benchmark"
      "plot-lib"
    ];
  };
  "qi-lib" = {
    src = fetchGit {
      url = "https://github.com/drym-org/qi.git";
      rev = "548bc76668d0dcd84cf15eddab3def6dd55e7656";
      ref = "main";
    };
    subpath = "qi-lib";
    deps = [
      "base"
      "fancy-app"
      "syntax-spec-v1"
      "macro-debugger"
    ];
  };
  "hash-lambda" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/hash-lambda";
      rev = "0f7a89d7056c8d9f86497e0eff159d142f74aed7";
    };

    deps = [
      "base"
      "unstable-lib"
      "unstable-list-lib"
      "kw-utils"
      "mutable-match-lambda"
      "rackunit-lib"
      "at-exp-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
    ];
  };
  "termination" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/termination.git";
      rev = "1d05c1bf8e9bd59d2fbaaa213b490fd8e59644bd";
    };
    subpath = "termination";
    deps = [
      "profile-lib"
      "r5rs-lib"
      "rackunit-lib"
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "bnf"
      "set-extras"
      "unreachable"
      "traces"
    ];
  };
  "alexis-util" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-alexis.git";
      rev = "0c4c03bf089a15347079d29e7910877a6b585f18";
    };
    subpath = "alexis-util";
    deps = [
      "base"
      "match-plus"
      "scribble-lib"
      "static-rename"
      "threading"
      "typed-racket-lib"
      "rackunit-lib"
      "at-exp-lib"
      "racket-doc"
      "typed-racket-doc"
      "sandbox-lib"
    ];
  };
  "mintexpp" = {
    src = fetchGit {
      url = "https://github.com/shhyou/mintexpp.git";
      rev = "2d457fa70581b45871833405182a84f7de236b47";
    };
    subpath = "mintexpp";
    deps = [
      "mintexpp-reader-lib"
      "mintexpp-lib"
      "mintexpp-tex-lib"
    ];
  };
  "brazilian-law" = {
    src = fetchGit {
      url = "https://github.com/OAB-exams/brazilian-law-parser.git";
      rev = "912433fd9755e309d7e681fa2c74cff5e692a6d8";
    };

    deps = [
      "base"
      "megaparsack"
      "txexpr"
      "curly-fn-lib"
      "functional-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "lua-lang" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lua.git";
      rev = "7551d2efbc1187ab91afb61ef6b291b382e1edce";
    };
    subpath = "lua";
    deps = [
      "base"
      "lua-lib"
      "base"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "lux" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/lux";
      rev = "23caa1996bde1a88e53ae0e1cf8d650e18dcbc24";
    };

    deps = [
      "draw-lib"
      "drracket"
      "gui-lib"
      "htdp-lib"
      "pict-lib"
      "base"
      "rackunit-lib"
      "draw-doc"
      "gui-doc"
      "htdp-doc"
      "pict-doc"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "namespaced-transformer-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/namespaced-transformer";
      rev = "4cdc1bdae09a07b78f23665267f2c7df4be5a7f6";
    };
    subpath = "namespaced-transformer-lib";
    deps = [
      "base"
    ];
  };
  "collections" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-collections";
      rev = "c4822fc200b0488922cd6e86b4f2ea7cf8c565da";
    };
    subpath = "collections";
    deps = [
      "collections-lib"
      "collections-doc"
    ];
  };
  "threading" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/threading";
      rev = "aedb198261cf73b3f9b282566e7e7dd9b9be63a6";
    };
    subpath = "threading";
    deps = [
      "threading-doc"
      "threading-lib"
    ];
  };
  "sew-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/sew-for-racket.git";
      rev = "8758c3792adb413af2b822e54d3e8f5e8d3f55db";
      ref = "main";
    };
    subpath = "sew-doc";
    deps = [
      "base"
      "parendown-lib"
      "racket-doc"
      "scribble-lib"
      "sew-lib"
    ];
  };
  "socks5" = {
    src = fetchGit {
      url = "https://github.com/cloudrac3r/racket-socks5.git";
      rev = "0c8ad185d743e369d15a3373664b6ab5681377d0";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "net-ip-lib"
      "http-easy-lib"
      "hyper-literate"
      "scribble-lib"
      "scribble-enhanced"
      "racket-doc"
      "http-easy"
      "net-doc"
      "typed-racket-doc"
    ];
  };
  "afl" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/afl.git#master";
      rev = "a51e609615f7645d773a726b225d3356b751d017";
      ref = "master";
    };

    deps = [
      "base"
      "hygienic-reader-extension"
      "at-exp-lib"
      "rackjure"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "scribble-code-examples"
    ];
  };
  "pmsf-src-uri" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-src-uri";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "threading-lib"
      "pmsf-condition"
      "pmsf-lib"
    ];
  };
  "web-server-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-doc.zip";
      sha256 = "0ljw7h5i408kcq2vx6bw1m0l0vicm5axwgsvb3nk4fkrpym0qlv1";
    };
    deps = [
      "base"
      "net-doc"
      "net-cookies-doc"
      "rackunit-doc"
      "db-doc"
      "scribble-doc"
      "db-lib"
      "net-lib"
      "net-cookies-lib"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "web-server-lib"
      "racket-doc"
    ];
  };
  "match-string" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/match-string";
      rev = "ffc077653b3cdd851fd55589256f1e1177f6ed68";
    };

    deps = [
      "base"
      "anaphoric"
      "srfi-lite-lib"
      "rackunit-lib"
      "htdp-lib"
      "racket-doc"
      "scribble-lib"
      "sandbox-lib"
    ];
  };
  "portage-admin-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-portage-admin.git";
      rev = "84fc9d2e2838eca9d576ca0f6862ed0e10841c86";
    };
    subpath = "src/portage-admin-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "portage-admin-lib"
    ];
  };
  "no-vert-bar-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/no-vert-bar-lang";
      rev = "3e31489f2b3aff73f50cade704b724b5578af7fb";
    };

    deps = [
      "base"
      "rackunit"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "sfont" = {
    src = fetchGit {
      url = "https://github.com/danielecapo/sfont";
      rev = "c854f9734f15f4c7cd4b98e041b8c961faa3eef2";
      ref = "master";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "slideshow-lib"
      "pict-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "xlang" = {
    src = fetchGit {
      url = "https://github.com/samth/xlang";
      rev = "6672450a99cdf9aed7dcbcde2ab8e76063966973";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "emoji" = {
    src = fetchGit {
      url = "https://github.com/whichxjy/emoji.git";
      rev = "f1a1bececc0f6ed232bc3f77f1975818b457d9f8";
    };
    subpath = "emoji";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "distributed-places-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distributed-places-doc.zip";
      sha256 = "0iv8iqswps7h3q9k3f50x2pph3k4wz53cq020kf7c80y581c3lkh";
    };
    deps = [
      "base"
      "distributed-places-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "rackunit-spec" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/rackunit-spec";
      rev = "96f9f48b2f4b004fafc67a3d26805983274568c4";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "rackunit-doc"
      "scribble-lib"
    ];
  };
  "adventure-harrypotter" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "adventure-harrypotter";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=adventure"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "image-coloring" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/image-coloring.git";
      rev = "1cd39f2ccacb2d6f12b577184e5b04f775a7bc4d";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "cairo-test" = {
    src = fetchGit {
      url = "https://github.com/soegaard/cairo.git";
      rev = "c31a089e749b4854ab4f63e427881f79bca615d2";
    };
    subpath = "cairo-test";
    deps = [
      "base"
      "cairo-lib"
      "draw-lib"
    ];
  };
  "simple-tree-text-markup-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/simple-tree-text-markup-lib.zip";
      sha256 = "08rpq3b5zrapcyrxjjxi5fnmsp722k1qdrhkqj62s8r6yi3l8vr9";
    };
    deps = [
      "base"
    ];
  };
  "xfunctions-lib" = {
    src = fetchGit {
      url = "https://github.com/wesleybits/xfunctions.git";
      rev = "a8c545d55ee1d9df715ccc44fb22eec463e0f206";
    };
    subpath = "xfunctions-lib";
    deps = [
      "base"
      "racket"
      "rackunit-lib"
    ];
  };
  "battle-arena" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "battlearena";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "adventure" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "adventure";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "amazon-msk-sasl-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-kafka.git";
      rev = "1ac07163404b7ff2dbdc69a545a88dbb0bbd09ea";
    };
    subpath = "amazon-msk-sasl-lib";
    deps = [
      "base"
      "crypto-lib"
      "sasl-lib"
      "threading-lib"
      "rackunit-lib"
    ];
  };
  "openfst-x86_64-linux" = {
    src = fetchGit {
      url = "https://github.com/AlexMaclean/racket-openfst.git";
      rev = "cdd7ce0f62d159c56fc77df2fc299045f37e5d50";
    };
    subpath = "openfst-x86_64-linux";
    deps = [
      "base"
    ];
  };
  "markdown-to-scribble" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-markdown-to-scribble.git#master";
      rev = "c4d1c8a5a66ee1f6cc5fd7b85a005e0405eb9c63";
      ref = "master";
    };

    deps = [
      "base"
      "commonmark-lib"
      "soup-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "rpn" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/rpn.git";
      rev = "74ef351cae43bb64ba35a937f7a2ea664a82abdd";
    };

    deps = [
      "base"
      "rebellion"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "futures-sort" = {
    src = fetchGit {
      url = "https://github.com/dzoep/futures-sort.git";
      rev = "dc1914f60b192897855989d4b87846eaa95aa777";
    };

    deps = [
      "base"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-math"
      "at-exp-lib"
    ];
  };
  "cartoon-assets" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/cartoon-assets.git";
      rev = "995759988e3b0c986023ea9834e57ccb9ae7fb4a";
    };

    deps = [
      "https://github.com/thoughtstem/kenney-assets.git"
      "https://github.com/thoughtstem/pzuh-assets.git"
      "https://github.com/thoughtstem/define-assets-from.git"
      "https://github.com/thoughtstem/misc-artist-assets.git"
      "https://github.com/thoughtstem/tidey-assets.git"
    ];
  };
  "lathe-ordinals-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-ordinals-for-racket.git";
      rev = "7968ab73b43990ff6607239c742a816b0703612c";
      ref = "main";
    };
    subpath = "lathe-ordinals-test";
    deps = [
      "base"
      "lathe-ordinals-lib"
      "rackunit-lib"
      "parendown-lib"
    ];
  };
  "logman" = {
    src = fetchGit {
      url = "https://github.com/priime0/logman.git";
      rev = "53887e2093af1b621dd36481cd9c4ca574961e3b";
    };

    deps = [
      "base"
      "scribble-lib"
    ];
  };
  "w3s" = {
    src = fetchGit {
      url = "https://github.com/wargrey/w3s.git";
      rev = "abd97a6d09167be4faab2845bd03d057ac570458";
    };

    deps = [
      "base"
      "digimon"
      "graphics"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "digimon"
      "graphics"
    ];
  };
  "turing" = {
    src = fetchGit {
      url = "https://github.com/curiousyogurt/turing#master";
      rev = "a5ecb87a22eccb6cdcf271eb408c3efffe4635c7";
      ref = "master";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "nat-traversal" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-nat-traversal.git";
      rev = "091d3ce0990b05508d1b0e0ff9997774a48161d2";
    };

    deps = [
      "net-lib"
      "base"
      "bitsyntax"
      "web-server-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "the-unicoder" = {
    src = fetchGit {
      url = "https://github.com/willghatch/the-unicoder.git";
      rev = "5803dbaaa455b400d881e2409d642f956cc139c1";
    };

    deps = [
      "base"
      "gui-lib"
      "unix-socket-lib"
      "tex-table"
      "basedir"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "pkg-push" = {
    src = fetchGit {
      url = "https://github.com/racket/pkg-push";
      rev = "3fc18d8edb81b854ed98897bef925c73f68597ed";
    };

    deps = [
      "aws"
      "base"
      "http"
    ];
  };
  "bleir-sandbox" = {
    src = fetchGit {
      url = "https://github.com/rebcabin/bleir-sandbox.git#master";
      rev = "f447a68836248573a828acc04f11a8669040e126";
      ref = "master";
    };

    deps = [
      "wxme-lib"
      "beautiful-racket-lib"
      "base"
      "wxme-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "megaparsack-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/megaparsack";
      rev = "0ccdee4270da0337700ac62aa106735d0d879695";
    };
    subpath = "megaparsack-doc";
    deps = [
      "base"
      "functional-doc"
      "functional-lib"
      "megaparsack-lib"
      "megaparsack-parser-tools"
      "parser-tools-doc"
      "parser-tools-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "reactor" = {
    src = fetchGit {
      url = "https://github.com/florence/reactor.git";
      rev = "c4687bd43fafcd09802042648900d4737b04f923";
    };

    deps = [
      "seq-no-order"
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit"
    ];
  };
  "survival" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "survival";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
    ];
  };
  "otp" = {
    src = fetchGit {
      url = "https://github.com/yilinwei/otp.git";
      rev = "463985c11cfb229ca9846513065d1a5bfc1f76c7";
    };
    subpath = "otp";
    deps = [
      "crypto-lib"
      "rackunit-lib"
      "base"
      "otp-lib"
      "typed-otp-lib"
      "otp-doc"
    ];
  };
  "libuuid" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-libuuid";
      rev = "c2d169bd1b4dadea867cd276070021be0d235321";
      ref = "master";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "counter" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/scheme-counter.git";
      rev = "c640e6c635bb5ebe44bf35e30a0d9774d0b214a6";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "r5rs-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r5rs-lib.zip";
      sha256 = "1qdickncv3jrnvjx3cdfhd6kixs5lkx4f1j8r70ncfqjs3wn3aqh";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
    ];
  };
  "glc" = {
    src = fetchGit {
      url = "https://github.com/GriffinMB/glc.git";
      rev = "22fd96aa0a11b092cd8aaaeb049e03bea05764d3";
    };

    deps = [
      "lazy"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "restore" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/restore";
      rev = "c38049acd1bde962453977d2469cf2ae8b99acb7";
    };

    deps = [
      "base"
      "unstable-lib"
    ];
  };
  "process-queue" = {
    src = fetchGit {
      url = "https://github.com/llazarek/process-queue.git";
      rev = "7a60467f1db5193865682aa0f4d6c863d5294b87";
      ref = "master";
    };
    subpath = "process-queue";
    deps = [
      "base"
      "pfds"
      "data-lib"
      "ruinit"
      "racket-doc"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "priority-queue" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-priority-queue.git#master";
      rev = "ce1522ec7dd99b509437d0185e0146100c354d8d";
      ref = "master";
    };

    deps = [
      "base"
      "extra-srfi-libs"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "anaphoric" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/anaphoric.git#main";
      rev = "c648ec2aad6d2b2ec72acc729143454d1e855cf6";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "redex" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex.zip";
      sha256 = "003wfk1gxi2023kzcxdf4xv4v81qw04i7dbvmfswcbp0n8pfcpbv";
    };
    deps = [
      "redex-doc"
      "redex-examples"
      "redex-lib"
      "redex-gui-lib"
    ];
  };
  "resource-pool-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-resource-pool.git";
      rev = "019ee1c17e5596d2e2e8cd1387811440da2dc95a";
    };
    subpath = "resource-pool-lib";
    deps = [
      "base"
    ];
  };
  "fluent" = {
    src = fetchGit {
      url = "https://github.com/rogerkeays/racket-fluent.git#main";
      rev = "b8bc82e25a35451ba3136f393157e380e6f4837f";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit"
    ];
  };
  "Package-Backward-Compatibility-Checker" = {
    src = fetchGit {
      url = "https://github.com/capfredf/pkg-backward-comp-check.git";
      rev = "615d1f61514f0f1348590443f2798eae5c45ebf0";
    };

    deps = [
      "base"
      "raco-static-web"
      "package-analysis"
      "rebellion"
      "remote-shell"
      "pkg-build"
    ];
  };
  "wn" = {
    src = fetchGit {
      url = "https://github.com/themetaschemer/wn";
      rev = "3b134199c0a6c496323afd0f9573b33d5cc9e7e5";
    };

    deps = [
    ];
  };
  "sml" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-sml.git";
      rev = "f284391f194eafbca4fc211ce2c95255bdd57f72";
    };

    deps = [
      "base"
      "at-exp-lib"
    ];
  };
  "mediafile" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/mediafile.zip";
      sha256 = "0inkhhnpid0914zwzv9xmq4hhypy6j1c2wlbixvn203w6q42mjd0";
    };
    deps = [
      "base"
      "mcfly"
      "canonicalize-path"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "new" = {
    src = fetchGit {
      url = "https://github.com/racket-templates/new.git#main";
      rev = "b350356803f0f5dfbd5f651da8de607b37c0758b";
      ref = "main";
    };

    deps = [
      "base"
      "readline"
      "http-easy"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "mutate-mutators" = {
    src = fetchGit {
      url = "https://github.com/llazarek/mutate.git";
      rev = "a6932812d991d4dfcac0fb91deb6948ac4597e45";
      ref = "master";
    };
    subpath = "mutate-mutators";
    deps = [
      "base"
      "mutate-lib"
      "mutate-test"
      "ruinit"
      "at-exp-lib"
    ];
  };
  "game-engine-rpg" = {
    src = fetchGit {
      url = "https://github.com/srfoster/game-engine-rpg.git";
      rev = "d39160dd5dfc8ed80ca17e60b19035e16142b728";
    };

    deps = [
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
    ];
  };
  "planet" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet.zip";
      sha256 = "0064z2xp3d5f42p9v7n02zr1438569k8f51pqjapdl3dgg3q1xk9";
    };
    deps = [
      "planet-lib"
      "planet-doc"
    ];
  };
  "egg-herbie-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://github.com/uwplse/herbie/releases/download/v2.0.2/egg-herbie-ubuntu.zip";
      sha256 = "04dkb5m73nik50qkzd5hh69hvfwkprk70qxcqzf9x2w25yixq26q";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "cldr-core" = {
    src = fetchGit {
      url = "https://github.com/97jaz/cldr-core";
      rev = "c9b80777c422c3b104bb85052d74a2dc1535a3c3";
    };

    deps = [
      "base"
      "memoize-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pict-balloon2" = {
    src = fetchGit {
      url = "https://github.com/mflatt/pict-balloon2";
      rev = "ebe574301cf52c9fc4495c6f502e91ab9e87975a";
    };

    deps = [
      "base"
      "draw-lib"
      "pict-lib"
      "slideshow-lib"
    ];
  };
  "syntax-classes-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/syntax-classes.git";
      rev = "4d64d35259d69ee8d5c90f475fe777c66d54c8fd";
    };
    subpath = "syntax-classes-test";
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-spec"
      "syntax-classes-lib"
    ];
  };
  "openapidsl" = {
    src = fetchGit {
      url = "https://github.com/javiervivanco/openapi.git#master";
      rev = "3c3c0da9710ad7163c1b264cee7364f333f11b1f";
      ref = "master";
    };

    deps = [
    ];
  };
  "open-app" = {
    src = fetchGit {
      url = "https://github.com/SimonLSchlee/open-app.git";
      rev = "5503f0d2b5e398c864e6bdacfac9c672bf9b9869";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "csrmesh" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/csrmesh.git";
      rev = "d7cc04b2bbfd45c71bf086bf5075de9ccd81415f";
    };

    deps = [
      "crypto"
      "bitsyntax"
      "word"
      "typed-racket-more"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "typed-racket-doc"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "syntax-sloc" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/syntax-sloc";
      rev = "cd75518812385d7075d53a158fa76cc0ffb45803";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "lang-file"
      "rackunit-lib"
      "scribble-lib"
      "scribble-code-examples"
      "racket-doc"
      "typed-racket-more"
    ];
  };
  "gui-widget-mixins" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/gui-widget-mixins.git";
      rev = "b777a1ca8652c42118b1f505765ea23933ab6355";
    };

    deps = [
      "base"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "gui-doc"
    ];
  };
  "typed-map-doc" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/typed-map.git";
      rev = "7a70650b6f8e1222fe1e4ebd2fb6b9b2489301e2";
      ref = "main";
    };
    subpath = "typed-map-doc";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "aful"
      "typed-map-lib"
    ];
  };
  "glu-tessellate" = {
    src = fetchGit {
      url = "https://github.com/mflatt/glu-tessellate";
      rev = "8efe65b35a2554be6dc613c016791ef2bf5ffb82";
    };

    deps = [
      "base"
      "draw-doc"
      "gui-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "udelim" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-udelim.git";
      rev = "6bdfb2af13bc27eb68d2e210b6ac7e19d2d1c826";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "sandbox-lib"
      "rackunit-lib"
    ];
  };
  "sawzall-test" = {
    src = fetchGit {
      url = "https://github.com/ralsei/sawzall.git";
      rev = "2866f3646aad5d062c559b2c7a6b5c61d10b8481";
      ref = "main";
    };
    subpath = "sawzall-test";
    deps = [
      "base"
      "data-frame"
      "rackunit-lib"
      "sawzall-lib"
      "threading-lib"
    ];
  };
  "draw-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-doc.zip";
      sha256 = "0zg1zp4rv3v1l68150r7kr9612qvcvg0y6ndpikhs961jmhqn1m1";
    };
    deps = [
      "gui-doc"
      "pict-doc"
      "at-exp-lib"
      "base"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "draw-lib"
      "racket-doc"
    ];
  };
  "g-code-tools" = {
    src = fetchGit {
      url = "https://github.com/GThad/g-code-tools.git";
      rev = "8a786ec0608afdc0729c344e7cd58d368fc86ff9";
    };

    deps = [
      "base"
      "parser-tools-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "get-pass" = {
    src = fetchGit {
      url = "https://github.com/smitchell556/get-pass.git";
      rev = "6733b1094c57bb9d6e1e5e4a415fd4e2d0878d99";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "taskibble" = {
    src = fetchGit {
      url = "https://github.com/sorpaas/taskibble";
      rev = "c333907e04ab23b0a79cd7c763f691dd743897ac";
    };

    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "planet-lib"
      "net-lib"
      "at-exp-lib"
      "draw-lib"
      "syntax-color-lib"
      "sandbox-lib"
      "typed-racket-lib"
      "datalog"
      "rackunit-lib"
    ];
  };
  "stxparse-info" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/stxparse-info.git#main";
      rev = "d35e84905fdbbef4309edca0a138cd77066be185";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "version-case"
      "subtemplate"
      "auto-syntax-e"
      "compatibility-lib"
      "scribble-lib"
      "racket-doc"
      "at-exp-lib"
    ];
  };
  "compiler" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compiler.zip";
      sha256 = "0lbrwfp7z6g3b1xxd598d16ilyh5mv1xgcj4v58ibvg5wj96c4x8";
    };
    deps = [
      "compiler-lib"
    ];
  };
  "xml-html" = {
    src = fetchGit {
      url = "https://github.com/zaoqi/xml-html.git";
      rev = "b4d38ef693d5dc1397c0a7dd822153617c41ea16";
    };

    deps = [
    ];
  };
  "roman-numeral" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/roman-numeral";
      rev = "d13c66b19438060fc42773ed2db526d1a71e8129";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "http" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/http";
      rev = "a9b9c6aef1a26c70680c35c84a7ab4583ea089cf";
    };

    deps = [
      "base"
      "html-lib"
      "rackunit-lib"
      "net-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "fixture" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-fixture";
      rev = "fafde5528ad6491cd9e87c078f9838eabc524a87";
    };

    deps = [
      "reprovide-lang"
      "fancy-app"
      "rackunit-lib"
      "base"
      "disposable"
      "doc-coverage"
      "racket-doc"
      "rackunit-doc"
      "scribble-lib"
    ];
  };
  "avl" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-avl";
      rev = "e981880a7d4c202368cdd74c94cf11cbac42a29e";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "macrokey-test" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-macrokey.git";
      rev = "7b7063fa5efee392f309b4b208df927868735495";
    };
    subpath = "src/macrokey-test";
    deps = [
      "base"
      "rackunit-lib"
      "macrokey-lib"
    ];
  };
  "r5rs" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r5rs.zip";
      sha256 = "0w20i5kk6n5bgkp3sp85b4rpy92xcwbg0vx611hpx28x23vl53yr";
    };
    deps = [
      "r5rs-lib"
      "r5rs-doc"
    ];
  };
  "sasl-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sasl-lib.zip";
      sha256 = "0zgs9ds9jigijb6b3sljf6gwqsal506wcz0vm9vvyg2lfr8vm126";
    };
    deps = [
      "base"
    ];
  };
  "chess" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/chess.git";
      rev = "cd7aaa015ddaa87026b11dfe8dbe6778409b5286";
    };

    deps = [
      "base"
      "pict-lib"
      "rebellion"
      "reprovide-lang"
      "pict-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "deta-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/deta.git";
      rev = "df9ddc886df098537fa18f1ec775ec591d9a630b";
    };
    subpath = "deta-doc";
    deps = [
      "base"
      "db-doc"
      "db-lib"
      "deta-lib"
      "gregor-doc"
      "gregor-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
      "threading-doc"
      "threading-lib"
    ];
  };
  "dynamic-xml" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/dynamic-xml.git";
      rev = "0e41c5b26fd0780604d0ecdc27d1e2c40faceb97";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "arguments" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-mock";
      rev = "5e8e2a1dd125e5e437510c87dabf903d0ec25749";
    };
    subpath = "arguments";
    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "pollen" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/pollen.git";
      rev = "1fa3f236c232c9bf24fae370bb8f4e88c25391f1";
    };

    deps = [
      "base"
      "txexpr"
      "sugar"
      "markdown"
      "htdp"
      "at-exp-lib"
      "html-lib"
      "rackjure"
      "web-server-lib"
      "scribble-lib"
      "scribble-text-lib"
      "rackunit-lib"
      "gui-lib"
      "string-constants-lib"
      "net-lib"
      "plot-gui-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
      "plot-doc"
      "scribble-doc"
      "slideshow-doc"
      "web-server-doc"
      "drracket"
    ];
  };
  "parsack" = {
    src = fetchGit {
      url = "https://github.com/stchang/parsack.git";
      rev = "57b21873e8e3eb7ffbdfa253251c3c27a66723b1";
      ref = "master";
    };
    subpath = "parsack";
    deps = [
      "base"
      "parsack-lib"
      "parsack-doc"
      "parsack-test"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "extra-srfi-libs" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-extra-srfi-libs.git#master";
      rev = "1b48c15d57a951015d323dac842a75bf3b079a3f";
      ref = "master";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "srfi-lib"
      "math-lib"
      "data-lib"
      "compatibility-lib"
      "racket"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-typed"
      "data-doc"
    ];
  };
  "xfunctions-doc" = {
    src = fetchGit {
      url = "https://github.com/wesleybits/xfunctions.git";
      rev = "a8c545d55ee1d9df715ccc44fb22eec463e0f206";
    };
    subpath = "xfunctions-doc";
    deps = [
      "base"
      "racket"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "xfunctions-lib"
    ];
  };
  "collections-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-collections";
      rev = "c4822fc200b0488922cd6e86b4f2ea7cf8c565da";
    };
    subpath = "collections-lib";
    deps = [
      "base"
      "curly-fn-lib"
      "functional-lib"
      "match-plus"
      "static-rename"
      "unstable-list-lib"
    ];
  };
  "rackcheck-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/rackcheck.git";
      rev = "21dcda3edf86c28d9594887e92c5d7bef589897c";
    };
    subpath = "rackcheck-lib";
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-lib"
    ];
  };
  "functional-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/functional";
      rev = "be2285cd3da0e2fffe651a8ab723185bb669425d";
    };
    subpath = "functional-doc";
    deps = [
      "base"
      "collections-doc"
      "collections-lib"
      "functional-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "syntax-classes-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/syntax-classes.git";
      rev = "4d64d35259d69ee8d5c90f475fe777c66d54c8fd";
    };
    subpath = "syntax-classes-lib";
    deps = [
      "base"
    ];
  };
  "sass" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-sass.git";
      rev = "40f267ed1e081848b12cbe7a0eb4b9fa08b15501";
    };
    subpath = "sass";
    deps = [
      "base"
      "libsass-i386-win32"
      "libsass-x86_64-linux"
      "libsass-x86_64-macosx"
      "libsass-x86_64-win32"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "libsass-i386-win32"
      "libsass-x86_64-linux"
      "libsass-x86_64-macosx"
      "libsass-x86_64-win32"
    ];
  };
  "chido-parse" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-chido-parse.git";
      rev = "820b2e7e0b47259ca8f30a77fc19fe9eab209ac0";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "data-lib"
      "kw-make-struct"
      "quickcheck"
      "web-server-lib"
      "at-exp-lib"
      "linea"
      "profile-lib"
    ];
  };
  "sentry" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-sentry.git";
      rev = "720daa812297328cd8d50852865b514143dad12d";
    };
    subpath = "sentry";
    deps = [
      "sentry-doc"
      "sentry-lib"
    ];
  };
  "testing-util-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/testing-util-lib.zip";
      sha256 = "1l189xm5z7q3cbdkgwva43sydrywyhxdiiq6kcdv122zmwvza2hw";
    };
    deps = [
      "base"
    ];
  };
  "plai-lazy" = {
    src = fetchGit {
      url = "https://github.com/mflatt/plai-lazy";
      rev = "814aa836ba1b981b9916fbfa9ba7b2683b0350c4";
    };

    deps = [
      "base"
      "gui-lib"
      "lazy"
      "plai"
      "sandbox-lib"
      "scheme-lib"
      "srfi-lite-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "scramble-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-scramble.git";
      rev = "49987d70b62b1a011704adfd978032dc91967e05";
    };
    subpath = "scramble-lib";
    deps = [
      "base"
    ];
  };
  "draw-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-lib.zip";
      sha256 = "00c1gnchak8fjj8j8mlfayygdciydsv4jq11n7yjjmdzwm8ajmv6";
    };
    deps = [
      "base"
      "draw-i386-macosx-3"
      "draw-x86_64-macosx-3"
      "draw-ppc-macosx-3"
      "draw-aarch64-macosx-3"
      "draw-win32-i386-3"
      "draw-win32-x86_64-3"
      "draw-win32-arm64-3"
      "draw-x86_64-linux-natipkg-3"
      "draw-x11-x86_64-linux-natipkg"
      "draw-ttf-x86_64-linux-natipkg"
    ];
  };
  "intern" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/intern";
      rev = "e2b46f803fe9d83368bde168fca8559f1210cfe3";
    };
    subpath = "intern";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "simple-polynomial" = {
    src = fetchGit {
      url = "https://bitbucket.org/derend/simple-polynomial.git";
      rev = "c8c7e2e4175a27123becd6e78f792738b0bf1188";
    };

    deps = [
      "base"
      "parser-tools-lib"
      "simple-matrix"
      "math-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "plot-doc"
      "plot-gui-lib"
      "draw-lib"
    ];
  };
  "pict-snip-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-snip-lib.zip";
      sha256 = "0whi4qdwq8345k81hz333xamjzhipjmzw4x1fj6i93kp51z7p66z";
    };
    deps = [
      "draw-lib"
      "snip-lib"
      "pict-lib"
      "wxme-lib"
      "base"
      "rackunit-lib"
      "gui-lib"
    ];
  };
  "plot-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-doc.zip";
      sha256 = "0ic81kcxnvkxpr3nia5zsn6l93fx8bn48wirl67y3bdamcax2khl";
    };
    deps = [
      "base"
      "plot-lib"
      "plot-gui-lib"
      "db-doc"
      "db-lib"
      "draw-doc"
      "draw-lib"
      "gui-doc"
      "gui-lib"
      "pict-doc"
      "pict-lib"
      "plot-compat"
      "racket-doc"
      "scribble-lib"
      "slideshow-doc"
      "slideshow-lib"
      "srfi-doc"
      "math-lib"
      "math-doc"
    ];
  };
  "base64" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-base64.git";
      rev = "8d6b6340d99f81ba2742ed36b359586f15562338";
    };
    subpath = "base64";
    deps = [
      "base"
      "net-lib"
      "rackunit-lib"
      "base64-lib"
      "racket-doc"
      "scribble-lib"
      "net-doc"
    ];
  };
  "chat" = {
    src = fetchGit {
      url = "https://github.com/Antigen-1/chat.git#7b40349";
      rev = "7b40349a69a9a09ae470f6013c535858e4f902ac";
      ref = "7b40349";
    };

    deps = [
      "base"
      "scribble-lib"
      "http-easy-lib"
      "racket-doc"
      "rackunit-lib"
      "net-doc"
      "git://github.com/Antigen-1/hasket.git"
    ];
  };
  "pict-snip-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-snip-doc.zip";
      sha256 = "1na78bmf51c8i5k2va6wkdfvpp6yb9gfy6cqn5gzm97fq38ckbnn";
    };
    deps = [
      "base"
      "pict-snip-lib"
      "gui-doc"
      "pict-doc"
      "pict-lib"
      "racket-doc"
      "scribble-lib"
      "snip-lib"
    ];
  };
  "distributed-places-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distributed-places-lib.zip";
      sha256 = "01m7gwrggirx0n7p9yaw5akpjq9h56xh7imb81538myxgll7a41s";
    };
    deps = [
      "base"
    ];
  };
  "scribble-bettergrammar-doc" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-bettergrammar.git";
      rev = "75aa8759e19da7ed240acfbbdae9239126502866";
      ref = "main";
    };
    subpath = "scribble-bettergrammar-doc";
    deps = [
      "base"
      "scribble-bettergrammar-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
      "sexp-diff-doc"
    ];
  };
  "bencode-codec" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-bencode";
      rev = "cf4161c67e0a6f3f25fa162b9f61a3460b4ce445";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "gsl-rng" = {
    src = fetchGit {
      url = "https://github.com/petterpripp/gsl-rng.git";
      rev = "915227b889c1056c7b1e2e208a922ffeaa2d1615";
    };

    deps = [
      "base"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "images" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images.zip";
      sha256 = "1jbsarszk4sq2ldkri22gfgkjh1jfjq7hqg2nss96jsd5ask4x50";
    };
    deps = [
      "images-lib"
      "images-gui-lib"
      "images-doc"
    ];
  };
  "gui-easy-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-gui-easy.git";
      rev = "d0c760f74ca6bc5bd027ec1b6749fa81ef84e02e";
    };
    subpath = "gui-easy-lib";
    deps = [
      "base"
      "box-extra-lib"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "rackunit-lib"
    ];
  };
  "future-visualizer-typed" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer-typed.zip";
      sha256 = "142cq9y66hqrkwlavmycm0lakb9dgn9dyskcs02kv738wzw3365z";
    };
    deps = [
      "base"
      "future-visualizer"
      "typed-racket-lib"
    ];
  };
  "unstable-redex" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-redex";
      rev = "c8fd60d300039f1d1a5de82683746223945d651c";
    };

    deps = [
      "base"
      "pict-lib"
      "redex-lib"
      "redex-pict-lib"
      "scribble-lib"
      "pict-doc"
      "redex-doc"
      "racket-doc"
    ];
  };
  "brag-lib" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/brag.git";
      rev = "f52c2a80c9cb6840b96532c2ca1371d12aea61e7";
    };
    subpath = "brag-lib";
    deps = [
      "base"
      "br-parser-tools-lib"
      "rackunit-lib"
      "syntax-color-lib"
    ];
  };
  "delimit-app" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/delimit-app";
      rev = "720c0f95c1c3642b936030fabfb4850ab166d7e2";
    };

    deps = [
      "base"
      "fancy-app"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "csv" = {
    src = fetchGit {
      url = "https://github.com/halida/csv";
      rev = "c21cf591926b8c978b3191671ca50570fc50d21b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "draw-win32-x86_64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/b7fe79234536f5a518d2714d203cb50e729ee7c6/draw-win32-x86_64.zip";
      sha256 = "163xdxmwkw9iy9bqh535s7kgp88hywjk2jmlffzimivaxzimnfxk";
    };
    deps = [
      "base"
    ];
  };
  "aws-cloudformation-template" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/aws-cloudformation-template";
      rev = "00f52274a5bfc03f23c9dd511db0c87e35cf80e5";
    };
    subpath = "aws-cloudformation-template";
    deps = [
      "aws-cloudformation-template-doc"
      "aws-cloudformation-template-lib"
    ];
  };
  "git-slice" = {
    src = fetchGit {
      url = "https://github.com/samth/git-slice";
      rev = "110b361425280e61abf8de99e5d41865afc5cddb";
    };

    deps = [
      "base"
      "remote-shell"
      "rackunit-lib"
    ];
  };
  "scribble-slideshow-lib" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/scribble-slideshow.git";
      rev = "689acc04ca7c2343747756aaf3f60e0d394be433";
    };
    subpath = "scribble-slideshow-lib";
    deps = [
      "base"
      "at-exp-lib"
      "slideshow-lib"
      "pict-lib"
      "scribble-lib"
    ];
  };
  "isl-spec" = {
    src = fetchGit {
      url = "https://github.com/dbp/isl-spec.git#main";
      rev = "e396664211ea7247bb6413ae028b620cec341079";
      ref = "main";
    };

    deps = [
      "base"
      "htdp-lib"
      "deinprogramm-signature"
      "quickcheck"
    ];
  };
  "schema" = {
    src = fetchGit {
      url = "https://github.com/wargrey/schema.git";
      rev = "860a09a23a01104432be6b990a627afe9d752e66";
    };

    deps = [
      "base"
      "db-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "shootout" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/shootout.zip";
      sha256 = "1nh5yl7csi75lqm3hpjv4v3ywrnf2zaplaak2skk0i72vmgnsv0c";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "parquet" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/racket-parquet.git";
      rev = "19a26155d832d1102003ddd67dcd40c2fb1c5325";
    };

    deps = [
      "base"
      "thrift"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "curved-text" = {
    src = fetchGit {
      url = "https://github.com/piotrklibert/curved-text";
      rev = "bc6223bfc3949bf2f632c86588f10f8da2ef0b6c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "typed-rosette" = {
    src = fetchGit {
      url = "https://github.com/stchang/typed-rosette.git";
      rev = "d72d4e7aad2c339fdd49c70682d56f83ab3eae3d";
    };

    deps = [
      "racket"
      "base"
      "rosette"
      "turnstile"
      "rackunit-lib"
      "lens-common"
      "lens-unstable"
      "syntax-classes-lib"
      "rackunit-lib"
    ];
  };
  "typed-racket-compatibility" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-compatibility.zip";
      sha256 = "0vjq966ynbixqjf5mn34jhryjya78ly3gycgklds1xcnzqq0daia";
    };
    deps = [
      "scheme-lib"
      "typed-racket-lib"
      "base"
    ];
  };
  "drracket-material" = {
    src = fetchGit {
      url = "https://github.com/turbinenreiter/drracket-material.git";
      rev = "560b77fffe55bfc06b3cce6416cbbdda759dd16f";
    };

    deps = [
      "base"
    ];
  };
  "fexpress" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/fexpress.git";
      rev = "b5c951fddebc3e4d3463cdf78dc9d417de97d50f";
      ref = "main";
    };
    subpath = "fexpress";
    deps = [
      "fexpress-doc"
      "fexpress-lib"
    ];
  };
  "net-cookies-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-cookies-doc.zip";
      sha256 = "1l2f7kr4arlbm24l06yp7gq614n8rfgz8j7jx0rwbbxh9fsdfyav";
    };
    deps = [
      "base"
      "net-cookies-lib"
      "racket-doc"
      "web-server-lib"
      "web-server-doc"
      "net-doc"
      "scribble-lib"
    ];
  };
  "unstable-latent-contract-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-latent-contract-lib";
      rev = "9df3d23294e7ae9ac06fe613c383e1f04e56f3ae";
    };

    deps = [
      "base"
      "scribble-lib"
      "images-lib"
    ];
  };
  "sinbad" = {
    src = fetchGit {
      url = "https://github.com/berry-cs/sinbad-rkt.git";
      rev = "44b3e0881514bbfb7cc91780262968748b9f92eb";
    };
    subpath = "sinbad";
    deps = [
      "base"
      "net-lib"
      "htdp-lib"
      "csv-reading"
      "sxml"
      "srfi-lite-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "gui-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-test.zip";
      sha256 = "19agx6w9ccnmdfncpqhbsm2l3bdp6vfpzkggqifrz3q6jp0hw90f";
    };
    deps = [
      "base"
      "string-constants-lib"
      "racket-index"
      "scheme-lib"
      "draw-lib"
      "data-lib"
      "racket-test"
      "sgl"
      "snip-lib"
      "wxme-lib"
      "gui-lib"
      "syntax-color-lib"
      "rackunit-lib"
      "pconvert-lib"
      "compatibility-lib"
      "sandbox-lib"
      "simple-tree-text-markup-lib"
      "pict-lib"
      "pict-snip-lib"
    ];
  };
  "typed-map" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/typed-map.git";
      rev = "7a70650b6f8e1222fe1e4ebd2fb6b9b2489301e2";
      ref = "main";
    };
    subpath = "typed-map";
    deps = [
      "typed-map-lib"
      "typed-map-test"
      "typed-map-doc"
    ];
  };
  "racket-lang-org" = {
    src = fetchGit {
      url = "https://github.com/racket/racket-lang-org";
      rev = "bf1b87c1c4dba9a94584748e78f2aef6e55c5121";
    };

    deps = [
      "slideshow-lib"
      "csv-reading"
      "typed-racket-lib"
      "datalog"
      "graph"
      "gui-lib"
      "base"
      "plt-web-lib"
      "at-exp-lib"
      "net-lib"
      "racket-index"
      "scribble-lib"
      "syntax-color-lib"
      "plot-gui-lib"
      "plot-lib"
      "math-lib"
      "pollen"
      "css-tools"
      "sugar"
      "txexpr"
      "gregor-lib"
      "frog"
      "rackunit-lib"
      "pict-lib"
      "ppict"
      "draw-lib"
      "s3-sync"
    ];
  };
  "crypto-sign" = {
    src = fetchGit {
      url = "https://github.com/MohamedLEGH/crypto-sign.git";
      rev = "a32cae894e619063035339f59c854ce382b97a55";
    };

    deps = [
      "base"
      "math-lib"
      "crypto-lib"
      "secp256k1"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "pict-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-lib.zip";
      sha256 = "04igaa6gf18fa1rz3l6hm44vnsqxm3nxbsf69landfgkch3wjrnc";
    };
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "draw-lib"
      "syntax-color-lib"
      "rackunit-lib"
    ];
  };
  "simple-xlsx" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-simple-xlsx";
      rev = "ec6791f7f5c89686e31893838ba00896db68fcab";
    };

    deps = [
      "base"
      "rackunit-lib"
      "simple-xml"
      "scribble-lib"
    ];
  };
  "net-cookies" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-cookies.zip";
      sha256 = "1ddjiv4vfc1njxbdz0imx5qnzkds53zfkb5il0f0470dmqyinnyz";
    };
    deps = [
      "net-cookies-lib"
      "net-cookies-doc"
    ];
  };
  "temp-c" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/temp-c/";
      rev = "43f7f2141c81a301aa229ef4105f458eee070653";
    };
    subpath = "temp-c";
    deps = [
      "temp-c-lib"
      "temp-c-doc"
    ];
  };
  "graph" = {
    src = fetchGit {
      url = "https://github.com/stchang/graph.git";
      rev = "9d77ab184e26f4f3c917c7bd49eda2e980a24fae";
    };
    subpath = "graph";
    deps = [
      "base"
      "graph-lib"
      "graph-doc"
      "graph-test"
    ];
  };
  "2048" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/2048.git";
      rev = "8bed991e180105051631424df743993bf2d1d7de";
      ref = "main";
    };
    subpath = "2048";
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "icns"
      "pict-lib"
      "string-constants-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
      "rackunit-typed"
    ];
  };
  "define-with-spec" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/define-with-spec.git";
      rev = "a3f3bd8ad3edceb351790ccd93d1b1d266d18512";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "mode-lambda" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/mode-lambda";
      rev = "64b5ae81f457ded7664458cd9935ce7d3ebfc449";
    };

    deps = [
      "gui-lib"
      "scheme-lib"
      "web-server-lib"
      "lux"
      "reprovide-lang-lib"
      "base"
      "srfi-lite-lib"
      "draw-lib"
      "opengl"
      "htdp-lib"
      "pict-lib"
      "draw-lib"
      "draw-doc"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "extenor" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-extenor.git";
      rev = "58a3e68b23499c57119f918aca12811572d994d2";
    };

    deps = [
      "base"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "xfunctions" = {
    src = fetchGit {
      url = "https://github.com/wesleybits/xfunctions.git";
      rev = "a8c545d55ee1d9df715ccc44fb22eec463e0f206";
    };

    deps = [
      "base"
      "racket"
      "xfunctions-lib"
      "xfunctions-doc"
    ];
  };
  "html-template" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/html-template.zip";
      sha256 = "1nbs0sd3jl7rwbckh98v2hr2hs4nwk6yz5c5376fgs9fcvm8j0w8";
    };
    deps = [
      "base"
      "mcfly"
      "html-writing"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "gradual-typing-bib" = {
    src = fetchGit {
      url = "https://github.com/samth/gradual-typing-bib.git";
      rev = "aededbfc9a51ab33448deb73d7ee225f50b4ce00";
    };

    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "graphite-lib" = {
    src = fetchGit {
      url = "https://github.com/ralsei/graphite.git";
      rev = "58a7bc54345e9b0bc5ac080401757f76d3999b0c";
    };
    subpath = "graphite-lib";
    deps = [
      "base"
      "colormaps"
      "data-frame"
      "ddict"
      "fancy-app"
      "loess"
      "math-lib"
      "pict-lib"
      "plot-gui-lib"
      "plot-lib"
      "threading-lib"
      "simple-polynomial"
    ];
  };
  "gtp-plot" = {
    src = fetchGit {
      url = "https://github.com/utahplt/gtp-plot.git";
      rev = "939c39dc7f355063eaa1b8759fe622b7280a9406";
    };

    deps = [
      "base"
      "draw-lib"
      "scribble-abbrevs"
      "scribble-lib"
      "math-lib"
      "pict-lib"
      "plot-lib"
      "reprovide-lang"
      "gtp-util"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
      "pict-lib"
      "pict-doc"
      "plot-doc"
      "rackunit-abbrevs"
      "typed-racket-doc"
      "gtp-util"
    ];
  };
  "dynext-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/dynext-lib.zip";
      sha256 = "1zscpw4nvsn5qysjarmmq49q6mrr7rn4454w6h6fmr3p48vlkmwn";
    };
    deps = [
      "base"
    ];
  };
  "dotenv-doc" = {
    src = fetchGit {
      url = "https://github.com/royallthefourth/dotenv.git";
      rev = "9afc37bff71944f12aeb83b744263f340fe929f9";
    };
    subpath = "dotenv-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "dotenv-lib"
    ];
  };
  "unstable-contract-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-contract-lib";
      rev = "198b743c39450f0340dc03a792c29794652d6e08";
    };

    deps = [
      "base"
    ];
  };
  "bv" = {
    src = fetchGit {
      url = "https://github.com/pmatos/racket-bv.git";
      rev = "9c4291e9eefb55db388fe7381e8852bac6a925f7";
    };

    deps = [
      "base"
      "mischief"
      "math-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "quickcheck"
      "rosette"
    ];
  };
  "collector2-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-collector2.git";
      rev = "2e61ec9ce09a465081105300537b21930e76f24a";
    };
    subpath = "src/collector2-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "collector2-lib"
    ];
  };
  "circuit-playground" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/circuit-playground.git";
      rev = "755086bdbbc57ab4df7de2315c5f56d85024506c";
    };

    deps = [
    ];
  };
  "reloadable" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-reloadable";
      rev = "47c52635d682f66d96e9c7d49bc3763fb4782235";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "mc-coach-assess" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/mc-coach-assess.git";
      rev = "b360621a15ce9467fa7ebd386baa02f5f2bcf3f8";
    };

    deps = [
      "base"
      "https://github.com/thoughtstem/flash-card.git"
      "reprovide-lang-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "stockfighter-racket" = {
    src = fetchGit {
      url = "https://github.com/eu90h/stockfighter-racket";
      rev = "cf7669c2d79645a54ee287df14a3e704006e0096";
    };

    deps = [
      "base"
      "rackunit-lib"
      "rfc6455"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "pcf" = {
    src = fetchGit {
      url = "https://github.com/dvanhorn/pcf";
      rev = "f04e2ff7f34b89a3dc6c2a70a6a3283f954d3a67";
      ref = "master";
    };
    deps = [
      "base"
      "redex-lib"
      "redex-pict-lib"
      "unstable-lib"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "redex-doc"
      "scribble-doc"
    ];
  };
  "seq-doc" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/seq.git";
      rev = "0ff053ae869cbeebc13c6573fda28d4e9242b134";
      ref = "main";
    };
    subpath = "seq-doc";
    deps = [
      "base"
      "seq-lib"
      "scribble-lib"
      "scribble-abbrevs"
      "racket-doc"
      "collections-lib"
      "collections-doc"
      "functional-doc"
      "relation-lib"
      "relation-doc"
      "sandbox-lib"
    ];
  };
  "morsel-doc" = {
    src = fetchGit {
      url = "https://github.com/default-kramer/morsel.git";
      rev = "10cf376f07755f066cbbfc2d242c104f103b33da";
    };
    subpath = "morsel-doc";
    deps = [
      "base"
      "morsel-lib"
      "scribble-lib"
      "racket-doc"
      "doc-coverage"
    ];
  };
  "vdb" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-vdb.git";
      rev = "af864c8f711114a20f3fde23c48d581248e27e05";
    };
    subpath = "src/vdb";
    deps = [
      "vdb-lib"
      "vdb-doc"
      "vdb-test"
    ];
  };
  "literify" = {
    src = fetchGit {
      url = "https://github.com/kflu/literify";
      rev = "0c574bc88dc9de870063589cc49a7ad41899fc67";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "tinybasic-doc" = {
    src = fetchGit {
      url = "https://github.com/winny-/tinybasic.rkt.git";
      rev = "bc8967bb2758eb464dd858de80ac6708d6a57805";
    };
    subpath = "tinybasic-doc";
    deps = [
      "base"
      "scribble-lib"
      "tinybasic-lib"
      "racket-doc"
    ];
  };
  "ez-csv" = {
    src = fetchGit {
      url = "https://github.com/sleibrock/ez-csv.git#main";
      rev = "0e43705e977c1edb347a5aee253e425900e74a33";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "chk" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/chk";
      rev = "32fb635e19fa2dc2d9c35bac0964ab76dde1e89e";
    };
    subpath = "chk";
    deps = [
      "chk-lib"
      "chk-doc"
    ];
  };
  "mic1" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/mic1";
      rev = "e985f4698f005049643998d28f8173e821acdb6b";
    };
    subpath = "rkt";
    deps = [
      "base"
      "parser-tools-lib"
      "readline-lib"
      "racket-doc"
      "scribble-lib"
      "chk"
    ];
  };
  "protocol-buffers-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-protocol-buffers.git";
      rev = "c4cec28f29b05c7d9875c944429033d29d3fd555";
    };
    subpath = "protocol-buffers-test";
    deps = [
      "base"
      "protocol-buffers-lib"
      "rackunit-lib"
    ];
  };
  "dirname" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-dirname.git";
      rev = "f5be30fb69585dbd714a6166b795dccb8237468f";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "gui-win32-arm64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-win32-arm64.zip";
      sha256 = "1s0636zs1i4snap9801v7azcpvir365bs0mwmh3vyd006212wng4";
    };
    deps = [
      "base"
    ];
  };
  "bincraft" = {
    src = fetchGit {
      url = "https://github.com/a11ce/bincraft.git";
      rev = "b467ab6e79753ca162a78aeae4fc601540e4b362";
    };

    deps = [
      "base"
    ];
  };
  "misc1" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-misc1";
      rev = "92d66c9c2c5fefe4762acc221b69c5e716a6873d";
      ref = "master";
    };
    deps = [
      "base"
      "unstable-lib"
      "racket-doc"
      "unstable-lib"
      "unstable-doc"
      "scribble-lib"
    ];
  };
  "sketching-examples" = {
    src = fetchGit {
      url = "https://github.com/soegaard/sketching.git";
      rev = "592c04229395212acc646b1278f14ff7a098c2d7";
      ref = "main";
    };
    subpath = "sketching-examples";
    deps = [
      "base"
      "data-lib"
      "metapict"
      "sketching-lib"
      "sketching-lib"
    ];
  };
  "pkg-build" = {
    src = fetchGit {
      url = "https://github.com/racket/pkg-build";
      rev = "71c379d2997049780186d104e5464780c28efb27";
    };

    deps = [
      "base"
      "rackunit"
      "scribble-html-lib"
      "web-server-lib"
      "plt-web-lib"
      "remote-shell-lib"
      "at-exp-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "component-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-component.git";
      rev = "ed1d2b24a548b4652d3d0fd60588301026acb4c2";
    };
    subpath = "component-doc";
    deps = [
      "base"
      "component-lib"
      "db-doc"
      "db-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-doc"
      "rackunit-lib"
    ];
  };
  "backport-template-pr1514" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/backport-template-pr1514.git#main";
      rev = "a6c3611fcddb8d8a67531694c9b8c2c4f89bbb0f";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "version-case"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "rackunit-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-test.zip";
      sha256 = "0mp7r1xb6kpd7zh48cs0fg2gi17gjd006kxm60b02v96vg662idf";
    };
    deps = [
      "base"
      "eli-tester"
      "typed-racket-lib"
      "rackunit-typed"
      "rackunit-lib"
    ];
  };
  "libvid-aarch64-macosx" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-aarch64-macosx";
    deps = [
      "base"
    ];
  };
  "math-ppc-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-ppc-macosx.zip";
      sha256 = "00jc024zrz0vwpn82xd8sfmivbl71cpcb8vkx42azhh3wry2z1ad";
    };
    deps = [
      "base"
    ];
  };
  "json-pointer" = {
    src = fetchGit {
      url = "https://github.com/jessealama/json-pointer.git";
      rev = "3d275a45a36f90d4f2974e771042e68b92f956c8";
    };

    deps = [
      "base"
      "rackunit-lib"
      "ejs"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "srfi-lib-nonfree" = {
    src = fetchGit {
      url = "https://github.com/racket/srfi.git";
      rev = "cab009da67adf40737ae7ff02cd7c8bd6316d61d";
    };
    subpath = "srfi-lib-nonfree";
    deps = [
    ];
  };
  "from-template" = {
    src = fetchGit {
      url = "https://github.com/nixin72/from-template.git";
      rev = "059adc9e9e37e833f67f79b67800e172985e6bec";
    };

    deps = [
      "base"
      "readline"
      "http-easy"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "RifL" = {
    src = fetchGit {
      url = "https://github.com/Jesse-Hamlin-Navias/RifL.git";
      rev = "b21e1270463ce0ccd642819660fd0e50a8f61a56";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "brag-lib"
      "racket-doc"
      "scribble-lib"
      "wxme-lib"
    ];
  };
  "alexknauth-my-object" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/my-object";
      rev = "62e46a159c8a5391e13e71f1be5af28ab727b2ba";
    };

    deps = [
      "base"
      "lens"
      "hash-lambda"
      "kw-utils"
      "unstable-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "heresy"
    ];
  };
  "defpat" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/defpat.git#master";
      rev = "40db819f1a3eaa230561c0b40b254a4de52f2b1e";
      ref = "master";
    };

    deps = [
      "base"
      "generic-bind"
      "sweet-exp"
      "reprovide-lang"
      "unstable-lib"
      "unstable-list-lib"
      "rackunit"
      "scribble-lib"
      "scribble-code-examples"
      "racket-doc"
    ];
  };
  "libargon2-i386-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libargon2-i386-win32-20210625.0.tar.gz";
      sha256 = "0cplk4dq72bjl14v8gkwz9xbgnx8v4f052bwr20nkj1pppaxs44b";
    };
    deps = [
      "base"
    ];
  };
  "qi-doc" = {
    src = fetchGit {
      url = "https://github.com/drym-org/qi.git";
      rev = "548bc76668d0dcd84cf15eddab3def6dd55e7656";
      ref = "main";
    };
    subpath = "qi-doc";
    deps = [
      "base"
      "scribble-lib"
      "scribble-abbrevs"
      "scribble-math"
      "racket-doc"
      "sandbox-lib"
      "metapict"
      "qi-lib"
      "qi-probe"
    ];
  };
  "pollen-tfl" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/pollen-tfl.git";
      rev = "07037ce803db93058950c78996d6d0c5450e233a";
    };

    deps = [
      "base"
      "pollen"
      "hyphenate"
      "css-tools"
      "txexpr"
      "sugar"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "sauron" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/sauron.git#develop";
      rev = "73bfde806617a643ffe7801804239f0d82e696bf";
      ref = "develop";
    };

    deps = [
      "base"
      "gui-lib"
      "net-lib"
      "data-lib"
      "drracket-plugin-lib"
      "drracket-tool-lib"
      "file-watchers"
      "raco-invoke"
      "try-catch-finally-lib"
      "curly-fn-lib"
      "from-template"
      "drcomplete"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "gui-doc"
    ];
  };
  "slib-format" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-slib-format.git#master";
      rev = "13a5f7b337bfb54e7895d14891044c86e0966702";
      ref = "master";
    };

    deps = [
      "base"
      "soup-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "rackunit-plugin-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-plugin-lib.zip";
      sha256 = "0n2srw32ccdnwzipi70kslcb8kk9l7hacdhgws20jdmjm7ls3kc1";
    };
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-gui"
      "gui-lib"
      "drracket-plugin-lib"
    ];
  };
  "infix" = {
    src = fetchGit {
      url = "https://github.com/soegaard/infix";
      rev = "3f7998e509f201f78eb986de0f09e0542a429ad0";
    };

    deps = [
      "base"
      "parser-tools-lib"
      "scheme-lib"
      "at-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "identikon" = {
    src = fetchGit {
      url = "https://github.com/DarrenN/identikon.git";
      rev = "d8908ee6955e69466270692599eb9076adc6a28b";
    };

    deps = [
      "draw-lib"
      "gui-lib"
      "base"
      "sugar"
      "css-tools"
      "htdp-lib"
      "quickcheck"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pop-pl" = {
    src = fetchGit {
      url = "https://github.com/florence/pop-pl";
      rev = "758f7bff0b5e2810f85cda0b6305c4699ed4fce5";
    };

    deps = [
      "base"
      "gui-lib"
      "pict-lib"
      "rackunit-lib"
      "cover-coveralls"
    ];
  };
  "elapsed-nanoseconds" = {
    src = fetchGit {
      url = "https://gitlab.com/bhrgunatha/elapsed-nanoseconds.git#main";
      rev = "27a5ed5bee3cab57a17fc98f5da9d3a6f1e2e3d9";
      ref = "main";
    };

    deps = [
      "base"
      "math-lib"
    ];
  };
  "geoip-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-geoip.git";
      rev = "92383b375490af54bec49e54f8e2ffb236b76827";
    };
    subpath = "geoip-lib";
    deps = [
      "base"
      "net-ip-lib"
    ];
  };
  "slack-api" = {
    src = fetchGit {
      url = "https://github.com/octotep/racket-slack-api.git";
      rev = "af5e363e0aefbf05c4448ea82d8aef714c30ee78";
    };

    deps = [
      "base"
      "rfc6455"
    ];
  };
  "struct-defaults" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-struct-defaults";
      rev = "1b98e4b0384b16c1ff91cad4b04587652e35f436";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "doc-coverage" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/doc-coverage";
      rev = "b1c0e9f3fd3a25e260f8905e6c8211dacf532b25";
    };
    subpath = "doc-coverage";
    deps = [
      "base"
      "racket-index"
      "rackunit-lib"
      "reprovide-lang-lib"
      "scribble-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ruinit" = {
    src = fetchGit {
      url = "https://github.com/LLazarek/ruinit.git#pkg";
      rev = "07c17de69ad05ea6ad7676542de346d7c3593779";
      ref = "pkg";
    };

    deps = [
      "base"
      "rackunit"
      "racket-doc"
      "scribble-lib"
      "at-exp-lib"
    ];
  };
  "drracket-paredit" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drracket-paredit";
      rev = "b2272896fcdba7e1f2fae7f0f3ecf0043252a10f";
      ref = "master";
    };
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "srfi-lib"
    ];
  };
  "html-examples" = {
    src = fetchGit {
      url = "https://github.com/pmatos/html-examples.git";
      rev = "bc364205280c08eb3d8239596a516c468a26237f";
    };

    deps = [
      "scribble-lib"
      "txexpr"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "unicode-properties" = {
    src = fetchGit {
      url = "https://github.com/jbclements/unicode-props";
      rev = "c72c6c7678e44257bde7a8a4973196b064a9237f";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "megaparsack" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/megaparsack";
      rev = "0ccdee4270da0337700ac62aa106735d0d879695";
    };
    subpath = "megaparsack";
    deps = [
      "base"
      "megaparsack-lib"
      "megaparsack-doc"
      "megaparsack-parser"
      "megaparsack-parser-tools"
    ];
  };
  "libkenji" = {
    src = fetchGit {
      url = "https://github.com/quantum1423/libkenji";
      rev = "319a80f51bba4224f87a01e6a368d3a936371f88";
    };

    deps = [
      "pfds"
      "typed-racket-lib"
      "base"
      "compatibility-lib"
      "data-lib"
      "srfi-lib"
    ];
  };
  "srfi-lite-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-lite-lib.zip";
      sha256 = "1gkwd71190h8k73kic82gnpd2h8jn9if2lh8dvncc01by0d3i8yy";
    };
    deps = [
      "base"
    ];
  };
  "colophon" = {
    src = fetchGit {
      url = "https://github.com/basus/colophon.git";
      rev = "4698d502d0a0257db4a3694deaf5dba3da56548d";
    };

    deps = [
      "base"
      "pollen"
      "scribble-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "db-win32-arm64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-win32-arm64.zip";
      sha256 = "0h405qrr2lsfmg1knyx3a6xx2cskpl610aran58z00nvyk3mx2hp";
    };
    deps = [
      "base"
    ];
  };
  "GUI-helpers" = {
    src = fetchGit {
      url = "https://gitlab.com/james_platt/GUI-helpers.git";
      rev = "9c7a9106ba8c016cd3c9ec24187628bef005a6f7";
    };

    deps = [
      "base"
      "gui-lib"
      "handy"
      "racket/gui"
    ];
  };
  "pmsf-restrict" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-restrict";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "pmsf-condition"
      "pmsf-lib"
    ];
  };
  "xrepl-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-lib.zip";
      sha256 = "05h71w45gk5xkp614vass5vc020fxnxszl4f66zba502qpvkpk21";
    };
    deps = [
      "base"
      "readline-lib"
      "scribble-text-lib"
    ];
  };
  "reporter" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/reporter.git#develop";
      rev = "c2e97f3e18b0640c50e2a3d8c1927c147712d6ee";
      ref = "develop";
    };

    deps = [
      "base"
      "colorize"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "c-utils"
    ];
  };
  "libvid-i386-win32" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-i386-win32";
    deps = [
      "base"
    ];
  };
  "sendinblue-test" = {
    src = fetchGit {
      url = "https://github.com/sxn/racket-sendinblue.git";
      rev = "ec88f432cdf2854b524d293965e4a3fddae13478";
      ref = "main";
    };
    subpath = "sendinblue-test";
    deps = [
      "base"
      "sendinblue"
      "rackunit-lib"
      "web-server-lib"
    ];
  };
  "repltest" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/repltest.git#main";
      rev = "3667dd5433f805738b4990828112450c5546fd77";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "afl"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
    ];
  };
  "vdb-tools" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-vdb.git";
      rev = "af864c8f711114a20f3fde23c48d581248e27e05";
    };
    subpath = "src/vdb-tools";
    deps = [
      "base"
      "threading-lib"
      "upi-lib"
      "vdb-lib"
    ];
  };
  "plai-typed" = {
    src = fetchGit {
      url = "https://github.com/mflatt/plai-typed.git#master";
      rev = "07fd70cdf2678bc27e4d95346a7d5a2906410f99";
      ref = "master";
    };

    deps = [
      "base"
      "plai"
      "racket-doc"
      "rackunit-lib"
      "scheme-doc"
      "scribble-lib"
    ];
  };
  "static-rename-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-static-rename";
      rev = "50f1ff9866a3ef116471eb1a483c1992480dcd45";
    };
    subpath = "static-rename-lib";
    deps = [
      "base"
    ];
  };
  "kenney-assets" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/kenney-assets.git";
      rev = "9aaf058030bd611331b1fcae1bf62f295483dd43";
    };

    deps = [
      "https://github.com/thoughtstem/define-assets-from.git"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "koyo-postmark" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo-postmark.git";
      rev = "93f9fd4d508e1a0672abf454de7a6ca7d4c1b5d2";
    };

    deps = [
      "base"
      "koyo-lib"
      "postmark-client"
      "koyo-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "diagrama-doc" = {
    src = fetchGit {
      url = "https://github.com/florence/diagrama.git";
      rev = "291f244843d7226df4b7cb763bc3d6b1e98af71b";
    };
    subpath = "diagrama-doc";
    deps = [
      "base"
      "diagrama-lib"
      "pict-lib"
      "draw-doc"
      "draw-lib"
      "pict-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "spreadsheet-editor" = {
    src = fetchGit {
      url = "https://github.com/kugelblitz/spreadsheet-editor";
      rev = "46774a3ff1ec726a23974be831ed45419c7cfdee";
    };

    deps = [
      "base"
      "gui"
      "draw-lib"
      "data-lib"
      "table-panel"
    ];
  };
  "gui-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-lib.zip";
      sha256 = "0bn5a7x20jhn9r25ssw2dmw35svnwnh5id1zb1150lill4cwy2lj";
    };
    deps = [
      "srfi-lite-lib"
      "data-lib"
      "icons"
      "base"
      "syntax-color-lib"
      "draw-lib"
      "snip-lib"
      "wxme-lib"
      "pict-lib"
      "scheme-lib"
      "scribble-lib"
      "string-constants-lib"
      "option-contract-lib"
      "2d-lib"
      "compatibility-lib"
      "tex-table"
      "simple-tree-text-markup-lib"
      "gui-i386-macosx"
      "gui-x86_64-macosx"
      "gui-ppc-macosx"
      "gui-aarch64-macosx"
      "gui-win32-i386"
      "gui-win32-x86_64"
      "gui-win32-arm64"
      "gui-x86_64-linux-natipkg"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "scripty-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/scripty.git";
      rev = "09a0e2fd24dfcd5942177d4a328821534ee60ded";
    };
    subpath = "scripty-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "scripty-lib"
    ];
  };
  "libgit2-x86_64-macosx" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/native-libs.git#x86_64-macosx";
      rev = "4d1b1be81f5d558640a6424408d3713b16d80c42";
      ref = "x86_64-macosx";
    };

    deps = [
      "base"
    ];
  };
  "iracket" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/iracket.git";
      rev = "9af0e87d61565a9ecb41119c481e7e36c0c5287d";
    };

    deps = [
      "base"
      "zeromq-r-lib"
      "sandbox-lib"
      "uuid"
      "sha"
      "racket-doc"
      "scribble-lib"
      "scribble-doc"
    ];
  };
  "confluent-schema-registry-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-kafka.git";
      rev = "1ac07163404b7ff2dbdc69a545a88dbb0bbd09ea";
    };
    subpath = "confluent-schema-registry-lib";
    deps = [
      "base"
      "http-easy-lib"
      "threading-lib"
    ];
  };
  "http-proxy-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-http-proxy.git";
      rev = "94db8bcccd06da5b072b78bc8a553c6ddb9993eb";
    };
    subpath = "http-proxy-lib";
    deps = [
      "base"
    ];
  };
  "wxme-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/wxme-test.zip";
      sha256 = "14hn06xsngy8nzqysab2gv1jnrvw0k6f26yk5y1l9j49fj09sqd1";
    };
    deps = [
      "rackunit"
      "wxme-lib"
      "base"
      "gui-lib"
      "snip-lib"
    ];
  };
  "uri-template" = {
    src = fetchGit {
      url = "https://github.com/jessealama/uri-template.git";
      rev = "6fe4420e3a55da6ae02df453a142b96ef3b3b4ea";
    };

    deps = [
      "base"
      "brag"
      "beautiful-racket-lib"
      "br-parser-tools-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "python-tokenizer" = {
    src = fetchGit {
      url = "https://github.com/jbclements/python-tokenizer";
      rev = "beadda52525c78f4b3aa0c8adcf42bf5e1033c5a";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "data-lib"
      "while-loop"
      "at-exp-lib"
      "parser-tools-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "esterel" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "56af2d1bd7697a327e4cd3d0a539101c88820fef";
    };
    subpath = "esterel";
    deps = [
      "esterel-doc"
      "esterel-examples"
      "esterel-lib"
      "esterel-test"
      "esterel-rhombus-lib"
    ];
  };
  "distro-build-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/distro-build/";
      rev = "30789466733d3a1678b78d53367f79fe8ce1c6bb";
    };
    subpath = "distro-build-doc";
    deps = [
      "base"
      "distro-build-server"
      "distro-build-client"
      "web-server-lib"
      "at-exp-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "formatted-string" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/formatted-string.git#develop";
      rev = "7d477f7d8b2d64bd3e93b1f376a95ca89fc655eb";
      ref = "develop";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "scribble-code-examples" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/scribble-code-examples";
      rev = "b2c128b0f60230ba0e539d3790faf70ba2c1f5fa";
    };
    subpath = "scribble-code-examples";
    deps = [
      "base"
      "scribble-code-examples-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "Plot-cookbook" = {
    src = fetchGit {
      url = "https://github.com/Racket-Cookbooks/Plot-cookbook.git";
      rev = "5030990113d194875d050798b37a93f0793be245";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "infix"
      "threading"
      "math/statistics"
      "data-frame"
      "csv-reading"
    ];
  };
  "happy-app" = {
    src = fetchGit {
      url = "https://github.com/plane/happy-app.git";
      rev = "b14ad656e3f326881adf958bde846073c14d5e5f";
    };

    deps = [
      "base"
      "ugly-app-lib"
      "syntax-classes-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "mutable-match-lambda" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/mutable-match-lambda";
      rev = "28ea2c1f4e7a92826308c937608d4d91f2ead051";
    };

    deps = [
      "base"
      "kw-utils"
      "rackunit-lib"
      "at-exp-lib"
      "scribble-lib"
      "sandbox-lib"
      "racket-doc"
    ];
  };
  "stardate" = {
    src = fetchGit {
      url = "https://github.com/dyoo/stardate";
      rev = "580558886983d73916c355e21400310a59729be5";
      ref = "master";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "plai-dynamic" = {
    src = fetchGit {
      url = "https://pivot.cs.unb.ca/git/plai-dynamic.git";
      rev = "3e0dd86ed95e2a57a279e8334a9cf803159351ed";
    };

    deps = [
      "base"
    ];
  };
  "wort" = {
    src = fetchGit {
      url = "https://github.com/robertkleffner/wort";
      rev = "433130f0f6f1fa90d7ed21b857d03bce856656b0";
    };

    deps = [
      "base"
      "rackunit-lib"
      "brag"
      "beautiful-racket"
      "beautiful-racket-lib"
      "br-parser-tools-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "set-extras" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/set-extras";
      rev = "37eff681f658ff2e760993ff736f6a4ff9eda93d";
    };
    subpath = "set-extras";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "battlearena-starwars" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "battlearena-starwars";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=battlearena"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "peony" = {
    src = fetchGit {
      url = "https://github.com/silver-ag/peony.git";
      rev = "cabbb94e5caf786004e9c54dd624fa4ec574998e";
    };

    deps = [
      "base"
      "web-server"
      "db-doc"
      "db-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "scheme-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scheme-lib.zip";
      sha256 = "0f8b8hck9b7w1wmxf3r2a2zmcwsarv16g2xx58isxily7crgdajp";
    };
    deps = [
      "base"
    ];
  };
  "vdb-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-vdb.git";
      rev = "af864c8f711114a20f3fde23c48d581248e27e05";
    };
    subpath = "src/vdb-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "bzip2"
      "reprovide-lang-lib"
      "threading-lib"
      "typed-pmsf"
      "upi-lib"
    ];
  };
  "math-win32-arm64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-win32-arm64.zip";
      sha256 = "1j7z2py6v7nrfw31s1cm4d8mg8j1qllk1qavnizfwbxlf822vi8d";
    };
    deps = [
      "base"
    ];
  };
  "libsass-i386-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsass-i386-win32-3.6.5.2.tar.gz";
      sha256 = "0ji2kb5hvrc84imymzhzzf2gm0zbm3j8kcsb99pd7f14rqwaa97l";
    };
    deps = [
      "base"
    ];
  };
  "typed-racket-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-lib.zip";
      sha256 = "1axy12zn3nkp6nyhpihmd8ddris3bvc0k8qna7h5r225308cangh";
    };
    deps = [
      "base"
      "source-syntax"
      "pconvert-lib"
      "compatibility-lib"
      "string-constants-lib"
    ];
  };
  "pmsf-required-use" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-required-use";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "pmsf-condition"
      "pmsf-lib"
    ];
  };
  "msgpack" = {
    src = fetchGit {
      url = "https://gitlab.com/HiPhish/MsgPack.rkt.git";
      rev = "b9210bc4cc2e0cd43ce2c2217f02fc35bba1fdd3";
    };
    subpath = "msgpack";
    deps = [
      "base"
      "typed-racket-lib"
      "quickcheck"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "alexis-pvector" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-alexis-pvector";
      rev = "f03b60714a0fd35ca61dd41307701074a2253d87";
    };

    deps = [
      "alexis-collections"
      "base"
      "pvector"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "syntax-classes-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/syntax-classes.git";
      rev = "4d64d35259d69ee8d5c90f475fe777c66d54c8fd";
    };
    subpath = "syntax-classes-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "syntax-classes-lib"
    ];
  };
  "secd" = {
    src = fetchGit {
      url = "https://github.com/GPRicci/secd.git";
      rev = "cebf4c32d4c48c6d964449788c0e708524872120";
    };

    deps = [
      "base"
      "beautiful-racket-lib"
      "brag"
      "data-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "qualified-in" = {
    src = fetchGit {
      url = "https://github.com/michaelmmacleod/qualified-in.git";
      rev = "779feda6a5fe30ff861971c894ae4a301c334150";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "effect-racket-test" = {
    src = fetchGit {
      url = "https://github.com/camoy/effect-racket.git";
      rev = "e8b8247c2339a89da8c0d8dad58bf13eda21eed2";
      ref = "master";
    };
    subpath = "effect-racket-test";
    deps = [
      "base"
      "contract-etc-lib"
      "effect-racket-lib"
      "chk-lib"
    ];
  };
  "raco-watch" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/raco-watch.git#develop";
      rev = "53d21037b19dd56fd191b264aede919fb5e52bff";
      ref = "develop";
    };

    deps = [
      "base"
      "file-watchers"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "lens-data" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/lens";
      rev = "733db7744921409b69ddc78ae5b23ffaa6b91e37";
    };
    subpath = "lens-data";
    deps = [
      "racket"
      "base"
      "lens-common"
      "rackunit-lib"
      "fancy-app"
      "syntax-classes-lib"
      "struct-update-lib"
      "kw-make-struct-lib"
      "reprovide-lang-lib"
      "sweet-exp-lib"
    ];
  };
  "import-profiler" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-import-profiler.git";
      rev = "9cd789780cf811c51455e53b7c26949780540178";
    };

    deps = [
      "base"
    ];
  };
  "mobilpay" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/mobilpay.git";
      rev = "7a8ca6b95f9189c5c579b9c694a4888e41e3e6df";
    };

    deps = [
      "base"
      "crypto-lib"
      "gregor-lib"
      "rackunit-lib"
    ];
  };
  "libpaho-mqtt3-x86_64-linux-natipkg" = {
    src = fetchGit {
      url = "https://github.com/joergen7/libpaho-mqtt3-x86_64-linux-natipkg.git#master";
      rev = "200ef60a9ce1e0aae49f8b365b12f0a5cb8dccd2";
      ref = "master";
    };

    deps = [
      "base"
    ];
  };
  "struct-update-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/struct-update.git";
      rev = "8ce456cde8764ae27c348123ec9e01e76826d536";
    };
    subpath = "struct-update-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "struct-update-lib"
    ];
  };
  "lang-file-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/lang-file";
      rev = "69993f73dab8382796be37998ec47ded7883faf7";
    };
    subpath = "lang-file-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "binutils" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/racket-binutils";
      rev = "a72ef077e2d00ec776f12c0e497c6517f66dfe16";
    };

    deps = [
      "base"
      "binary-class"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "string-interpolation" = {
    src = fetchGit {
      url = "https://github.com/Grafcube/racket-string-interpolation.git#main";
      rev = "0e2e46b4d6df5a19fb725fa2a80c4991697cec24";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "tzdata" = {
    src = fetchGit {
      url = "https://github.com/97jaz/tzdata.git";
      rev = "22a9a3c3dc506a08d7132a4761f21155d004ee25";
    };

    deps = [
      "base"
    ];
  };
  "draw-win32-arm64-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-win32-arm64-3.zip";
      sha256 = "0flxp8n56q8y2cgydj4g004hjj6ncqc1y7kqxw07klxvpaw2zl7b";
    };
    deps = [
      "base"
    ];
  };
  "scribble-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-doc.zip";
      sha256 = "18nlxd2wbqxw2rgl62hgrin745hgbxv1qycrfqf9bw0jnllcba4j";
    };
    deps = [
      "racket-index"
      "net-doc"
      "scheme-lib"
      "draw-doc"
      "at-exp-lib"
      "base"
      "compatibility-lib"
      "draw-lib"
      "pict-lib"
      "pict-doc"
      "sandbox-lib"
      "scribble-lib"
      "scribble-text-lib"
      "racket-doc"
    ];
  };
  "levenshtein" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/levenshtein.zip";
      sha256 = "013b5bm7qgqs90zpr7ljhvjhc8q82yakpclnz9fh09c7mpqxzf5s";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "keyring-lib" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-lib";
    deps = [
      "base"
      "base"
    ];
  };
  "battle-arena-avengers" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "battlearena-avengers";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=battlearena"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "avro" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-avro.git";
      rev = "755babe40c8593c9880a74178e48198af9962bb7";
    };
    subpath = "avro";
    deps = [
      "base"
      "avro-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rml-knn" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/rml-knn.git";
      rev = "55a55d0e55d8363afafea7dd59b6dda37e77d4b0";
    };

    deps = [
      "base"
      "rml-core"
      "math-lib"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "http11" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/http11.git";
      rev = "5d9a2f182168c01ca366cdd45c7bcf78cf8037be";
    };

    deps = [
      "uri"
      "date"
      "opt"
      "string-util"
      "typed-racket-more"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "bloggy" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/bloggy";
      rev = "d2fe3a353019356aa68a40b4ef3fe89a5ef3aeb2";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "scripty" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/scripty.git";
      rev = "09a0e2fd24dfcd5942177d4a328821534ee60ded";
    };
    subpath = "scripty";
    deps = [
      "scripty-doc"
      "scripty-lib"
    ];
  };
  "signature" = {
    src = fetchGit {
      url = "https://github.com/thinkmoore/signature";
      rev = "c8be60858474259d27f94b23214f7397d9653eb1";
    };

    deps = [
      "kw-utils"
      "racklog"
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "cover-coveralls" = {
    src = fetchGit {
      url = "https://github.com/rpless/cover-coveralls#release";
      rev = "7caf7d54c0265ed1d388cb28093a6dcc1da4b199";
      ref = "release";
    };

    deps = [
      "base"
      "cover-lib"
      "rackunit-lib"
    ];
  };
  "pict-utils" = {
    src = fetchGit {
      url = "https://github.com/samth/pict-utils.git";
      rev = "fd71fd9aa0a9266ae4f1340b10f5183ef4ecad35";
    };

    deps = [
      "base"
      "draw-lib"
      "plot-gui-lib"
      "plot-lib"
      "slideshow-lib"
      "unstable-lib"
      "at-exp-lib"
      "pict-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "unstable-contract-lib"
    ];
  };
  "3d-model" = {
    src = fetchzip {
      stripRoot = false;
      url = "http://code_man.cybnet.ch/racket/3d-model.zip";
      sha256 = "";
    };
    deps = [
    ];
  };
  "htdp-json" = {
    src = fetchGit {
      url = "https://github.com/samth/htdp-json.git";
      rev = "c425209560e17d22fe450613693f8155f36acdea";
    };

    deps = [
      "base"
      "http-easy-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "htdp-lib"
    ];
  };
  "syntax-warn-base" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/syntax-warn";
      rev = "f17fdd3179aeab8e5275a24e7d091d3ca42960a9";
    };
    subpath = "syntax-warn-base";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "br-parser-tools-lib" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/br-parser-tools.git";
      rev = "9b2d7cc759b40fd556a398e181ca0fd070885904";
    };
    subpath = "br-parser-tools-lib";
    deps = [
      "scheme-lib"
      "base"
      "compatibility-lib"
      "rackunit-lib"
    ];
  };
  "racket-raylib-2d" = {
    src = fetchGit {
      url = "https://github.com/arvyy/racket-raylib-2d.git";
      rev = "60ad7a2f9305e78f95759571013fcaf306939868";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "glob" = {
    src = fetchGit {
      url = "https://github.com/bennn/glob";
      rev = "e4cc1bf39587ec1037fc67651d22ad353c7ef381";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "towers" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/towers.git";
      rev = "e6777c9259ab3dc687d3614d783316a2490438f2";
    };
    subpath = "towers";
    deps = [
      "base"
      "gui-lib"
      "net-lib"
      "bazaar"
      "towers-lib"
    ];
  };
  "datacell" = {
    src = fetchGit {
      url = "https://github.com/florence/datacell.git";
      rev = "fe91d9251542df5f9edb41fb457fb6c7f548d425";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "xenomorph" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/typesetting.git";
      rev = "680422ea57fce4bc4280edb7412c161561d1641c";
      ref = "main";
    };
    subpath = "xenomorph";
    deps = [
      "base"
      "beautiful-racket-lib"
      "rackunit-lib"
      "sugar"
      "debug"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "string-searchers" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-string-searchers.git#master";
      rev = "46e466009ff2c5b83980c5dc2f78542f9aeb6775";
      ref = "master";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "rackunit-typed"
    ];
  };
  "generic-syntax-expanders" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/generic-syntax-expanders";
      rev = "6d3b41875095d0f18d6e1d88bf7a8ed3981fe999";
    };

    deps = [
      "base"
      "rackunit-lib"
      "fancy-app"
      "reprovide-lang"
      "lens"
      "point-free"
      "predicates"
      "scribble-lib"
      "scribble-text-lib"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "ricoeur-tei-utils" = {
    src = fetchGit {
      url = "https://bitbucket.org/digitalricoeur/tei-utils.git";
      rev = "545c192aff9138d05bdd1aeb97d0f145508b84a8";
    };

    deps = [
      "base"
      "adjutor"
      "ricoeur-kernel"
      "functional-lib"
      "roman-numeral"
      "gregor-lib"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "data-lib"
      "db-lib"
      "sql"
      "draw-lib"
      "icns"
      "parser-tools-lib"
      "pict-snip-lib"
      "nanopass"
      "reprovide-lang-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "xmllint-win32-x86_64"
      "at-exp-lib"
      "syntax-color-lib"
      "scribble-lib"
      "racket-doc"
      "at-exp-lib"
      "functional-doc"
      "gregor-doc"
      "rackunit-lib"
      "_-exp"
      "db-doc"
      "data-doc"
      "gui-doc"
      "scribble-doc"
      "todo-list"
      "racket-index"
    ];
  };
  "tweedledee" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/tweedledee.git";
      rev = "f0919e3816b448cea75db7d9121f355a9fe4edec";
    };

    deps = [
      "base"
    ];
  };
  "redex-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/redex-test.zip";
      sha256 = "0552v07wyxladrfkx4sbxy66sghydhby6n3haq442p7x5fphjhjf";
    };
    deps = [
      "base"
      "rackunit-lib"
      "at-exp-lib"
      "compatibility-lib"
      "drracket"
      "gui-lib"
      "pict-lib"
      "redex-gui-lib"
      "redex-examples"
      "data-enumerate-lib"
      "data-lib"
      "racket-index"
      "scheme-lib"
      "slideshow-lib"
    ];
  };
  "distro-build-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distro-build-lib.zip";
      sha256 = "147ci6k7mcl4sqrnkl817lqa5amcgpgaf2lmqy2a0iz53yxga4jv";
    };
    deps = [
      "distro-build-client"
      "distro-build-server"
    ];
  };
  "upi-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-upi.git";
      rev = "bbe44269dec1be98996124dcfe5155400d425ddd";
    };
    subpath = "src/upi-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "ziptie-git"
      "upi-lib"
    ];
  };
  "distro-build" = {
    src = fetchGit {
      url = "https://github.com/racket/distro-build/";
      rev = "30789466733d3a1678b78d53367f79fe8ce1c6bb";
    };
    subpath = "distro-build";
    deps = [
      "distro-build-lib"
      "distro-build-doc"
    ];
  };
  "asi64" = {
    src = fetchGit {
      url = "https://github.com/pezipink/asi64.git";
      rev = "81e61a25a6f35e137df6326353b9c54f50f2d829";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "net-jwt" = {
    src = fetchGit {
      url = "https://github.com/RenaissanceBug/racket-jwt";
      rev = "77e1c438f2c0cd271f109f6d40782ece4aaa7a3d";
    };

    deps = [
      "srfi-lite-lib"
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "sha"
      "crypto"
      "rackunit-lib"
      "web-server-lib"
      "racket-doc"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "typed-racket-doc"
      "option-bind"
    ];
  };
  "charterm" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/charterm.zip";
      sha256 = "0r01zwxvkcxazcri4w1g8hwhpzyfq21wzrczgynr94k3w7avmdsw";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "rs-l" = {
    src = fetchGit {
      url = "https://github.com/mcdejonge/rs-l.git";
      rev = "43616cd03e53b0109826736b461086b7146ed971";
    };

    deps = [
      "base"
      "rackunit"
      "rs"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "json-parsing" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/json-parsing.zip";
      sha256 = "116c94jfq2lr4gy7klbk8jb3lp20xq0fqnmrhj5mjwkms4vwjrqb";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "binfmt-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-binfmt.git";
      rev = "dbd7bbe72ad734687bd72241e4528d934ae3f4aa";
    };
    subpath = "binfmt-lib";
    deps = [
      "base"
    ];
  };
  "art" = {
    src = fetchGit {
      url = "https://github.com/jagen31/art3.git";
      rev = "a49b37d1c054ff7ebf202c3d18c3ea88b563bf25";
      ref = "main";
    };
    subpath = "art";
    deps = [
      "base"
      "art-lib"
      "art-doc"
    ];
  };
  "hyphenate" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/typesetting.git";
      rev = "680422ea57fce4bc4280edb7412c161561d1641c";
      ref = "main";
    };
    subpath = "hyphenate";
    deps = [
      "base"
      "sugar"
      "txexpr"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "noise" = {
    src = fetchGit {
      url = "https://github.com/jpverkamp/noise.git#master";
      rev = "ad2f2e043f992fb5f4a96df6e32dbea8234b315f";
      ref = "master";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "images-doc"
      "images-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pict-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-doc.zip";
      sha256 = "1f9h8g9bcn0pf39kk2awnlacqkqyq77j0dkch2xladq3h70m533s";
    };
    deps = [
      "base"
      "mzscheme-doc"
      "draw-doc"
      "gui-doc"
      "slideshow-doc"
      "draw-lib"
      "gui-lib"
      "scribble-lib"
      "slideshow-lib"
      "pict-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "remote-shell-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/remote-shell/";
      rev = "6ddcb78eea71cf5a87c83f5a0229edfb16620c28";
    };
    subpath = "remote-shell-doc";
    deps = [
      "base"
      "racket-doc"
      "remote-shell-lib"
      "scribble-lib"
    ];
  };
  "r6rs-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-test.zip";
      sha256 = "1c4g8kjz4fnna9kahfmg8xf0jpr7rpbz9bvf57qad160206szmy4";
    };
    deps = [
      "base"
      "r6rs-lib"
    ];
  };
  "phc-adt-test" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/phc-adt.git";
      rev = "36c1047c4899d1b478cc6052f9b2e71168aeefb5";
      ref = "main";
    };
    subpath = "phc-adt-test";
    deps = [
      "base"
      "phc-adt-lib"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "multi-id"
      "phc-toolkit"
      "type-expander"
    ];
  };
  "rackpropagator-lib" = {
    src = fetchGit {
      url = "https://github.com/ots22/rackpropagator.git";
      rev = "5c5367985bf5fe20e8dd6e9da35792a203c296d1";
    };
    subpath = "rackpropagator-lib";
    deps = [
      "base"
      "math-lib"
    ];
  };
  "etf" = {
    src = fetchGit {
      url = "https://github.com/racaid/etf.git#main";
      rev = "2627460babbe6de89a88f4fd6a93fad01d500ac2";
      ref = "main";
    };

    deps = [
    ];
  };
  "syntax-color-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color-doc.zip";
      sha256 = "0nvzxglgb1j6j748xvqvx774pk2f3z5sw3f41v7qzf933yvqh21f";
    };
    deps = [
      "base"
      "gui-doc"
      "scribble-doc"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "syntax-color-lib"
    ];
  };
  "scribble-coq" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-coq.git";
      rev = "894ec4c1b1e97f3d50608bfba1c1d4361c7d3d5f";
    };

    deps = [
      "threading-lib"
      "scribble-lib"
      "scribble-minted"
      "base"
    ];
  };
  "haiku-enum" = {
    src = fetchGit {
      url = "https://github.com/rfindler/haiku-enum.git";
      rev = "6856c4c6bf3c82e30ac453cee9b57bb5ef717888";
    };

    deps = [
      "at-exp-lib"
      "base"
      "math-lib"
      "data-enumerate-lib"
      "data-doc"
      "racket-doc"
      "scribble-doc"
      "scribble-lib"
    ];
  };
  "jack-ease" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-ease";
      rev = "3a7149ded68be348611e346742feac85fca6d74f";
    };

    deps = [
      "scribble-lib"
      "base"
      "sweet-exp"
      "lens"
      "fancy-app"
      "rackunit-lib"
      "cover"
      "racket-doc"
      "scribble-lib"
      "doc-coverage"
    ];
  };
  "HoLy" = {
    src = fetchGit {
      url = "https://github.com/nihirash/holy.git";
      rev = "e6574beb88937357cb73e834dacf10ceb1805495";
    };

    deps = [
      "web-server"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "expeditor-test" = {
    src = fetchGit {
      url = "https://github.com/racket/expeditor.git";
      rev = "9b2d54a97a4f17a75d3198630a978b3eb2b4d1af";
    };
    subpath = "expeditor-test";
    deps = [
      "base"
      "gui-lib"
      "syntax-color-lib"
      "expeditor-lib"
    ];
  };
  "commonmark-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-commonmark.git";
      rev = "d40156bce42088aea1a742d6cce4c8697318db70";
      ref = "master";
    };
    subpath = "commonmark-lib";
    deps = [
      "base"
      "data-lib"
      "threading-lib"
    ];
  };
  "gg" = {
    src = fetchGit {
      url = "https://github.com/xandkar/gg.git#0.0.0";
      rev = "9f9f777a95c13aeb3eee81112cf0eef3f8f164c2";
      ref = "0.0.0";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "xxhash-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lz4.git";
      rev = "df811b1166b22221f641b3c78171cd31f4e2ba53";
    };
    subpath = "xxhash-lib";
    deps = [
      "base"
    ];
  };
  "compatibility-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-doc.zip";
      sha256 = "179xaiqcb4zg72my67fbnv6s6ld3lk2rhzdfm4g5iz7md6nv7yla";
    };
    deps = [
      "base"
      "scribble-lib"
      "compatibility-lib"
      "pconvert-lib"
      "sandbox-lib"
      "compiler-lib"
      "gui-lib"
      "racket-doc"
      "data-doc"
      "mzscheme-doc"
      "scheme-lib"
      "scheme-doc"
    ];
  };
  "glfw3" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/rkt-glfw.git";
      rev = "e52613f60f25aeac7f035b1f11a79401a770af35";
    };

    deps = [
      "base"
      "disposable"
      "fixture"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "seq" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/seq.git";
      rev = "0ff053ae869cbeebc13c6573fda28d4e9242b134";
      ref = "main";
    };
    subpath = "seq";
    deps = [
      "base"
      "seq-lib"
      "seq-doc"
      "seq-test"
    ];
  };
  "scribble-cheatsheet" = {
    src = fetchGit {
      url = "https://github.com/a11ce/scribble-cheatsheet.git";
      rev = "18365623aad404b13421c2f653f4223a70fccde0";
    };

    deps = [
      "scribble-lib"
    ];
  };
  "gcstats" = {
    src = fetchGit {
      url = "https://github.com/samth/gcstats";
      rev = "c1112a07155f2a8e8a8ad999c9980d544d56b970";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "plt-web-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/plt-web/";
      rev = "e06442a897ede8df9706555eee51734a9cecf4ab";
    };
    subpath = "plt-web-doc";
    deps = [
      "base"
      "plt-web-lib"
      "racket-doc"
      "scribble-doc"
      "scribble-lib"
    ];
  };
  "markdown" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/markdown";
      rev = "599743722c47e1e28af1636e9e676f71ec0277d4";
    };

    deps = [
      "base"
      "parsack"
      "sandbox-lib"
      "scribble-lib"
      "srfi-lite-lib"
      "threading-lib"
      "at-exp-lib"
      "html-lib"
      "racket-doc"
      "rackunit-lib"
      "redex-lib"
      "scribble-doc"
      "sexp-diff-lib"
    ];
  };
  "drracket-vim-tool" = {
    src = fetchGit {
      url = "https://github.com/takikawa/drracket-vim-tool";
      rev = "c347e8f8dcb0d89efd44755587b108e1f420912a";
    };

    deps = [
      "base"
      "gui-lib"
      "data-lib"
      "drracket-plugin-lib"
      "rackunit-lib"
      "at-exp-lib"
    ];
  };
  "collections-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-collections";
      rev = "c4822fc200b0488922cd6e86b4f2ea7cf8c565da";
    };
    subpath = "collections-doc";
    deps = [
      "base"
      "collections-lib"
      "functional-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "thread-utils" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/thread-utils.git";
      rev = "f81ebfaf8453acb3a938917c1a505c94af92ef87";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "turnstile-doc" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "turnstile-doc";
    deps = [
      "base"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
      "rackunit-lib"
      "rackunit-doc"
      "rackunit-macrotypes-lib"
      "turnstile-lib"
      "turnstile-example"
    ];
  };
  "java" = {
    src = fetchGit {
      url = "https://github.com/jbclements/java";
      rev = "c2d1359b05567fb9352178cedeba2dfc30ddc9ca";
    };

    deps = [
      "dherman-struct"
      "io"
      "base"
      "compatibility-lib"
      "parser-tools-lib"
      "srfi-lite-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "draw-x86_64-macosx-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/cc02ea4e8a5563fb6bf595c21ca8ab515c72011c/draw-x86_64-macosx-2.zip";
      sha256 = "1yyq8dnb6i2x85yhqz6f89vsrcdd4ljs1bv7kfmrpr1x5kmnxw3g";
    };
    deps = [
      "base"
    ];
  };
  "begin-with-local" = {
    src = fetchGit {
      url = "https://github.com/plane/begin-with-local.git#main";
      rev = "a90607de9f34cd9400df00b437e3b97b1412cc6c";
      ref = "main";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "quickscript-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/quickscript-test.zip";
      sha256 = "0yvpdi5f3n1bbkzaksswk9zcgs00ff22037xjxdngq7fbigr6sqx";
    };
    deps = [
      "drracket-test"
      "gui-lib"
      "quickscript"
      "rackunit-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "qweather" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/qweather.git";
      rev = "fbcda6d57f5fb9ac8895794c47301f66dd6de62a";
    };

    deps = [
      "base"
      "at-exp-lib"
      "http-client"
      "gregor"
      "https://github.com/yanyingwang/timable.git"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "struct-plus-plus" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/struct-plus-plus.git";
      rev = "d39cb339186efe4578e034c9db7482860048d8e4";
    };

    deps = [
      "base"
      "handy"
      "syntax-classes-lib"
      "try-catch"
      "at-exp-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "ziptie-monorepo" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie-monorepo";
    deps = [
      "base"
      "upi-lib"
      "threading-lib"
    ];
  };
  "sew-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/sew-for-racket.git";
      rev = "8758c3792adb413af2b822e54d3e8f5e8d3f55db";
      ref = "main";
    };
    subpath = "sew-test";
    deps = [
      "base"
      "rackunit-lib"
      "parendown-lib"
      "scribble-text-lib"
      "sew-lib"
    ];
  };
  "sdl" = {
    src = fetchGit {
      url = "https://github.com/cosmez/racket-sdl/";
      rev = "8b31e76b77b24afe76683d4d5630c771a0329683";
    };
    subpath = "sdl";
    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "forth" = {
    src = fetchGit {
      url = "https://github.com/bennn/forth";
      rev = "8b263718fd5ae4db5eada46f0ac0eae7c7704a55";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-abbrevs"
    ];
  };
  "uri-old" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/uri-old.zip";
      sha256 = "0w3762smv8i11yym97kbprlrwpyr4fpb84aq7rs07nidrvkkk9my";
    };
    deps = [
      "base"
      "mcfly"
      "overeasy"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "lathe-comforts" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-comforts-for-racket.git";
      rev = "43829a1613140d6b12ee1d078ea1d08f9f0c1827";
      ref = "main";
    };
    subpath = "lathe-comforts";
    deps = [
      "lathe-comforts-doc"
      "lathe-comforts-lib"
    ];
  };
  "dracula-theme" = {
    src = fetchGit {
      url = "https://github.com/dracula/racket.git";
      rev = "e0c10bc0177ada3e37518f96ba0ea55560d76781";
    };

    deps = [
      "base"
    ];
  };
  "lex-yacc-example" = {
    src = fetchGit {
      url = "https://github.com/petterpripp/lex-yacc-example.git#master";
      rev = "f88e1fef14ebf82a2225a517cd05bf74d21de557";
      ref = "master";
    };

    deps = [
      "rackunit-lib"
      "base"
      "parser-tools-lib"
      "racket-doc"
      "scribble-lib"
      "parser-tools-doc"
      "sandbox-lib"
    ];
  };
  "odysseus" = {
    src = fetchGit {
      url = "https://github.com/prozion/odysseus.git#master";
      rev = "d7400d388637e22b07348a25af90ca08e6342ba1";
      ref = "master";
    };

    deps = [
      "compatibility-lib"
      "rackunit"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "canvas-list" = {
    src = fetchGit {
      url = "https://github.com/massung/racket-canvas-list.git";
      rev = "8d101e6ede48be4c77673dddc32442f55a42f5c2";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "draw-doc"
      "gui-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "command-line-ext" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/command-line-ext";
      rev = "e980b3b31d7a0cb6e0339335bde860f35a0fe471";
    };

    deps = [
      "base"
      "rackunit-lib"
      "fancy-app"
      "generic-syntax-expanders"
      "reprovide-lang"
      "lens"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "ejemplo" = {
    src = fetchGit {
      url = "https://github.com/.git";
      rev = "";
    };

    deps = [
    ];
  };
  "diff-merge" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-diff-merge.git";
      rev = "13a367d6f254ac184f017b37f5e204ac6c95dabe";
    };

    deps = [
      "base"
      "rackunit-lib"
      "profile-lib"
    ];
  };
  "parenlog" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/parenlog";
      rev = "b02b9960c18b3c238b08a68d334f7ac2641e785c";
      ref = "master";
    };
    deps = [
      "base"
      "chk-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "amb-parser" = {
    src = fetchGit {
      url = "https://github.com/InAnYan/amb-parser.git#main";
      rev = "59f3197125e1ec0d1fa62632be75dc260bacf341";
      ref = "main";
    };

    deps = [
      "base"
      "brag-lib"
      "brag"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "acl2s-scribblings" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/acl2s-scribblings.git";
      rev = "ac77d9f0d87a9e3c3929e86444dfcd4b3d59640c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "syntax-classes-lib"
      "syntax-class-or"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "snip-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/snip-lib.zip";
      sha256 = "1v4bbffpc38jnh0ikfyfjv92a1dv7aml74kv99x1rprv358s10sw";
    };
    deps = [
      "base"
      "draw-lib"
    ];
  };
  "sudo" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/sudo.zip";
      sha256 = "0k9d265pqxi40jfd15lg0fc656m4wnr03shss8v4pj0c87digmc6";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "word" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/word.git";
      rev = "280659a27d2e3581fe64e8d406435cbcbadf3182";
    };

    deps = [
      "typed-racket-more"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket-doc"
    ];
  };
  "pangu" = {
    src = fetchGit {
      url = "https://github.com/kisaragi-hiu/pangu.rkt.git";
      rev = "52e1505c89019e9b15eed0087a4386ccb4bd65d1";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "require-typed-check" = {
    src = fetchGit {
      url = "https://github.com/bennn/require-typed-check";
      rev = "ca92eca4d09cc8b9919de13438059faee70d76f0";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket-doc"
    ];
  };
  "ftree" = {
    src = fetchGit {
      url = "https://github.com/stchang/ftree";
      rev = "7e8f67c00359728e3f0ec75c410317bac4e82f07";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pyffi" = {
    src = fetchGit {
      url = "https://github.com/soegaard/pyffi.git";
      rev = "ca640c10acb1ca20c2ea4d6d8eabfd68c020c305";
      ref = "main";
    };
    subpath = "pyffi";
    deps = [
    ];
  };
  "portaudio-x86_64-win32" = {
    src = fetchGit {
      url = "https://github.com/jbclements/portaudio-x86_64-win32.git";
      rev = "9c30ff74dd26275b9e99776d1fcda09cc714c123";
    };

    deps = [
      "base"
    ];
  };
  "pkg-index" = {
    src = fetchGit {
      url = "https://github.com/racket/pkg-index";
      rev = "05c43c655c62acd12cabfe6e3c4a5b13f6816fdd";
    };

    deps = [
      "racket-lib"
      "base"
      "compatibility-lib"
      "net-lib"
      "web-server-lib"
      "https://github.com/racket/infrastructure-userdb.git#main"
      "s3-sync"
      "plt-service-monitor"
      "rackunit-lib"
    ];
  };
  "syntax-warn" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/syntax-warn";
      rev = "f17fdd3179aeab8e5275a24e7d091d3ca42960a9";
    };
    subpath = "syntax-warn";
    deps = [
      "base"
      "syntax-warn-base"
      "syntax-warn-cli"
      "syntax-warn-doc"
      "syntax-warn-lang"
    ];
  };
  "riposte" = {
    src = fetchGit {
      url = "https://github.com/vicampo/riposte.git";
      rev = "73ae0b0086d3e8a8d38df095533d9f0a8ea6b31b";
    };

    deps = [
      "br-parser-tools-lib"
      "brag-lib"
      "net-cookies-lib"
      "web-server-lib"
      "base"
      "racket-doc"
      "brag-lib"
      "br-parser-tools-lib"
      "beautiful-racket-lib"
      "http"
      "net-cookies-lib"
      "argo"
      "dotenv"
      "json-pointer"
      "misc1"
      "scribble-lib"
      "rackunit-lib"
      "web-server-lib"
      "net-cookies-lib"
      "beautiful-racket-lib"
    ];
  };
  "drracket-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-test.zip";
      sha256 = "0b54488hkxayslxzc7d883mqymqywr9glyd1w7i99s3f1ql0w9y6";
    };
    deps = [
      "base"
      "htdp"
      "drracket"
      "racket-index"
      "scheme-lib"
      "at-exp-lib"
      "rackunit-lib"
      "compatibility-lib"
      "gui-lib"
      "htdp"
      "compiler-lib"
      "cext-lib"
      "string-constants-lib"
    ];
  };
  "linkeddata" = {
    src = fetchGit {
      url = "https://github.com/cwebber/racket-linkeddata.git";
      rev = "4d59948bb978d6d0abf06ec4de8eb6b946f5f291";
    };
    subpath = "linkeddata";
    deps = [
      "base"
      "functional-lib"
      "megaparsack"
      "crypto"
      "rackunit-lib"
    ];
  };
  "curly-fn" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-curly-fn";
      rev = "d64cd71d5b386be85f5979edae6f6b6469a4df86";
    };
    subpath = "curly-fn";
    deps = [
      "curly-fn-doc"
      "curly-fn-lib"
    ];
  };
  "r7rs-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-r7rs.git";
      rev = "84be3d16aab202e08b13da2f0e7c095e03ff0895";
      ref = "master";
    };
    subpath = "r7rs-lib";
    deps = [
      "base"
      "compatibility-lib"
      "r5rs-lib"
      "r6rs-lib"
      "rackunit-lib"
    ];
  };
  "libsqlite3-x86_64-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsqlite3-x86_64-linux-3.43.1.tar.gz";
      sha256 = "1w60sx3b2bgb1jmvp7dl029w0y3i0hikm231chxzj8hh4qzwydfm";
    };
    deps = [
      "base"
    ];
  };
  "persistent-array" = {
    src = fetchGit {
      url = "https://github.com/samth/persistent-array";
      rev = "9299dd5b6b33a953bdc4bfca3edcb956a86a35e2";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "optimization-coach" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/optimization-coach.zip";
      sha256 = "01kp0q2chnr05sp4mvl4f5wdcpriy50ybpcpbv4s0v3zpr79syq1";
    };
    deps = [
      "base"
      "drracket"
      "typed-racket-lib"
      "profile-lib"
      "rackunit-lib"
      "gui-lib"
      "data-lib"
      "source-syntax"
      "images-lib"
      "sandbox-lib"
      "string-constants-lib"
      "scribble-lib"
    ];
  };
  "namespaced-transformer" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/namespaced-transformer";
      rev = "4cdc1bdae09a07b78f23665267f2c7df4be5a7f6";
    };
    subpath = "namespaced-transformer";
    deps = [
      "namespaced-transformer-doc"
      "namespaced-transformer-lib"
    ];
  };
  "github-api" = {
    src = fetchGit {
      url = "https://github.com/eu90h/racket-github-api";
      rev = "2079df4a8a61d6f71722d9e7eb0aff4043995018";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "taino" = {
    src = fetchGit {
      url = "https://github.com/juliojimenez/taino.git#main";
      rev = "7405c32aa3a63c56500d64168b76f5ada87c8d2d";
      ref = "main";
    };

    deps = [
      "base"
      "web-server"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "struct-update" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/struct-update.git";
      rev = "8ce456cde8764ae27c348123ec9e01e76826d536";
    };
    subpath = "struct-update";
    deps = [
      "base"
      "struct-update-lib"
      "struct-update-doc"
    ];
  };
  "twilio" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-twilio.git";
      rev = "b88dc6fef052ae236a8fb16731e864b2401ae792";
    };
    subpath = "twilio";
    deps = [
      "base"
    ];
  };
  "typed-racket-hacks" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/typed-racket-hacks.git";
      rev = "6d462852a29abb4406d53db2587e9d463b90b2ae";
    };
    subpath = "typed-racket-hacks";
    deps = [
      "base"
      "typed-racket-lib"
      "set-extras"
    ];
  };
  "country" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-country.git";
      rev = "9420c2b7e32acbdf125e7adbe1870668484bb493";
    };
    subpath = "country";
    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "try-make-sarna-happy" = {
    src = fetchGit {
      url = "https://github.com/benknoble/try-make-sarna-happy.git#main";
      rev = "6e00f1cad3fe1475930488b65d52cb8d457d02dd";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "binfmt-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-binfmt.git";
      rev = "dbd7bbe72ad734687bd72241e4528d934ae3f4aa";
    };
    subpath = "binfmt-test";
    deps = [
      "base"
      "binfmt"
      "rackcheck-lib"
      "rackunit-lib"
    ];
  };
  "data-type" = {
    src = fetchGit {
      url = "https://github.com/dannypsnl/data-type.git#develop";
      rev = "ec362892da95a829463355da2e2f4a060df640e7";
      ref = "develop";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-typed"
    ];
  };
  "bumpv" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-bumpv.git";
      rev = "fbaeef85127e2d183fabbd953a4358843310c79f";
    };
    subpath = "src/bumpv";
    deps = [
      "bumpv-lib"
    ];
  };
  "racketcon-2018-web-devel-workshop" = {
    src = fetchGit {
      url = "https://github.com/jessealama/racketcon-2018-web-devel-workshop.git";
      rev = "31c3b06d09b4ccd4dad58c75d5b0ae74265907bc";
    };

    deps = [
      "base"
      "rackunit-lib"
      "txexpr"
      "http"
      "html-parsing"
      "css-expr"
      "web-server-lib"
      "net-cookies-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "markparam-doc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/markparam";
      rev = "f6393494334318ef497606001f2e83bab2c8c15d";
    };
    subpath = "markparam-doc";
    deps = [
      "base"
      "markparam-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "box-extra" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-box-extra.git";
      rev = "041412cd5b122ecfb9cc2312f21d281e0d4b7143";
    };
    subpath = "box-extra";
    deps = [
      "base"
      "racket-doc"
      "box-extra-lib"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "emmy" = {
    src = fetchGit {
      url = "https://github.com/a11ce/actual-real-racket.git";
      rev = "5c63b4a7201ddbe8b22bf340055fb3e2a3580e90";
    };

    deps = [
      "base"
      "scribble-lib"
    ];
  };
  "auxiliary-macro-context" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-auxiliary-macro-context";
      rev = "14f55981ab57c14ed4f93e06f49093b8ea0d158d";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "temp-c-test" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/temp-c";
      rev = "43f7f2141c81a301aa229ef4105f458eee070653";
    };
    subpath = "temp-c-test";
    deps = [
      "base"
      "temp-c-lib"
      "eli-tester"
      "errortrace-lib"
      "racket-test"
    ];
  };
  "DrRacketTheme" = {
    src = fetchGit {
      url = "https://github.com/Syntacticlosure/DrRacketTheme.git";
      rev = "6ee86a2b2824f755bdaf771c788559d9cab7639c";
    };

    deps = [
      "base"
      "drracket"
      "gui-lib"
      "pict-lib"
      "draw-lib"
    ];
  };
  "parted" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/parted.zip";
      sha256 = "03z56iisyh41ajqf3544d2j3rzj99jac3zp5xmx3jfq99w7bcis6";
    };
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "mcfly"
      "overeasy"
      "sudo"
    ];
  };
  "scramble" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-scramble.git";
      rev = "49987d70b62b1a011704adfd978032dc91967e05";
    };
    subpath = "scramble";
    deps = [
      "base"
      "scramble-lib"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "libvid-x86_64-win32" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-x86_64-win32";
    deps = [
      "base"
    ];
  };
  "reprovide-lang-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/reprovide-lang.git";
      rev = "f38e629f9713d2bc2691538b2ce5784bb1187252";
    };
    subpath = "reprovide-lang-lib";
    deps = [
      "base"
      "lang-file-lib"
      "srfi-lite-lib"
      "syntax-macro-lang"
    ];
  };
  "pretty-format" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/pretty-format.git";
      rev = "59c03bb6123fcd898e5143b451e6c9a8b89f7f8b";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "repeated-application" = {
    src = fetchGit {
      url = "https://github.com/v-nys/repeated-application";
      rev = "6a5ef2192f38f01de98deb03532b4b3d83b09ed3";
    };

    deps = [
      "at-exp-lib"
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "sugar"
    ];
  };
  "string-constants-lib-lgpl" = {
    src = fetchGit {
      url = "https://github.com/racket/string-constants.git";
      rev = "13c804c11b04e0db951a084631b833cd91a70a88";
    };
    subpath = "string-constants-lib-lgpl";
    deps = [
      "base"
      "string-constants-lib"
    ];
  };
  "r6rs-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-lib.zip";
      sha256 = "0ih8mscpv3xgnviza1nh14gwdaz7x7qgqfqjs0rqsv0mzfjfa1pr";
    };
    deps = [
      "scheme-lib"
      "base"
      "r5rs-lib"
      "compatibility-lib"
    ];
  };
  "relation-lib" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/relation.git";
      rev = "a88f119147d054f00b02a6deac4f2fc644780b75";
      ref = "master";
    };
    subpath = "relation-lib";
    deps = [
      "base"
      "collections-lib"
      "describe"
      "functional-lib"
      "arguments"
      "point-free"
      "social-contract"
      "qi-lib"
      "kw-utils"
      "version-case"
      "at-exp-lib"
    ];
  };
  "libvid-x86_64-linux" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-x86_64-linux";
    deps = [
      "base"
    ];
  };
  "lz4" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lz4.git";
      rev = "df811b1166b22221f641b3c78171cd31f4e2ba53";
    };
    subpath = "lz4";
    deps = [
      "base"
      "lz4-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "linea" = {
    src = fetchGit {
      url = "https://github.com/willghatch/racket-rash.git";
      rev = "feb3ad16deb0b372a05f5d522f71e1746a3f96fd";
    };
    subpath = "linea";
    deps = [
      "base"
      "udelim"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "racket-paint" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/racket-paint.git";
      rev = "70dc5dea96e76d0b80aa77ce7c633816f8a9632c";
    };

    deps = [
      "gui-lib"
      "pict-lib"
      "search-list-box"
      "global"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "raco-run" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/raco-run.git#release";
      rev = "266a3280328b420b6e2081ef080146675d050243";
      ref = "release";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "raco-cross-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/raco-cross.git";
      rev = "f3eb98fdf1069899d2e82d9e87146fbe8f92766b";
    };
    subpath = "raco-cross-lib";
    deps = [
      "base"
    ];
  };
  "libsqlite3-i386-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsqlite3-i386-win32-3.43.1.tar.gz";
      sha256 = "04y7xjm4wagrmpykc3qzs9j3hvlnggj1dgya332y2afayc185fvk";
    };
    deps = [
      "base"
    ];
  };
  "cldr-localenames-modern" = {
    src = fetchGit {
      url = "https://github.com/97jaz/cldr-localenames-modern";
      rev = "f9f3e8d9245764a309542816acf40fe147b473a3";
    };

    deps = [
      "base"
      "cldr-core"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "struct-define" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/struct-define.git";
      rev = "74c874da5295f0b9bda61e0a4a748d311ff6bced";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "errortrace-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/errortrace-doc.zip";
      sha256 = "1y61s8kar3315c3sw1q5s9dsz8vadx9v5sw8336kkjjg63zfil9s";
    };
    deps = [
      "racket-doc"
      "base"
      "errortrace-lib"
      "scribble-lib"
    ];
  };
  "racket-aarch64-macosx-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-aarch64-macosx-3.zip";
      sha256 = "110kpvck881sl7qsypr89vnd8dpk1sl7ff3h4acm7lryw94hmww2";
    };
    deps = [
      "base"
    ];
  };
  "commonmark" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-commonmark.git";
      rev = "d40156bce42088aea1a742d6cce4c8697318db70";
      ref = "master";
    };
    subpath = "commonmark";
    deps = [
      "base"
      "commonmark-doc"
      "commonmark-lib"
    ];
  };
  "knotty-lib" = {
    src = fetchGit {
      url = "https://github.com/t0mpr1c3/knotty.git";
      rev = "f6d9f76fb4250428f55ef428fc8cd89d80c52d16";
      ref = "main";
    };
    subpath = "knotty-lib";
    deps = [
      "base"
      "typed/racket"
      "typed-racket-lib"
      "typed-racket-more"
      "sweet-exp-lib"
      "named-arguments"
      "threading-lib"
      "brag-lib"
      "br-parser-tools"
      "web-server-lib"
      "sxml"
      "html-template"
      "html-writing"
      "html-parsing"
      "lazy"
      "sweet-exp-lib"
      "threading-lib"
    ];
  };
  "iso-printf" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-iso-printf.git";
      rev = "88e025741aa955107b06c1fd282273d345900b4b";
    };
    subpath = "iso-printf";
    deps = [
      "base"
      "iso-printf-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "libzstd-i386-win32" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libzstd-i386-win32-1.5.5.tar.gz";
      sha256 = "0rgbmi37icrsbd47lw2w0cqhkqa3is474554ci7mwr216fzin06d";
    };
    deps = [
      "base"
    ];
  };
  "libscrypt" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-libscrypt";
      rev = "544c692f6d492275002d55fc933049e4abff56d8";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "unstable-lib"
      "racket-doc"
      "unstable-lib"
    ];
  };
  "rodot" = {
    src = fetchGit {
      url = "https://github.com/jsgrant/rodot.git";
      rev = "c79986ac71154bed153dd1ea2dec15254369bf05";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "gm-pepm-2018" = {
    src = fetchGit {
      url = "https://github.com/nuprl/retic_performance.git";
      rev = "da634137b151553c354eafcc549e1650043675f9";
    };
    subpath = "gm-pepm-2018";
    deps = [
      "at-exp-lib"
      "base"
      "html-parsing"
      "math-lib"
      "pict-lib"
      "plot-lib"
      "scribble-lib"
      "slideshow-lib"
      "sxml"
      "with-cache"
      "pict-doc"
      "racket-doc"
      "rackunit-abbrevs"
      "rackunit-lib"
      "scribble-doc"
    ];
  };
  "mk" = {
    src = fetchGit {
      url = "https://github.com/WeixiMa/mk.git";
      rev = "a01b4ee787e7889b9f226d954d932f9770c0ba1d";
    };

    deps = [
    ];
  };
  "art-doc" = {
    src = fetchGit {
      url = "https://github.com/jagen31/art3.git";
      rev = "a49b37d1c054ff7ebf202c3d18c3ea88b563bf25";
      ref = "main";
    };
    subpath = "art-doc";
    deps = [
      "base"
      "scribble-lib"
      "scribble-abbrevs"
      "scribble-math"
      "racket-doc"
      "art-lib"
    ];
  };
  "response-ext" = {
    src = fetchGit {
      url = "https://github.com/Junker/response-ext.git";
      rev = "07876ddf1e41c3652b6076d6053755cb29bf8832";
    };

    deps = [
      "base"
      "web-server-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "web-server-doc"
    ];
  };
  "delay-pure" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/delay-pure.git#main";
      rev = "919a52ef1897db51eb2c0c1307d7149db40ccfd6";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "type-expander"
      "phc-toolkit"
      "version-case"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
    ];
  };
  "regex-machine" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/regex-machine.git";
      rev = "25754a4dc2aae351e2fe5db1b98101abb9ce088e";
    };

    deps = [
      "base"
      "gui-lib"
      "pict-lib"
      "reprovide-lang"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "2d-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/2d-test.zip";
      sha256 = "12fmj54vsi6kxmq93ir3b673db35vyngkdyqwnf7099abbab1h0a";
    };
    deps = [
      "base"
      "2d-lib"
      "racket-index"
      "rackunit-lib"
      "option-contract-lib"
      "at-exp-lib"
      "gui-lib"
      "syntax-color-lib"
    ];
  };
  "multi-file-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/multi-file-lang";
      rev = "0975cc27e0003050597da7d9f1fc5e9eac341fc7";
    };

    deps = [
      "base"
      "lang-file"
      "rackunit-lib"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "readline-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/readline-lib.zip";
      sha256 = "1kwpfr65cq52mnaha3bvgkgx7l60sfyczk32mcfzm7ry0bnzz727";
    };
    deps = [
      "base"
    ];
  };
  "nlopt" = {
    src = fetchGit {
      url = "https://github.com/jkominek/nlopt.git#master";
      rev = "05e4c0333c405cc64757930965b320220ee3a62c";
      ref = "master";
    };

    deps = [
      "base"
      "math-lib"
      "math-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "gettext" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/free-gettext.git";
      rev = "c7ef1a8567e284108d8620198c98a49ccab5b7b8";
    };

    deps = [
      "base"
      "srfi-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "lathe-morphisms-test" = {
    src = fetchGit {
      url = "https://github.com/lathe/lathe-morphisms-for-racket.git";
      rev = "07e4a0c299e1f015e531acf51393e6f8fd8d7354";
      ref = "main";
    };
    subpath = "lathe-morphisms-test";
    deps = [
      "base"
      "rackunit-lib"
      "parendown-lib"
    ];
  };
  "string-constants" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/string-constants.zip";
      sha256 = "0xz8wwmm5zx83hazqm6wjj9ld5wa199pj0617zywwbs83840hxss";
    };
    deps = [
      "string-constants-lib"
      "string-constants-doc"
    ];
  };
  "plt-services" = {
    src = fetchGit {
      url = "https://github.com/racket/racket/";
      rev = "5a6921d77bb29363ecd81e56f8ec1b964b60cdf9";
    };
    subpath = "pkgs/plt-services";
    deps = [
    ];
  };
  "ds-store-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/ds-store-lib.zip";
      sha256 = "0l6iq77vgbayiagpk0j3dfgv0jvmissah3v6pci6c62c4xz8hgyi";
    };
    deps = [
      "base"
    ];
  };
  "unix-socket-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/unix-socket-test.zip";
      sha256 = "1z0r3k1wir3q1ivhhxvvkykhivdb5am7sf3jy0hr10y1k416gn25";
    };
    deps = [
      "base"
      "net-lib"
      "rackunit-lib"
      "unix-socket-lib"
    ];
  };
  "typed-pmsf" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/typed-pmsf";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "reprovide-lang-lib"
      "pmsf-condition"
      "pmsf-depend"
      "pmsf-iuse"
      "pmsf-keywords"
      "pmsf-license"
      "pmsf-manifest"
      "pmsf-name"
      "pmsf-required-use"
      "pmsf-restrict"
      "pmsf-slot"
      "pmsf-src-uri"
    ];
  };
  "plaitypus" = {
    src = fetchGit {
      url = "https://github.com/stamourv/plaitypus.git";
      rev = "cebf78ef1dafd5dc93485c41cf7f6eaab3e60efb";
    };

    deps = [
      "base"
      "plai"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "xml-rpc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/xml-rpc";
      rev = "de6fa6c434da508d13c6a246de1ae80a3a1cd919";
      ref = "master";
    };
    deps = [
      "base"
      "web-server-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "web-server-doc"
      "net-doc"
    ];
  };
  "string-util" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/string-util.git";
      rev = "4af2c3e5f21accaa4bc8f02db2bfe8f1b9a62223";
    };

    deps = [
      "opt"
      "list-util"
      "srfi-lite-lib"
      "typed-racket-more"
      "typed-racket-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "mischief-dev" = {
    src = fetchGit {
      url = "https://github.com/carl-eastlund/mischief";
      rev = "ce58c3170240f12297e2f98475f53c9514225825";
      ref = "master";
    };
    deps = [
      "base"
      "compatibility-lib"
      "macro-debugger"
      "macro-debugger-text-lib"
      "pconvert-lib"
      "sandbox-lib"
      "scribble-lib"
      "srfi-lib"
      "srfi-lite-lib"
      "compatibility-doc"
      "data-doc"
      "racket-doc"
      "scribble-doc"
      "racket-index"
      "rackunit-gui"
      "rackunit-lib"
    ];
  };
  "deta-lint-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/deta.git";
      rev = "df9ddc886df098537fa18f1ec775ec591d9a630b";
    };
    subpath = "deta-lint-lib";
    deps = [
      "base"
      "review"
    ];
  };
  "web-galaxy-lib" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/web-galaxy.git";
      rev = "d484efe7422df0390d291f74c71cebf6006ab87a";
    };
    subpath = "web-galaxy-lib";
    deps = [
      "base"
      "anaphoric"
      "web-server-lib"
    ];
  };
  "functional-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/functional";
      rev = "be2285cd3da0e2fffe651a8ab723185bb669425d";
    };
    subpath = "functional-lib";
    deps = [
      "base"
      "collections-lib"
      "curly-fn-lib"
      "static-rename-lib"
    ];
  };
  "rmc" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/rmc";
      rev = "e11425287cfecb3940f75a25a29f9b74826c2605";
    };

    deps = [
      "pprint"
      "chk"
      "base"
      "rackunit-lib"
    ];
  };
  "json-sourcery-lib" = {
    src = fetchGit {
      url = "https://github.com/adjkant/json-sourcery.git";
      rev = "b8f98e44a2c98266315f9c8f78156972f6bc649d";
      ref = "b8f98e44a2c98266315f9c8f78156972f6bc649d";
    };
    subpath = "json-sourcery-lib";
    deps = [
      "base"
      "syntax-classes"
    ];
  };
  "predicates" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/predicates";
      rev = "0c0baa3c6871ae39c9b94af1591331d30fced968";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
    ];
  };
  "Ibkre" = {
    src = fetchGit {
      url = "https://gitlab.com/RayRacine/ibkre.git";
      rev = "9874511b6c5b920ffdbe4e40c6ac2cdeec4a9b8c";
    };

    deps = [
      "base"
      "opt"
      "bitsyntax"
      "syndicate"
      "rackunit-lib"
      "typed-racket-more"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-typed"
      "sandbox-lib"
    ];
  };
  "shlex" = {
    src = fetchGit {
      url = "https://github.com/sorawee/shlex.git";
      rev = "5de06500e8c831cfc8dffb99d57a76decc02c569";
    };

    deps = [
      "parser-tools-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "uuid" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/uuid.git#main";
      rev = "b8f956e8133218bd9b6ef8ff8b70cfa29d74d78d";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "mock" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-mock";
      rev = "5e8e2a1dd125e5e437510c87dabf903d0ec25749";
    };
    subpath = "mock";
    deps = [
      "arguments"
      "base"
      "fancy-app"
      "reprovide-lang"
      "racket-doc"
      "scribble-lib"
      "sweet-exp"
    ];
  };
  "libansilove" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-libansilove.git";
      rev = "1362ec25390116595729dcef9d68890fc8ddaac2";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "htdp-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/htdp-doc.zip";
      sha256 = "04hrb5n0bzs0cqwx6ymib1h9c08h7g5xz0hlx3nsgkf7k5rg5m0c";
    };
    deps = [
      "base"
      "scribble-lib"
      "at-exp-lib"
      "draw-lib"
      "gui-lib"
      "htdp-lib"
      "plai"
      "sandbox-lib"
      "pict-lib"
      "mzscheme-doc"
      "scheme-lib"
      "compatibility-doc"
      "draw-doc"
      "drracket"
      "gui-doc"
      "pict-doc"
      "racket-doc"
    ];
  };
  "herbie" = {
    src = fetchGit {
      url = "https://github.com/uwplse/herbie.git";
      rev = "4fb7f3e0fb78c49170187b9d865b935bf274cad9";
      ref = "v2.0.2";
    };
    subpath = "src";
    deps = [
      "base"
      "math-lib"
      "profile-lib"
      "rackunit-lib"
      "web-server-lib"
      "egg-herbie"
      "rival"
      "fpbench"
      "rackunit-lib"
    ];
  };
  "interactive-syntax" = {
    src = fetchGit {
      url = "https://github.com/videolang/interactive-syntax.git";
      rev = "8c13d83ac0f5dbd624d59083b32f765952d1d440";
    };

    deps = [
      "base"
      "draw-lib"
      "data-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "images-lib"
      "math-lib"
      "syntax-color-lib"
      "wxme-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "latex-utils" = {
    src = fetchGit {
      url = "https://github.com/dented42/latex-utils.git#master";
      rev = "631ad9b13b837f4109932252c85bc1bf6f0ae752";
      ref = "master";
    };

    deps = [
      "base"
      "scheme-lib"
      "scribble-lib"
      "seq-no-order"
      "at-exp-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "parendown" = {
    src = fetchGit {
      url = "https://github.com/lathe/parendown-for-racket.git";
      rev = "bbd36ea3fec9b78b3ccc05dcf20341f768a7f4ac";
      ref = "main";
    };
    subpath = "parendown";
    deps = [
      "parendown-doc"
      "parendown-lib"
    ];
  };
  "egg-herbie-osx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://github.com/uwplse/herbie/releases/download/v2.0.2/egg-herbie-macOS.zip";
      sha256 = "0n24nw5lxss0786m2m7jw9iymfbiyvnng69xfl0r2v1q4ggjf1dl";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "racket-to-python" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-to-python.git";
      rev = "5726abfb20b8411d05482d07ff384ecae779a010";
    };

    deps = [
    ];
  };
  "chez-runner" = {
    src = fetchGit {
      url = "https://github.com/Syntacticlosure/chez-runner.git";
      rev = "a999587b41ff7c1da3a3fe2bb95fd8483ef77905";
    };

    deps = [
      "base"
      "gui-lib"
      "drracket"
      "rackunit-lib"
      "scribble-lib"
      "pict-lib"
    ];
  };
  "mixfix" = {
    src = fetchGit {
      url = "https://github.com/sorawee/mixfix.git";
      rev = "2303684161d37ff337be6b47a0240b70fd69758c";
    };

    deps = [
      "base"
      "rackunit-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ziptie-make" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie-make";
    deps = [
      "base"
      "threading-lib"
      "uuid"
    ];
  };
  "sicp" = {
    src = fetchGit {
      url = "https://github.com/sicp-lang/sicp.git";
      rev = "61493866c871233ff9fc1f3a58950d405e7ec70d";
    };

    deps = [
      "base"
      "draw-lib"
      "r5rs-lib"
      "rackunit-lib"
      "snip-lib"
      "draw-doc"
      "gui-doc"
      "r5rs-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "raart" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/raart.git";
      rev = "09ec9f46979f052f95625530b649ec346b965e49";
    };

    deps = [
      "gui-lib"
      "htdp-lib"
      "pict-lib"
      "plot-gui-lib"
      "plot-lib"
      "lux"
      "unix-signals"
      "reprovide-lang"
      "ansi"
      "struct-define"
      "base"
      "sandbox-lib"
      "htdp-doc"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "pmsf" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf";
    deps = [
      "pmsf-doc"
      "pmsf-test"
    ];
  };
  "meta" = {
    src = fetchGit {
      url = "https://github.com/camoy/meta.git";
      rev = "490259dc9cf527a71e7d89f487709e894b3cb469";
    };

    deps = [
      "base"
      "chk-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "com-win32-x86_64" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/com-win32-x86_64.zip";
      sha256 = "181nr4m65ra46gmv3lmijxq0vd05gjn4m1m3r5kghzlzm1cwnllg";
    };
    deps = [
      "base"
    ];
  };
  "avro-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-avro.git";
      rev = "755babe40c8593c9880a74178e48198af9962bb7";
    };
    subpath = "avro-test";
    deps = [
      "base"
      "avro-lib"
      "rackunit-lib"
    ];
  };
  "zmq" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-zmq";
      rev = "5d936df13adce486ac23c5e921099de10ad9bf61";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "mordae"
      "typed-racket-lib"
      "racket-doc"
      "typed-racket-lib"
      "typed-racket-doc"
    ];
  };
  "msgpack-rpc" = {
    src = fetchGit {
      url = "https://github.com/wbthomason/msgpack-rpc-racket.git";
      rev = "e605bf9d822a3995745d3739b23fd89c7db859e5";
    };

    deps = [
      "base"
      "msgpack"
      "unix-socket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "sudoku-solver" = {
    src = fetchGit {
      url = "https://git.sr.ht/~sschwarzer/sudoku-solver#v0.15.2";
      rev = "0ecc30b3d5c863bd5776dd8e1e30418a3792cad4";
      ref = "v0.15.2";
    };

    deps = [
      "base"
      "data-lib"
      "rackunit-lib"
      "al2-test-runner"
      "raco-exe-multitarget"
    ];
  };
  "r5rs-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r5rs-doc.zip";
      sha256 = "0bzan2lwjig1ljslsxl9l2nbyn9d9b91ggx3kv6fiv93sc3n4m4l";
    };
    deps = [
      "base"
      "mzscheme-doc"
      "scheme-lib"
      "scribble-lib"
      "r5rs-lib"
      "compatibility-lib"
      "racket-doc"
    ];
  };
  "marionette-doc" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/marionette.git";
      rev = "daac17634775dc516611de6ea1e4c43776d64405";
    };
    subpath = "marionette-doc";
    deps = [
      "base"
      "marionette-lib"
      "sandbox-lib"
      "scribble-lib"
      "net-doc"
      "racket-doc"
    ];
  };
  "ugly-app-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/ugly-app.git";
      rev = "86f2670f27cb7e09eb80e4494f80b54528701c7a";
    };
    subpath = "ugly-app-lib";
    deps = [
      "base"
      "fancy-app"
    ];
  };
  "plt-service-monitor" = {
    src = fetchGit {
      url = "https://github.com/racket/plt-service-monitor";
      rev = "7a5bceb4aa223e75c9a6a4cc55ff913b9b70b584";
    };

    deps = [
      "net-lib"
      "base"
      "aws"
      "http"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "esterel-doc" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "56af2d1bd7697a327e4cd3d0a539101c88820fef";
    };
    subpath = "esterel-doc";
    deps = [
      "base"
      "esterel-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "lazy" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/lazy.zip";
      sha256 = "1q4vmppaw849rh5hhf9dlbylcrj6hky4jpcrmm8bcnmryk0jg4jf";
    };
    deps = [
      "base"
      "drracket-plugin-lib"
      "htdp-lib"
      "string-constants-lib"
      "compatibility-lib"
      "mzscheme-doc"
      "scheme-lib"
      "eli-tester"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "kw-utils" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/kw-utils";
      rev = "99b1fc4cb7f28defb04d8d0504ee4eff1540eb28";
    };

    deps = [
      "base"
      "sweet-exp-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackjure"
    ];
  };
  "agile" = {
    src = fetchGit {
      url = "https://github.com/bennn/agile.git";
      rev = "4c9dba023f506f9eaccc97c525525a3ae67c300d";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "scribble-html-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-html-lib.zip";
      sha256 = "1ya120hqddsn83dm8hm2wy7mdm3994vx85rnkid4l8fdyxx734dz";
    };
    deps = [
      "scheme-lib"
      "base"
      "at-exp-lib"
      "scribble-text-lib"
    ];
  };
  "portaudio-x86_64-linux" = {
    src = fetchGit {
      url = "https://github.com/jbclements/portaudio-x86_64-linux.git";
      rev = "2398dea77735fd5feddf2ea22cee283ceef5904b";
    };

    deps = [
      "base"
    ];
  };
  "sxml-extra" = {
    src = fetchGit {
      url = "https://github.com/kurinoku/sxml-extra-utils.git#main";
      rev = "f5a2a688d67d92de7adda295190ffc8e9efcda86";
      ref = "main";
    };

    deps = [
      "sxml"
      "base"
      "static-rename"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "compiler-goodies" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-compiler-goodies";
      rev = "4378d1039bd958ee4bfddafc5ec4dd8ef15bd5bb";
    };

    deps = [
      "base"
      "rackunit-lib"
      "compiler-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "sasl-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sasl-doc.zip";
      sha256 = "0lx4181pd28pcjbzq5iwzdkk7hj6yjsx9ysmpz1vh41f70xm3wrm";
    };
    deps = [
      "base"
      "scribble-lib"
      "sasl-lib"
      "racket-doc"
    ];
  };
  "reconstruct-template" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/reconstruct-template.git#main";
      rev = "2d055080bdbd0e59bcbe4d4ed644565135a1d80e";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "formica" = {
    src = fetchGit {
      url = "https://github.com/samsergey/formica";
      rev = "";
    };

    deps = [
    ];
  };
  "admiral-edu-server" = {
    src = fetchGit {
      url = "https://github.com/jbclements/admiral-edu-server";
      rev = "79c2778dd43d07e92ab02fb75955ec6060ed6861";
    };

    deps = [
      "aws"
      "base"
      "db-lib"
      "net-lib"
      "typed-racket-lib"
      "web-server-lib"
      "yaml"
      "rackunit-lib"
      "typed-racket-more"
    ];
  };
  "dallas-doc" = {
    src = fetchGit {
      url = "https://github.com/jessealama/dallas.git";
      rev = "8cc132551326f28efc4536081b947a466429937b";
    };
    subpath = "dallas-doc";
    deps = [
      "base"
      "scribble-lib"
      "dallas-lib"
      "racket-doc"
    ];
  };
  "libsass-x86_64-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libsass-x86_64-linux-3.6.5.2.tar.gz";
      sha256 = "12fa6bipl6i5mn4lmlzzdif5yqalrl8gjpn8mggl3r3fw49ajpzb";
    };
    deps = [
      "base"
    ];
  };
  "pipechain" = {
    src = fetchGit {
      url = "https://github.com/slaymaker1907/pipechain.git#main";
      rev = "090f6490596c0de0b56a0fbea59e3e91800a0883";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "rackunit-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-lib.zip";
      sha256 = "1nmidhz2jm4caq1qalbjrr2v7sk8ihc4mi1h8mbw40rbwpmzz15n";
    };
    deps = [
      "base"
      "testing-util-lib"
    ];
  };
  "exact-decimal-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/exact-decimal-lang";
      rev = "5bc4ff9c68bd9594cec1984766e491ac44f66e9d";
    };

    deps = [
      "base"
      "rackunit"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "drcomplete-method-names" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-method-names";
    deps = [
      "base"
      "drracket-plugin-lib"
      "gui-lib"
      "drcomplete-base"
      "rackunit-lib"
    ];
  };
  "raco-static-web" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/raco-static-web.git#release";
      rev = "1e93d3632b78fb7324d1edba953ab3b206faecd9";
      ref = "release";
    };

    deps = [
      "base"
      "mime-type-lib"
      "net-lib"
      "version-case"
      "web-server-lib"
    ];
  };
  "remix" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/remix";
      rev = "b93d58dfc0a55c6435187cfe2f5757ed302e5c5a";
    };

    deps = [
      "base"
      "at-exp-lib"
      "rackunit-lib"
      "datalog"
      "scribble-doc"
      "rackunit-lib"
      "base"
      "racket-doc"
      "scribble-lib"
      "typed-racket-lib"
      "unstable-lib"
    ];
  };
  "resyntax" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/resyntax.git";
      rev = "081a31d99096aacdaa8f782171254266379d6de6";
    };

    deps = [
      "base"
      "br-parser-tools-lib"
      "brag-lib"
      "fancy-app"
      "gui-lib"
      "rackunit-lib"
      "rebellion"
      "uri-old"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "plait" = {
    src = fetchGit {
      url = "https://github.com/mflatt/plait.git";
      rev = "e046da124aa9ee681e07a9b0db2f7158adf48b6c";
    };

    deps = [
      "base"
      "lazy"
      "plai"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "ziptie-doc" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-ziptie.git";
      rev = "73d6b8140bf60f3f281ae4c12716c2416ef094cb";
    };
    subpath = "src/ziptie-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "ziptie-git"
    ];
  };
  "todo-list" = {
    src = fetchGit {
      url = "https://github.com/david-christiansen/todo-list.git";
      rev = "589e9c8f58f4684eae64d3254bdbad0b1bcaae39";
    };

    deps = [
      "base"
      "data-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "images-gui-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-gui-lib.zip";
      sha256 = "1sdsss2c08xx54vswqza94c7isxqfwqqmdp3h5mdy3yn5w5cxrcd";
    };
    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "string-constants-lib"
    ];
  };
  "esterel-test" = {
    src = fetchGit {
      url = "https://github.com/rfindler/esterel.git";
      rev = "56af2d1bd7697a327e4cd3d0a539101c88820fef";
    };
    subpath = "esterel-test";
    deps = [
      "base"
      "esterel-lib"
      "esterel-doc"
      "rackunit-lib"
      "parser-tools-lib"
      "html-parsing"
      "html-lib"
      "racket-index"
    ];
  };
  "struct-update-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/struct-update.git";
      rev = "8ce456cde8764ae27c348123ec9e01e76826d536";
    };
    subpath = "struct-update-lib";
    deps = [
      "base"
      "syntax-classes-lib"
    ];
  };
  "type-expander" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/type-expander.git#main";
      rev = "9fbbe96f970562c613101e4c91c54873fed399bc";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "hyper-literate"
      "auto-syntax-e"
      "debug-scopes"
      "version-case"
      "scribble-lib"
      "racket-doc"
      "typed-racket-more"
      "typed-racket-doc"
      "scribble-enhanced"
      "mutable-match-lambda"
    ];
  };
  "rokit-racket" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/rokit-racket.git";
      rev = "4b5362ff1d2204384270a0ffa786023a17886e0d";
    };
    subpath = "rokit-racket";
    deps = [
      "racket-to"
    ];
  };
  "find-parent-dir" = {
    src = fetchGit {
      url = "https://github.com/samth/find-parent-dir";
      rev = "e78d0277447d81934847166e8024edc5adea4b1c";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "scribble-minted-doc" = {
    src = fetchGit {
      url = "https://github.com/wilbowma/scribble-minted.git";
      rev = "935ad9cd76f7598a60ac3981f94171c486fa91ee";
      ref = "main";
    };
    subpath = "scribble-minted-doc";
    deps = [
      "base"
      "scribble-lib"
      "scribble-minted-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "spacemacs-theme" = {
    src = fetchGit {
      url = "https://github.com/massung/spacemacs-racket.git#main";
      rev = "ab3a35a3044cda0e981bdf4c501c87f568bc7b21";
      ref = "main";
    };

    deps = [
      "base"
    ];
  };
  "redex-chk" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/redex-chk#master";
      rev = "b66f415966434e689842cc3cc60f8a48836d881b";
      ref = "master";
    };

    deps = [
      "redex-lib"
      "base"
      "rackunit-lib"
    ];
  };
  "preserves" = {
    src = fetchGit {
      url = "https://gitlab.com/preserves/preserves.git";
      rev = "f74c4ebaf0e208c50de5a0be0655fed4c5150e2b";
      ref = "main";
    };
    subpath = "implementations/racket/preserves";
    deps = [
      "base"
      "rackunit-lib"
      "data-lib"
    ];
  };
  "srfi-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-doc.zip";
      sha256 = "0ciijd2qg4yci59nn7ylan10y57rg0pag4mrch963akvrxkr4x4h";
    };
    deps = [
      "base"
      "mzscheme-doc"
      "scheme-doc"
      "scheme-lib"
      "base"
      "scribble-lib"
      "srfi-lib"
      "racket-doc"
      "racket-index"
      "compatibility-lib"
    ];
  };
  "binary-class-dbf" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/binary-class-dbf";
      rev = "751ed1b7e44f6894d7bdc468727bfc854677338b";
    };

    deps = [
      "binary-class"
      "base"
      "fast-convert"
    ];
  };
  "db-x86_64-linux-natipkg" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-x86_64-linux-natipkg.zip";
      sha256 = "03fjj3mlq4g9fc1q30hj7a9r6ngmjgrsgmn900zlc8yzm8hl2lj3";
    };
    deps = [
      "base"
    ];
  };
  "smtp" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/smtp.git";
      rev = "475449a4a2d2ea9d019b51e76b738598275e366f";
    };

    deps = [
      "base"
      "gregor-lib"
      "at-exp-lib"
      "r6rs-lib"
      "uuid"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "csv-reading" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/csv-reading.zip";
      sha256 = "0mzz1v2dr1mxs4w1r0sx7xpiyph40vy4916bkqvqy181m1kkg8n1";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "ddict" = {
    src = fetchGit {
      url = "https://github.com/pnwamk/ddict.git";
      rev = "a322d6a38c203d946d48d3ae5892e9ad4f11bdf2";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "option-contract-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/option-contract-test.zip";
      sha256 = "1x0j7z1yyzqazg9x9kwns3ra4r1ldq07q1fhqrnzzvc8gj7cskkd";
    };
    deps = [
      "base"
      "rackunit-lib"
      "option-contract-lib"
    ];
  };
  "termios" = {
    src = fetchGit {
      url = "https://github.com/BartAdv/racket-termios";
      rev = "b6632c54c587577c0cce86e62a72e9b09c38342e";
    };

    deps = [
      "base"
    ];
  };
  "BQN" = {
    src = fetchGit {
      url = "https://github.com/Nesuniken/BQN.rkt.git#headerless";
      rev = "ddcefeee0b789845822e3cbdc94becbfa4e41050";
      ref = "headerless";
    };

    deps = [
      "brag-lib"
      "beautiful-racket-macro"
      "br-parser-tools-lib"
    ];
  };
  "mqtt-client" = {
    src = fetchGit {
      url = "https://github.com/joergen7/mqtt-client.git#master";
      rev = "fe1d72c3eb7b6901c82db84048001534a7bf4df3";
      ref = "master";
    };

    deps = [
      "base"
      "libpaho-mqtt3-x86_64-linux-natipkg"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "draw-ppc-macosx-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/23ebd6037310be4d45126bad7cd19c21ad96dfbc/draw-ppc-macosx-2.zip";
      sha256 = "03p5xhpip6h5n1b8b9p905ax696kxbprhk00mi2vrr02x64njlnh";
    };
    deps = [
      "base"
    ];
  };
  "try-racket-client" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/try-racket-client.git";
      rev = "39624122efb1fdc9788ece335d56b6fe24c351e2";
    };

    deps = [
      "base"
    ];
  };
  "define2" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/define2.git";
      rev = "c9760f29b27e45c6fa9edee37d6275214745e8f8";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "koyo-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/koyo.git";
      rev = "9de9f3a26ffb8da6256c5191ed111ae8f0dbb514";
    };
    subpath = "koyo-test";
    deps = [
      "base"
      "at-exp-lib"
      "component-lib"
      "db-lib"
      "gregor-lib"
      "koyo-lib"
      "libargon2"
      "rackunit-lib"
      "srfi-lite-lib"
      "web-server-lib"
    ];
  };
  "simply-scheme" = {
    src = fetchGit {
      url = "https://github.com/jbclements/simply-scheme";
      rev = "8b8ba2b50d8688c0db30a772c5eac7bb2f6400a7";
    };

    deps = [
      "base"
      "drracket-plugin-lib"
      "gui-lib"
      "string-constants-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "distro-build-test" = {
    src = fetchGit {
      url = "https://github.com/racket/distro-build/";
      rev = "30789466733d3a1678b78d53367f79fe8ce1c6bb";
    };
    subpath = "distro-build-test";
    deps = [
      "base"
      "remote-shell-lib"
      "web-server-lib"
    ];
  };
  "drcomplete-required" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-required";
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "srfi-lib"
      "drcomplete-base"
      "rackunit-lib"
    ];
  };
  "br-parser-tools" = {
    src = fetchGit {
      url = "https://git.matthewbutterick.com/mbutterick/br-parser-tools.git";
      rev = "95b7c69cf9d660a51abf4742378b9adb7100d25a";
    };
    subpath = "br-parser-tools";
    deps = [
      "br-parser-tools-lib"
      "br-parser-tools-doc"
    ];
  };
  "libzstd-x86_64-linux" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libzstd-x86_64-linux-1.5.5.tar.gz";
      sha256 = "13hk4sjza7fv9hkq8nnrsjzpy8rnkdl9xzxicfis4ls575i8m91g";
    };
    deps = [
      "base"
    ];
  };
  "khoury-gradescope" = {
    src = fetchGit {
      url = "https://github.com/northeastern-khoury/gradescope-racket.git";
      rev = "bf69e9dd5c0e98a41b4a4119b79fe88258419509";
    };

    deps = [
    ];
  };
  "colorize" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/colorize.git";
      rev = "c45489d9dd5c55c7853c2906d1e0ec012eaab085";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "calendar" = {
    src = fetchGit {
      url = "https://github.com/LeifAndersen/racket-calendar.git";
      rev = "1c38c3804b8f4d87d5036d67018839276bdf6875";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gregor-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "beeswax" = {
    src = fetchGit {
      url = "https://github.com/otherjoel/beeswax.git#main";
      rev = "f5b1e8957f13e024c9bdadbd99ab9f0439f3aab1";
      ref = "main";
    };

    deps = [
      "at-exp-lib"
      "pollen"
      "sugar"
      "base"
      "scribble-doc"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "virtual-mpu" = {
    src = fetchGit {
      url = "https://github.com/euhmeuh/virtual-mpu.git";
      rev = "d8056f928a646bb9ac96fdb78cde794efc82d144";
    };

    deps = [
      "base"
      "brag"
      "br-parser-tools-lib"
      "anaphoric"
      "reprovide-lang"
      "command-tree"
      "rackunit-lib"
      "charterm"
    ];
  };
  "ebuild-test" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-test";
    deps = [
      "base"
      "rackunit-lib"
      "threading-lib"
      "upi-lib"
      "uuid"
      "ebuild-lib"
      "ebuild-modify-lang"
      "ebuild-templates"
      "ebuild-tools"
      "ebuild-transformers"
    ];
  };
  "qresults-list" = {
    src = fetchGit {
      url = "https://github.com/alex-hhh/qresults-list.git";
      rev = "b680a09a8e83cc72fb306e3d9a8ebaff91a7040d";
    };

    deps = [
      "base"
      "draw-lib"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "gui-doc"
    ];
  };
  "fixcopyright" = {
    src = fetchGit {
      url = "https://github.com/tonyg/fixcopyright.git#main";
      rev = "b1d690ef590cee820e6b20b6633ba1c8731597b8";
      ref = "main";
    };

    deps = [
      "base"
    ];
  };
  "dali" = {
    src = fetchGit {
      url = "https://github.com/johnstonskj/dali.git";
      rev = "d69925424559447fbd3bba7d4d66dcb2a745b9c2";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "racket-doc"
      "sandbox-lib"
      "cover-coveralls"
    ];
  };
  "toml-compliance" = {
    src = fetchGit {
      url = "https://github.com/toml-racket/toml-racket.git";
      rev = "fe46aa2c75939997dc21a2faaa79ea51304c4d15";
    };
    subpath = "toml-compliance";
    deps = [
      "toml-lib"
      "gregor-lib"
      "base"
    ];
  };
  "curly-fn-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-curly-fn";
      rev = "d64cd71d5b386be85f5979edae6f6b6469a4df86";
    };
    subpath = "curly-fn-test";
    deps = [
      "base"
      "curly-fn-lib"
      "rackunit-lib"
    ];
  };
  "simple-xml" = {
    src = fetchGit {
      url = "https://github.com/simmone/racket-simple-xml.git";
      rev = "8b3b8b4ad70687d8c4e8db24872512369a0d5f40";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "html-writing" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/html-writing.zip";
      sha256 = "1qb84m0mqxl0rhla433h4vn4i75752y7rcdqm2v20pkz3m03ggr8";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "vulkan" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/racket-vulkan.git";
      rev = "1e983e921fb41b59994cea0fc0ebd859ec847186";
    };

    deps = [
      "base"
      "compatibility-lib"
      "txexpr"
      "graph-lib"
      "draw-lib"
      "natural-cli"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "hive-common" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/hive-common";
      rev = "38d5bffacf8ddc6b8e0680997d23bf0502153bb7";
    };

    deps = [
      "base"
      "scribble-lib"
      "thread-utils"
      "racket-doc"
    ];
  };
  "esc-vp21" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-esc-vp21";
      rev = "01bc89268f4f051d55885f64d4a0fac671a762b9";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "mordae"
      "racket-doc"
      "typed-racket-doc"
      "typed-racket-lib"
    ];
  };
  "racket-win32-x86_64-3" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-win32-x86_64-3.zip";
      sha256 = "0iilv2aaj5l2rfpmhyl4zvnhz97bga7cw5bb18mwpm0y5p4c07aq";
    };
    deps = [
      "base"
    ];
  };
  "amap" = {
    src = fetchGit {
      url = "https://github.com/yanyingwang/amap.git";
      rev = "15a49b88386a453ef2ed07b694cf0d62a42211d2";
    };

    deps = [
      "base"
      "request"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-rainbow-delimiters"
    ];
  };
  "match-count" = {
    src = fetchGit {
      url = "https://github.com/samth/match-count";
      rev = "99dc72c1dc254602d92d46f12552b95fab6f2ee5";
    };

    deps = [
      "base"
    ];
  };
  "honu" = {
    src = fetchGit {
      url = "https://github.com/racket/honu";
      rev = "d6d6c5f672e334232d1593927f9f0463ad5fc472";
    };

    deps = [
      "scheme-lib"
      "macro-debugger"
      "base"
      "parser-tools-lib"
      "rackunit-lib"
      "racket-index"
      "scribble-lib"
      "at-exp-lib"
      "sandbox-lib"
      "racket-doc"
    ];
  };
  "drracket" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket.zip";
      sha256 = "03dpcfxdf7kipjv5cmzrj995csm1a5qr6d0m9p287vd8b6imql3m";
    };
    deps = [
      "scheme-lib"
      "data-lib"
      "compiler-lib"
      "base"
      "planet-lib"
      "compatibility-lib"
      "draw-lib"
      "errortrace-lib"
      "macro-debugger-text-lib"
      "parser-tools-lib"
      "pconvert-lib"
      "pict-lib"
      "profile-lib"
      "sandbox-lib"
      "scribble-lib"
      "snip-lib"
      "string-constants-lib"
      "typed-racket-lib"
      "wxme-lib"
      "gui-lib"
      "racket-index"
      "racket-doc"
      "html-lib"
      "images-lib"
      "icons"
      "typed-racket-more"
      "trace"
      "macro-debugger"
      "net-lib"
      "tex-table"
      "htdp-lib"
      "drracket-plugin-lib"
      "gui-pkg-manager-lib"
      "drracket-tool-lib"
      "drracket-tool-doc"
      "pict-snip-lib"
      "option-contract-lib"
      "syntax-color-lib"
      "quickscript"
      "simple-tree-text-markup-lib"
      "mzscheme-doc"
      "net-doc"
      "planet-doc"
      "compatibility-doc"
      "string-constants-doc"
      "draw-doc"
      "errortrace-doc"
      "gui-doc"
      "pict-doc"
      "profile-doc"
      "r5rs-doc"
      "at-exp-lib"
      "rackunit-lib"
      "scheme-doc"
    ];
  };
  "json-type-provider" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/json-type-provider.git";
      rev = "f96d3f212519f4ff2aef828e7b891971b82babb8";
    };
    subpath = "json-type-provider";
    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "json-type-provider"
    ];
  };
  "json-sourcery" = {
    src = fetchGit {
      url = "https://github.com/adjkant/json-sourcery.git";
      rev = "c6ee9a5de2f8a85dc58159dedeb1d2bb9a3f710f";
      ref = "c6ee9a5de2f8a85dc58159dedeb1d2bb9a3f710f";
    };
    subpath = "json-sourcery";
    deps = [
      "base"
      "json-sourcery-lib"
      "json-sourcery-doc"
    ];
  };
  "expect" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-expect";
      rev = "9530df30537ae05400b6a3add9619e5f697dca52";
    };

    deps = [
      "syntax-classes-lib"
      "arguments"
      "base"
      "fancy-app"
      "rackunit-lib"
      "reprovide-lang"
      "rackunit-doc"
      "doc-coverage"
      "racket-doc"
      "scribble-lib"
      "scribble-text-lib"
      "syntax-classes-lib"
    ];
  };
  "cond-contract" = {
    src = fetchGit {
      url = "https://github.com/pmatos/cond-contract.git";
      rev = "8f8f1605d91a15fe653c407076a6fc64f69cbebe";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "rsound" = {
    src = fetchGit {
      url = "https://github.com/jbclements/RSound";
      rev = "ec9bbcf9120aa4678b36126fba119ae8433d78c3";
      ref = "master";
    };
    deps = [
      "portaudio"
      "base"
      "data-lib"
      "gui-lib"
      "htdp-lib"
      "math-lib"
      "plot-lib"
      "plot-gui-lib"
      "rackunit-lib"
      "typed-racket-lib"
      "drracket-plugin-lib"
      "memoize"
      "pict-lib"
      "wxme-lib"
      "snip-lib"
      "scribble-lib"
      "racket-doc"
      "wxme-lib"
    ];
  };
  "remember" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/remember.git#main";
      rev = "cb47dd8b081ad14800fd668898f6f938a4a40e91";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "compatibility-lib"
      "scribble-lib"
      "typed-racket-lib"
      "phc-toolkit"
      "hyper-literate"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "scribble-enhanced"
    ];
  };
  "unb-cs2613" = {
    src = fetchGit {
      url = "https://pivot.cs.unb.ca/git/unb-cs2613.git";
      rev = "67576e2029d4865143c458b26fbc9da78c066a66";
    };

    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "frog"
      "explorer"
      "date"
    ];
  };
  "class-iop-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/class-iop";
      rev = "f640064b50109887c40da6df3d3cebf635040794";
    };
    subpath = "class-iop-doc";
    deps = [
      "base"
      "class-iop-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "drracket-restore-workspace" = {
    src = fetchGit {
      url = "https://github.com/sorawee/drracket-restore-workspace.git";
      rev = "139a3d95198c8e4e47835aca12cde4c9f140afc7";
    };

    deps = [
      "drracket-plugin-lib"
      "gui-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "racket-language-server" = {
    src = fetchGit {
      url = "https://github.com/theia-ide/racket-language-server.git";
      rev = "e397a130676504fc8b053e6b1f48d49b77b9ad98";
    };

    deps = [
      "base"
      "data-lib"
      "drracket-tool-lib"
      "gui-lib"
      "scribble-lib"
      "syntax-color-lib"
      "at-exp-lib"
      "data-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "x64asm-doc" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/racket-x64asm.git";
      rev = "b8a4e9998428f4f0b1d083d74d9730e8369f0110";
    };
    subpath = "x64asm-doc";
    deps = [
      "base"
      "x64asm-lib"
      "scribble-lib"
      "racket-doc"
      "typed-racket-doc"
      "typed-racket-lib"
    ];
  };
  "video-unstable" = {
    src = fetchGit {
      url = "https://github.com/videolang/video";
      rev = "3c69669063c56ff8d269768589cb9506a33315e5";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "draw-lib"
      "images-lib"
      "drracket-plugin-lib"
      "data-lib"
      "pict-lib"
      "wxme-lib"
      "sandbox-lib"
      "at-exp-lib"
      "scribble-lib"
      "bitsyntax"
      "opengl"
      "portaudio"
      "net-lib"
      "syntax-color-lib"
      "parser-tools-lib"
      "graph"
      "libvid-x86_64-macosx"
      "libvid-x86_64-win32"
      "libvid-i386-win32"
      "libvid-x86_64-linux"
      "libvid-i386-linux"
      "ffmpeg-x86_64-macosx-3-4"
      "ffmpeg-x86_64-win32-3-4"
      "ffmpeg-i386-win32-3-4"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "draw-doc"
      "ppict"
      "reprovide-lang"
    ];
  };
  "tmux-vim-demo" = {
    src = fetchGit {
      url = "https://github.com/benknoble/tmux-vim-demo.git#main";
      rev = "fafa5d0cb02154159f0565a338fe69c99f1013cd";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "appveyor-racket" = {
    src = fetchGit {
      url = "https://github.com/liberalartist/appveyor-racket.git";
      rev = "21f21d99160a0edefd7ceeb001210c88a8af1099";
    };

    deps = [
      "base"
      "scribble-lib"
      "rackunit-lib"
    ];
  };
  "cultural-anthropology" = {
    src = fetchGit {
      url = "https://github.com/jessealama/cultural-anthropology.git";
      rev = "dc022e2bf35392eb8f958ee5272d67e32ad517cc";
    };

    deps = [
      "auxiliary-macro-context"
      "bitsyntax"
      "bookcover"
      "brag"
      "cmx"
      "datalog"
      "dssl"
      "dssl2"
      "event-lang"
      "frog"
      "frtime"
      "gm-pepm-2018"
      "gregor"
      "gtp-measure"
      "gtp-paper"
      "hackett"
      "herbie"
      "heresy"
      "identikon"
      "ipoe"
      "lipics"
      "margrave"
      "monad"
      "nanopass"
      "neuron"
      "non-det"
      "parenlog"
      "pict3d"
      "plai"
      "play"
      "pollen"
      "pop-pl"
      "py-fizz"
      "racket-dogstatsd"
      "racketscript"
      "rackjure"
      "ragg"
      "rash"
      "reactor"
      "redex"
      "remix"
      "rosette"
      "send-exp"
      "slideshow"
      "slideshow-exe"
      "syndicate"
      "turnstile"
      "typed-racket"
      "video"
      "vr-lang"
      "web-server"
    ];
  };
  "marionette-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/marionette.git";
      rev = "daac17634775dc516611de6ea1e4c43776d64405";
    };
    subpath = "marionette-lib";
    deps = [
      "base"
      "scribble-text-lib"
    ];
  };
  "stream-values" = {
    src = fetchGit {
      url = "https://github.com/sorawee/stream-values.git";
      rev = "8ccf703a0b20bdd96dd5db1a404ae771cfc99959";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "static-rename-doc" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-static-rename";
      rev = "50f1ff9866a3ef116471eb1a483c1992480dcd45";
    };
    subpath = "static-rename-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
      "static-rename-lib"
    ];
  };
  "Scheme-PLUS-for-Racket" = {
    src = fetchGit {
      url = "https://github.com/damien-mattei/Scheme-PLUS-for-Racket.git#main";
      rev = "b6a15215542168be2043671b863f6356afe051f3";
      ref = "main";
    };

    deps = [
      "base"
      "srfi-lib"
      "sci"
      "r6rs-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-code-examples"
      "scribble-doc"
    ];
  };
  "game-engine-demos-common" = {
    src = fetchGit {
      url = "https://github.com/srfoster/game-engine-demos.git";
      rev = "614d1c5fb871f17e4008a26cb42542800457576b";
    };
    subpath = "game-engine-demos-common";
    deps = [
      "https://github.com/thoughtstem/game-engine.git"
      "https://github.com/thoughtstem/game-engine-rpg.git"
    ];
  };
  "syntax-class-or" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/syntax-class-or.git#main";
      rev = "948a823026cb462f113400b5deb5276c9bd1846a";
      ref = "main";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "openh264-x86_64-macosx" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "openh264-x86_64-macosx";
    deps = [
      "base"
    ];
  };
  "slide-easy" = {
    src = fetchGit {
      url = "https://github.com/Antigen-1/slide-easy.git#d87bb91";
      rev = "d87bb9150033c7061fb83968c785b7896f51c70d";
      ref = "d87bb91";
    };

    deps = [
      "base"
      "slideshow-lib"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "sugar"
    ];
  };
  "libtoxcore-racket" = {
    src = fetchGit {
      url = "https://github.com/lehitoskin/libtoxcore-racket.git";
      rev = "8baa14d6835ec4371de4ce7aa73237cd509d8f48";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "cc4101-handin" = {
    src = fetchGit {
      url = "https://github.com/pleiad/cc4101-handin-client";
      rev = "4baadf45f07a1d79d1d2213356e1e60a72092242";
      ref = "master";
    };
    deps = [
      "base"
      "drracket"
      "drracket-plugin-lib"
      "gui-lib"
      "net-lib"
    ];
  };
  "lindenmayer" = {
    src = fetchGit {
      url = "https://github.com/rfindler/lindenmayer";
      rev = "695db090aa4cfdb9338cd34ad0a0b8f72b698a54";
    };

    deps = [
      "base"
      "data-lib"
      "drracket-plugin-lib"
      "gui-lib"
      "htdp-lib"
      "parser-tools-lib"
      "pict-lib"
      "pict3d"
      "syntax-color-lib"
      "typed-racket-lib"
      "math-lib"
      "2d-lib"
      "rackunit-lib"
      "pict-doc"
      "racket-doc"
      "scribble-lib"
      "htdp-doc"
      "syntax-color-doc"
      "typed-racket-doc"
      "typed-racket-more"
    ];
  };
  "scribble-slideshow" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/scribble-slideshow.git";
      rev = "689acc04ca7c2343747756aaf3f60e0d394be433";
    };
    subpath = "scribble-slideshow";
    deps = [
      "base"
      "pict-lib"
      "scribble-lib"
      "slideshow-lib"
      "scribble-slideshow-lib"
      "racket-doc"
      "at-exp-lib"
      "pict-doc"
      "slideshow-doc"
      "scribble-doc"
    ];
  };
  "gnucash" = {
    src = fetchGit {
      url = "https://github.com/jbclements/gnucash";
      rev = "e15cf377a1c9665734d4962f89bf0f94c984e0b6";
    };

    deps = [
      "base"
      "sxml"
      "srfi-lib"
      "srfi-lite-lib"
      "memoize"
      "rackunit-lib"
      "typed-racket-lib"
      "rackunit-typed"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "jack-scribble-example" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/scribble-example";
      rev = "8ea8ae06d859b607fd3600a68a806513580e1867";
    };

    deps = [
      "scribble-lib"
      "base"
      "sweet-exp-lib"
      "reprovide-lang-lib"
      "fancy-app"
      "scribble-doc"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "doc-coverage"
    ];
  };
  "unstable" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable/";
      rev = "99149bf1a6a82b2309cc04e363a87ed36972b64b";
    };
    subpath = "unstable";
    deps = [
      "unstable-lib"
      "unstable-doc"
    ];
  };
  "fpbench" = {
    src = fetchGit {
      url = "https://github.com/FPBench/FPBench.git#main";
      rev = "380c005d43782a05c1b0cacd1e21e9ffd29e864b";
      ref = "main";
    };

    deps = [
      "base"
      "math-lib"
      "generic-flonum"
      "rackunit-lib"
    ];
  };
  "art-lib" = {
    src = fetchGit {
      url = "https://github.com/jagen31/art3.git";
      rev = "a49b37d1c054ff7ebf202c3d18c3ea88b563bf25";
      ref = "main";
    };
    subpath = "art-lib";
    deps = [
      "base"
      "collections-lib"
      "data-lib"
      "fmt"
      "htdp-lib"
      "rackunit"
    ];
  };
  "br-parser-tools-doc" = {
    src = fetchGit {
      url = "https://github.com/mbutterick/br-parser-tools.git";
      rev = "9b2d7cc759b40fd556a398e181ca0fd070885904";
    };
    subpath = "br-parser-tools-doc";
    deps = [
      "base"
      "scheme-lib"
      "racket-doc"
      "syntax-color-doc"
      "br-parser-tools-lib"
      "scribble-lib"
    ];
  };
  "icns" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/icns.git";
      rev = "979cbc32e1d1e245f970e53c2098fbad0f538629";
    };

    deps = [
      "base"
      "pict-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "pict-doc"
    ];
  };
  "terminal-phase" = {
    src = fetchGit {
      url = "https://gitlab.com/dustyweb/terminal-phase.git";
      rev = "3a67e738793c6db951ee919e15ac6397c63d0791";
    };

    deps = [
      "lux"
      "goblins"
      "pk"
      "raart"
      "ansi"
    ];
  };
  "dotmethod" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/dotmethod";
      rev = "4414f7708a68a560453946af4ba6dbc5672037c1";
    };

    deps = [
      "base"
      "afl"
      "postfix-dot-notation"
      "sweet-exp"
      "mutable-match-lambda"
      "my-cond"
      "racket-doc"
      "rackunit-lib"
      "scribble-code-examples"
      "scribble-lib"
    ];
  };
  "aws-cloudformation-deploy" = {
    src = fetchGit {
      url = "https://github.com/cjdev/aws-cloudformation-deploy";
      rev = "00d1107fe8c08712d9011c9bb46d3f4ab9d0cc70";
    };

    deps = [
    ];
  };
  "org-mode" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/org-mode";
      rev = "44e158e658a5291f7489ff7dd8d2d618286c0fd7";
      ref = "master";
    };
    deps = [
      "base"
    ];
  };
  "collector2-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-collector2.git";
      rev = "2e61ec9ce09a465081105300537b21930e76f24a";
    };
    subpath = "src/collector2-lib";
    deps = [
      "base"
      "counter"
      "ebuild-lib"
      "ebuild-templates"
      "threading-lib"
      "upi-lib"
    ];
  };
  "qi-cat" = {
    src = fetchGit {
      url = "https://github.com/NoahStoryM/qi-cat#master";
      rev = "7d838154bb2b97f875662463398b0c1f56e83f20";
      ref = "master";
    };

    deps = [
      "base"
      "qi-lib"
      "rackunit-lib"
    ];
  };
  "gref-doc" = {
    src = fetchGit {
      url = "https://github.com/usaoc/gref.git";
      rev = "4520bf033c74b40c830400b65ac0cbb1d6b8623c";
      ref = "master";
    };
    subpath = "gref-doc";
    deps = [
      "base"
      "scribble-lib"
      "gref-lib"
      "algol60"
      "glass"
      "lens-doc"
      "racket-doc"
      "srfi-doc"
    ];
  };
  "apse" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/apse";
      rev = "b02dfe2de3f7ae1a1edf931c9555408e6354a5bc";
    };

    deps = [
      "base"
      "lux"
      "mode-lambda"
    ];
  };
  "ocelot" = {
    src = fetchGit {
      url = "https://github.com/jamesbornholt/ocelot";
      rev = "58b687cdf22f6c1db4b3322fdbc5b82e9d1bce2b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "sandbox-lib"
      "rosette"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "c-defs" = {
    src = fetchGit {
      url = "https://github.com/belph/c-defs";
      rev = "d5b7ba438ccdead8213e96051a205b696e4a8a93";
    };

    deps = [
      "base"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "benchmark-ips" = {
    src = fetchGit {
      url = "https://github.com/zenspider/benchmark-ips-racket";
      rev = "dd2206eb304c91ebddd893cbac46b867ac254fcd";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "mutate-doc" = {
    src = fetchGit {
      url = "https://github.com/llazarek/mutate.git";
      rev = "a6932812d991d4dfcac0fb91deb6948ac4597e45";
      ref = "master";
    };
    subpath = "mutate-doc";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "mutate-lib"
      "mutate-mutators"
    ];
  };
  "markparam-test" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/markparam";
      rev = "f6393494334318ef497606001f2e83bab2c8c15d";
    };
    subpath = "markparam-test";
    deps = [
      "base"
      "markparam-lib"
      "racket-index"
      "eli-tester"
    ];
  };
  "zeromq-win32-x86_64" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-natipkg-zeromq.git";
      rev = "c9c89e3542508d753384c62ab368b3585796be8b";
    };
    subpath = "zeromq-win32-x86_64";
    deps = [
      "base"
    ];
  };
  "udev" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-udev";
      rev = "9ceb721d4d2af78a5ff99c0977e7970c46e79055";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
    ];
  };
  "forms" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-forms.git";
      rev = "e6ba9fa4a4e17d744760193dc7b8a4b399e9db71";
    };
    subpath = "forms";
    deps = [
      "forms-doc"
      "forms-lib"
    ];
  };
  "multimethod-test" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-multimethod";
      rev = "8a0903ebaedd919971c382eeb785f05080c7a8d6";
    };
    subpath = "multimethod-test";
    deps = [
      "base"
      "multimethod-lib"
      "rackunit-lib"
    ];
  };
  "typed-otp-lib" = {
    src = fetchGit {
      url = "https://github.com/yilinwei/otp.git";
      rev = "463985c11cfb229ca9846513065d1a5bfc1f76c7";
    };
    subpath = "typed-otp-lib";
    deps = [
      "base"
      "crypto-lib"
      "otp-lib"
      "typed-racket-lib"
      "rackunit-typed"
    ];
  };
  "eff" = {
    src = fetchGit {
      url = "https://github.com/syntacticlosure/eff.git#untyped";
      rev = "4ff647e36c05c3fa48d94c82fa2d09e33681a0a7";
      ref = "untyped";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "fexpress-doc" = {
    src = fetchGit {
      url = "https://github.com/rocketnia/fexpress.git";
      rev = "b5c951fddebc3e4d3463cdf78dc9d417de97d50f";
      ref = "main";
    };
    subpath = "fexpress-doc";
    deps = [
      "base"
      "fexpress-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "power-struct" = {
    src = fetchGit {
      url = "https://github.com/BourgondAries/power-struct.git";
      rev = "cb9c521b8d1047d9d60a688b278dee61b301b975";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "piecrust" = {
    src = fetchGit {
      url = "https://github.com/nadeemabdulhamid/piecrust.git";
      rev = "71761acebc880912a4c688a32baef871dbf9ad94";
    };

    deps = [
      "base"
      "db"
      "web-server"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "drracket-custom-keybindings" = {
    src = fetchGit {
      url = "https://github.com/aowens-21/drracket-custom-keybindings.git";
      rev = "9b944b7f36fbe4eee7b22b3af5b74c76287bc1e7";
    };

    deps = [
      "rackunit-lib"
      "base"
      "drracket-plugin-lib"
      "gui-lib"
      "plai-lib"
      "redex-gui-lib"
      "gui-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "futil" = {
    src = fetchGit {
      url = "https://github.com/cucapra/futil.git";
      rev = "b2de29a6e8c1d54100cc6967ecb9fa1fe80223c5";
    };
    subpath = "futil";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "gui-lib"
      "graph-lib"
      "threading-lib"
    ];
  };
  "hamt" = {
    src = fetchGit {
      url = "https://github.com/97jaz/hamt";
      rev = "561cb6a447e9766dcb8abf2c01b30b87d91135f5";
      ref = "master";
    };
    deps = [
      "base"
      "r6rs-lib"
      "collections-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "collections-lib"
    ];
  };
  "softposit-herbie" = {
    src = fetchGit {
      url = "https://github.com/herbie-fp/softposit-herbie.git";
      rev = "ba5c0286aa33ce5a16e8867859faeac25c1ddf43";
    };

    deps = [
      "math-lib"
      "base"
      "softposit-rkt"
      "rival"
      "herbie"
    ];
  };
  "rawk-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-rawk.git";
      rev = "3098de5140da665e1259ebb087b29486298eed69";
    };
    subpath = "src/rawk-lib";
    deps = [
      "base"
      "reprovide-lang-lib"
      "seq-no-order"
      "threading-lib"
    ];
  };
  "design-by-numbers" = {
    src = fetchGit {
      url = "https://github.com/chrisgd/design-by-numbers.git";
      rev = "dc6e30cce44918090094f9c876746f98faea0cd0";
    };
    subpath = "dbn";
    deps = [
      "base"
      "rackunit-lib"
      "parser-tools-lib"
      "gui-lib"
      "syntax-color-lib"
      "wxme-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "polyglot" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/polyglot.git";
      rev = "d27ca7fe90fd4ba2a6c5bcd921fce89e72d2c408";
    };
    subpath = "polyglot";
    deps = [
      "base"
      "polyglot-lib"
      "polyglot-doc"
    ];
  };
  "mred-designer" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/MrEd-Designer";
      rev = "f88e45905dc0fcb13fa327d9b39a47444384921e";
    };

    deps = [
      "base"
      "gui-lib"
      "net-lib"
      "planet-lib"
      "rackunit-lib"
    ];
  };
  "print-debug" = {
    src = fetchGit {
      url = "https://github.com/aldis-sarja/print-debug.git";
      rev = "47bf042c8b02f1fe945d0755f1a8eba9ca22701a";
    };

    deps = [
    ];
  };
  "db-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-lib.zip";
      sha256 = "1sxsszi65054gyn32xs3b9zdh1c7lms96agzrphk9xz5kk68rjs0";
    };
    deps = [
      "srfi-lite-lib"
      "base"
      "unix-socket-lib"
      "sasl-lib"
    ];
  };
  "loci" = {
    src = fetchGit {
      url = "https://github.com/pmatos/racket-loci.git";
      rev = "ce063c7e45d5abb7c187766b3ab7045ef2f84099";
    };

    deps = [
      "base"
      "unix-socket-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "unix-socket-lib"
    ];
  };
  "c-utils" = {
    src = fetchGit {
      url = "https://github.com/samth/c.rkt";
      rev = "a7087828d18fee7268c51104783279d285076560";
      ref = "master";
    };
    deps = [
      "abnf"
      "base"
      "parser-tools-lib"
      "at-exp-lib"
      "parser-tools-doc"
      "planet-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-doc"
      "scribble-lib"
      "srfi-lite-lib"
    ];
  };
  "simplelog" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/xgqt-lang-lib-simplelog4all.git";
      rev = "98fc9ed36461e86bc7a543b4ae5824a41361361e";
    };
    subpath = "Source/v1/simplelog-racket-lib/src/simplelog";
    deps = [
      "base"
    ];
  };
  "data-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-test.zip";
      sha256 = "1c2lfjyhv859lakdck4zzv7xxds3bx85rsb0in4pym71k82iwkhx";
    };
    deps = [
      "base"
      "data-enumerate-lib"
      "racket-index"
      "data-lib"
      "rackunit-lib"
      "math-lib"
    ];
  };
  "egg-herbie-windows" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://github.com/uwplse/herbie/releases/download/v2.0.2/egg-herbie-windows.zip";
      sha256 = "1hwk2r1xx0lyab5z8jmy9qgnkjr1ssmavacbha3jv3dfqrmmfvjf";
    };
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "adventure-mario" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "adventure-mario";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=adventure"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "neuron-doc" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-neuron.git";
      rev = "a8ecafec0c6398c35423348cb02ec229869c8b15";
    };
    subpath = "neuron-doc";
    deps = [
      "base"
      "neuron-lib"
      "at-exp-lib"
      "pict-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "amb" = {
    src = fetchGit {
      url = "https://github.com/NoahStoryM/amb#master";
      rev = "44165b88858cec0e09c8471712b614b577f5bddc";
      ref = "master";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "scribble-lib"
      "racket-doc"
      "data-doc"
    ];
  };
  "unstable-debug-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-debug-lib";
      rev = "1511a2410d11a69b9116c5d6668869765ef58f56";
    };

    deps = [
      "base"
    ];
  };
  "debug-scopes" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/debug-scopes.git#main";
      rev = "8d8f13976b634113f717ddbaf76e9de85203557c";
      ref = "main";
    };

    deps = [
      "base"
      "pretty-format"
      "rackunit-lib"
      "reprovide-lang"
      "scribble-lib"
      "racket-doc"
      "scribble-enhanced"
    ];
  };
  "base58" = {
    src = fetchGit {
      url = "https://github.com/marckn0x/base58.git";
      rev = "125186f659f29a9f7275540c6211885784a68edd";
    };

    deps = [
      "base"
      "binaryio"
      "sha"
      "typed-racket-lib"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
      "rackunit-typed"
    ];
  };
  "gref" = {
    src = fetchGit {
      url = "https://github.com/usaoc/gref.git";
      rev = "4520bf033c74b40c830400b65ac0cbb1d6b8623c";
      ref = "master";
    };
    subpath = "gref";
    deps = [
      "gref-doc"
      "gref-lib"
    ];
  };
  "choose-lang" = {
    src = fetchGit {
      url = "https://gitlab.com/bengreenman/choose-lang.git";
      rev = "fdf777d8e82df64a69df1d09fc7f92c216f3bc68";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-abbrevs"
      "typed-racket-doc"
    ];
  };
  "typed-racket-stream" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/typed-racket-stream";
      rev = "ab5481df26289a47545101aeb1b74a0e7f02887f";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
    ];
  };
  "file-watchers" = {
    src = fetchGit {
      url = "https://github.com/zyrolasting/file-watchers.git";
      rev = "c1ac766a345a335438165ab0d13a4d8f6aec6162";
    };

    deps = [
      "rackunit-lib"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "shell-completion" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/shell-completion.zip";
      sha256 = "19fx576gzf3iyfkl98r4l76xlbvjyl3a1m0gmwv8v9a6yibwjv7g";
    };
    deps = [
      "base"
    ];
  };
  "fragments" = {
    src = fetchGit {
      url = "https://github.com/srfoster/fragments.git";
      rev = "1041f29a85313deed3ab55bc6a69418b9239a1fd";
    };

    deps = [
      "base"
      "simple-http"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "mc-coach" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/mc-coach.git";
      rev = "98efd570ebaca58a1c7c03c167d33ba109a0491f";
    };

    deps = [
      "base"
      "https://github.com/thoughtstem/website.git"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "htdp" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/htdp.zip";
      sha256 = "10p6qm1b7c96q27wjxam54z5xrq4xg220vk5yfm0cg8746bxhn0g";
    };
    deps = [
      "htdp-lib"
      "htdp-doc"
    ];
  };
  "rapider-lib" = {
    src = fetchGit {
      url = "https://github.com/nuty/rapider.git";
      rev = "909ea324095c89bdd568f73428ce306aa313d7d4";
    };
    subpath = "rapider-lib";
    deps = [
      "base"
      "sxml"
      "gregor"
      "html-parsing"
    ];
  };
  "try-catch-finally" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/try-catch-finally.git";
      rev = "ae71f04fe3ef793ed9338a7ee662f72ccc32222b";
    };
    subpath = "try-catch-finally";
    deps = [
      "base"
      "try-catch-finally-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "libgit2-native-libs" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/native-libs.git#native-libs";
      rev = "d7945602ca3dba2ae678992e6349d07ed8ec497d";
      ref = "native-libs";
    };

    deps = [
      "base"
      "libgit2-x86_64-linux"
      "libgit2-aarch64-macosx"
      "libgit2-x86_64-macosx"
      "libgit2-i386-win32"
      "libgit2-x86_64-win32"
    ];
  };
  "sweet-exp-test" = {
    src = fetchGit {
      url = "https://github.com/takikawa/sweet-racket";
      rev = "460a2f52db582014c144f4cc83ee8e2703f46cc7";
    };
    subpath = "sweet-exp-test";
    deps = [
      "base"
      "sweet-exp-lib"
      "rackunit-lib"
      "lazy"
      "typed-racket-lib"
    ];
  };
  "racr" = {
    src = fetchGit {
      url = "https://github.com/eeide/racr";
      rev = "b35421b333f3b3e88e721b39da1cf72a4a9a3028";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "drracket-zenburn" = {
    src = fetchGit {
      url = "https://github.com/tautologico/drracket-zenburn";
      rev = "baec7d09cf9dad88303f123d30626fc466b32c81";
    };

    deps = [
      "base"
    ];
  };
  "Coroutines" = {
    src = fetchGit {
      url = "https://github.com/spdegabrielle/coroutines.git";
      rev = "2878f5200ed1e042d67e886d00210db595041923";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "adjutor" = {
    src = fetchGit {
      url = "https://github.com/LiberalArtist/adjutor.git";
      rev = "5a9ae8570213cfffde644ecf405df500490de05c";
    };

    deps = [
      "base"
      "static-rename-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-spec"
      "scribble-doc"
    ];
  };
  "s-lib" = {
    src = fetchGit {
      url = "https://github.com/caisah/s-lib";
      rev = "de6ae621d8ffd670fede37f51212c8cb5a84bcf3";
    };

    deps = [
      "base"
      "rackunit"
    ];
  };
  "wasm-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-wasm.git";
      rev = "8c871dc095376cbb5130abf93439a02824de54fc";
    };
    subpath = "wasm-lib";
    deps = [
      "base"
      "data-lib"
      "threading-lib"
    ];
  };
  "typed-racket-more" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-more.zip";
      sha256 = "1y75amx9l09rky7az1yxmjvflr4bmg3z5vg7yv4l08zv0dm8lf81";
    };
    deps = [
      "srfi-lite-lib"
      "base"
      "net-lib"
      "net-cookies-lib"
      "web-server-lib"
      "db-lib"
      "draw-lib"
      "rackunit-lib"
      "rackunit-gui"
      "rackunit-typed"
      "snip-lib"
      "typed-racket-lib"
      "gui-lib"
      "pict-lib"
      "images-lib"
      "racket-index"
      "sandbox-lib"
      "pconvert-lib"
    ];
  };
  "sentry-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-sentry.git";
      rev = "720daa812297328cd8d50852865b514143dad12d";
    };
    subpath = "sentry-lib";
    deps = [
      "base"
      "compatibility-lib"
      "gregor-lib"
      "http-easy-lib"
      "web-server-lib"
    ];
  };
  "ratel" = {
    src = fetchGit {
      url = "https://github.com/198d/ratel";
      rev = "c28e0d56e9f1babad8293ab50c1f30cb3fd4df67";
    };

    deps = [
      "base"
      "threading"
    ];
  };
  "glsl" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-glsl.git";
      rev = "6853bcb4324a10deb2cec70e59fb8b401a45e9f3";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "vela-lib" = {
    src = fetchGit {
      url = "https://github.com/nuty/vela.git";
      rev = "ba00692452020136b4f629e729a7e58855db630a";
    };
    subpath = "vela-lib";
    deps = [
      "web-server"
    ];
  };
  "soup-lib" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-soup-lib.git";
      rev = "9f7f60f6fd71c3e0e64bd3e55012070f03400a80";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "srfi-lite-lib"
      "extra-srfi-libs"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "openfst-x86_64-win32" = {
    src = fetchGit {
      url = "https://github.com/AlexMaclean/racket-openfst.git";
      rev = "cdd7ce0f62d159c56fc77df2fc299045f37e5d50";
    };
    subpath = "openfst-x86_64-win32";
    deps = [
      "base"
    ];
  };
  "peg-gen" = {
    src = fetchGit {
      url = "https://github.com/lives-group/pegwfgen.git";
      rev = "347d393e5ebf554bf8a022414388a32e301b4a65";
    };

    deps = [
      "algorithms"
      "base"
      "rackcheck"
      "rackunit"
      "cover-lib"
      "algorithms"
      "cover"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "pmsf-lib" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-lib";
    deps = [
      "base"
      "threading-lib"
    ];
  };
  "turnstile-example" = {
    src = fetchGit {
      url = "https://github.com/stchang/macrotypes.git";
      rev = "220552416edf5646d796668176a473e4271205b2";
    };
    subpath = "turnstile-example";
    deps = [
      "base"
      "typed-racket-lib"
      "turnstile-lib"
      "macrotypes-lib"
    ];
  };
  "k-test" = {
    src = fetchGit {
      url = "https://github.com/racket-tw/k.git";
      rev = "2b5f5066806a5bbd0733b781a2ed5fce6956a4f5";
      ref = "develop";
    };
    subpath = "k-test";
    deps = [
      "base"
      "rackunit-lib"
      "k-core"
      "k-lib"
    ];
  };
  "whereis" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/racket-whereis.git";
      rev = "f57546369bcd26fd3549261b1128bb6607bd51ff";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "battlearena-avengers" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "battlearena-avengers";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=battlearena"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "unreachable" = {
    src = fetchGit {
      url = "https://github.com/philnguyen/unreachable.git";
      rev = "a7d303d673ebb887ed49550ee27da307948cda37";
    };
    subpath = "unreachable";
    deps = [
      "base"
    ];
  };
  "make" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/make.zip";
      sha256 = "1k6806a9jv11r0axi7bdk4rm216jxm7s81ma93mh51c8vm3bqgf8";
    };
    deps = [
      "scheme-lib"
      "base"
      "cext-lib"
      "compiler-lib"
      "compatibility-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "cond-strict" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/cond-strict";
      rev = "4fac4eeb13fe560981ad8b467ec2147ec60c7c7b";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "disposable" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-disposable";
      rev = "843d3e224fd874b9c463b74cb5ef13d8a0b5766a";
    };
    subpath = "disposable";
    deps = [
      "arguments"
      "base"
      "reprovide-lang"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
      "scribble-text-lib"
    ];
  };
  "scheme-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scheme-doc.zip";
      sha256 = "0y7k4k0s4nfly3hlbvp6nfsa1s1vkr9jv425flq8z7s2dqmx5wh4";
    };
    deps = [
      "scheme-lib"
      "base"
      "net-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-index"
      "racket-doc"
      "gui-lib"
      "gui-doc"
      "compatibility-doc"
    ];
  };
  "mintexpp-tex-lib" = {
    src = fetchGit {
      url = "https://github.com/shhyou/mintexpp.git";
      rev = "2d457fa70581b45871833405182a84f7de236b47";
    };
    subpath = "mintexpp-tex-lib";
    deps = [
      "base"
      "commonmark-lib"
      "syntax-color-lib"
      "scribble-lib"
      "mintexpp-reader-lib"
      "mintexpp-lib"
    ];
  };
  "sha" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/sha";
      rev = "f9472bea67e05e8c11dc915e943038d3a7276a9b";
      ref = "master";
    };
    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "kw-make-struct" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/kw-make-struct";
      rev = "1d377d6be64d848b945fdce5e618ca3eef95395a";
    };
    subpath = "kw-make-struct";
    deps = [
      "base"
      "kw-make-struct-lib"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "gui-ppc-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-ppc-macosx.zip";
      sha256 = "1n709zs1hjnxklf7c4a3qk8019k3p4br31ndcyffshz7bqh2sjkr";
    };
    deps = [
      "base"
    ];
  };
  "deferred" = {
    src = fetchGit {
      url = "https://github.com/cjfuller/deferred";
      rev = "fccb728dc9cbc0a6acb38fd0bc782db41bf32d4c";
    };

    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "racket-ppc-macosx-2" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://pkg-sources.racket-lang.org/pkgs/14e3be925c096b634fab8b04760a817066438d54/racket-ppc-macosx-2.zip";
      sha256 = "1ij7i6qnrfva01y18rgcaqgwc1lpm1xlh6wdi88p9iz2dya13ihq";
    };
    deps = [
      "base"
    ];
  };
  "iso-printf-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-iso-printf.git";
      rev = "88e025741aa955107b06c1fd282273d345900b4b";
    };
    subpath = "iso-printf-test";
    deps = [
      "base"
      "iso-printf-lib"
      "rackunit-lib"
    ];
  };
  "fancy-app" = {
    src = fetchGit {
      url = "https://github.com/samth/fancy-app";
      rev = "f451852164ee67e3e122f25b4bce45001a557045";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "drracket-tool-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-tool-doc.zip";
      sha256 = "1xzz83aapyraka1yc5qnjxi5si5lsmx06al1z415mb74rmvhpr8z";
    };
    deps = [
      "base"
      "scribble-lib"
      "drracket-tool-lib"
      "racket-doc"
      "gui-doc"
      "gui-lib"
      "drracket"
    ];
  };
  "unstable-macro-testing-lib" = {
    src = fetchGit {
      url = "https://github.com/racket/unstable-macro-testing-lib";
      rev = "65b4dcc6d6d4aa6a1a29cb3fc039fb4a06968a45";
    };

    deps = [
      "base"
    ];
  };
  "gui-pkg-manager-doc" = {
    src = fetchGit {
      url = "https://github.com/racket/gui-pkg-manager/";
      rev = "70cc90538c5dffb722e17cabb769aeadfef32ec4";
    };
    subpath = "gui-pkg-manager-doc";
    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "icfp-2014-contracts-talk" = {
    src = fetchGit {
      url = "https://github.com/rfindler/icfp-2014-contracts-talk";
      rev = "e1df17f23d7cd4fbb4fa78c15d6eb3f79c576ddf";
    };

    deps = [
      "plot-lib"
      "base"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "plot-gui-lib"
      "rackunit-lib"
      "redex-gui-lib"
      "redex-lib"
      "slideshow-lib"
    ];
  };
  "left-pad" = {
    src = fetchGit {
      url = "https://github.com/bennn/racket-left-pad";
      rev = "12446d16786708ec7448bacd308923a2afdd2ab9";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "cs135-drtools" = {
    src = fetchGit {
      url = "https://github.com/Raymo111/cs135-drtools.git";
      rev = "f7895018e28894a09f363cc55fa118cb2a02076b";
    };

    deps = [
      "drracket-plugin-lib"
      "gui-lib"
      "quickscript"
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "draw" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw.zip";
      sha256 = "1g9hjcj1953w5zwr9phv3n02xjmx2q2z68zmikcrx4g738bqzzrw";
    };
    deps = [
      "draw-lib"
      "draw-doc"
    ];
  };
  "plot-compat" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-compat.zip";
      sha256 = "04p1myq57nski0af1hlcp9mnhr04y847bi5mrjgrgxagpnrqhcdx";
    };
    deps = [
      "base"
      "plot-gui-lib"
      "draw-lib"
      "plot-lib"
      "snip-lib"
    ];
  };
  "simple-tree-text-markup-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/simple-tree-text-markup-doc.zip";
      sha256 = "029mykmfjxs53vg2avxpjb7mkf37yillaclvqry1iqxy10s255pa";
    };
    deps = [
      "base"
      "scheme-lib"
      "at-exp-lib"
      "scribble-lib"
      "racket-doc"
      "simple-tree-text-markup-lib"
      "draw-doc"
      "draw-lib"
      "gui-doc"
      "snip-lib"
    ];
  };
  "scrypt" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-scrypt";
      rev = "da39d02302cad3e07c12215e42ea63212d209d1b";
      ref = "master";
    };
    deps = [
      "srfi-lite-lib"
      "base"
      "dynext-lib"
      "rackunit-lib"
    ];
  };
  "json-format" = {
    src = fetchGit {
      url = "https://github.com/shawnw/racket-json-format.git#master";
      rev = "f5224524a9c532f604bb4ee6245533636002557c";
      ref = "master";
    };

    deps = [
      "base"
      "racket"
      "unicode-breaks"
      "soup-lib"
      "extra-srfi-libs"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "plai" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plai.zip";
      sha256 = "0s5q8vfaqxfjdp515a3359jc70cixnp8q5agxp6wxsd6q0k9qpj2";
    };
    deps = [
      "plai-doc"
      "plai-lib"
      "base"
    ];
  };
  "neuron-lib" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-neuron.git";
      rev = "a8ecafec0c6398c35423348cb02ec229869c8b15";
    };
    subpath = "neuron-lib";
    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "punctaffy-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/punctaffy-for-racket.git";
      rev = "2a958bf3987459e9197eb5963fe5107ea2e2e912";
      ref = "main";
    };
    subpath = "punctaffy-doc";
    deps = [
      "base"
      "at-exp-lib"
      "brag"
      "lathe-comforts-doc"
      "lathe-comforts-lib"
      "lathe-morphisms-doc"
      "lathe-morphisms-lib"
      "net-doc"
      "parendown-doc"
      "parendown-lib"
      "punctaffy-lib"
      "racket-doc"
      "ragg"
      "scribble-lib"
    ];
  };
  "ffmpeg-x86_64-win32-3-4" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "e8fb290d38e90800ffa1d105dbb540d28f931807";
      ref = "ffmpeg-3.4";
    };
    subpath = "ffmpeg-x86_64-win32";
    deps = [
      "base"
    ];
  };
  "slideshow-repl" = {
    src = fetchGit {
      url = "https://github.com/mflatt/slideshow-repl";
      rev = "e8d3f8fb08322cd1aa9553c1c0079d7bebb3e823";
      ref = "master";
    };
    deps = [
      "errortrace-lib"
      "gui-lib"
      "slideshow-lib"
      "base"
      "pict-lib"
      "pict-snip-lib"
      "draw-doc"
      "draw-lib"
      "pict-doc"
      "racket-doc"
      "scribble-lib"
      "slideshow-doc"
    ];
  };
  "phc-adt-lib" = {
    src = fetchGit {
      url = "https://github.com/jsmaniac/phc-adt.git";
      rev = "36c1047c4899d1b478cc6052f9b2e71168aeefb5";
      ref = "main";
    };
    subpath = "phc-adt-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "hyper-literate"
      "multi-id"
      "phc-toolkit"
      "remember"
      "type-expander"
      "extensible-parser-specifications"
      "alexis-util"
      "typed-struct-props"
      "match-string"
      "xlist"
      "compatibility-lib"
      "generic-bind"
      "datatype"
      "at-exp-lib"
      "sandbox-lib"
      "scribble-enhanced"
      "scribble-lib"
      "scribble-math"
    ];
  };
  "lua" = {
    src = fetchGit {
      url = "https://github.com/shawsumma/lure.git";
      rev = "dd08e81a072899acdd8a5cdf9e759ec4fb2bea72";
    };

    deps = [
      "base"
      "functional-lib"
      "match-plus"
      "readline-lib"
    ];
  };
  "commatize-number" = {
    src = fetchGit {
      url = "https://github.com/johnnyodonnell/commatize-number.git#master";
      rev = "c03e657a9b85baab345663ddf1691ef1709cc45f";
      ref = "master";
    };

    deps = [
      "base"
    ];
  };
  "laramie-test" = {
    src = fetchGit {
      url = "https://github.com/jessealama/laramie.git";
      rev = "f9c9150e9afe8aadfa9251972ecc915f867657f3";
    };
    subpath = "laramie-test";
    deps = [
      "base"
      "rackunit-lib"
      "rackunit-typed"
      "typed-racket-lib"
      "laramie-lib"
    ];
  };
  "racket-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-test.zip";
      sha256 = "07mnjvlcysakphwifh81afd48gjpgnc0vcjw2446y34p16v9sd2i";
    };
    deps = [
      "compiler-lib"
      "sandbox-lib"
      "compatibility-lib"
      "eli-tester"
      "planet-lib"
      "net-lib"
      "net-test"
      "serialize-cstruct-lib"
      "cext-lib"
      "pconvert-lib"
      "racket-test-core"
      "web-server-lib"
      "rackunit-lib"
      "at-exp-lib"
      "option-contract-lib"
      "srfi-lib"
      "scribble-lib"
      "racket-index"
      "scheme-lib"
      "base"
      "data-lib"
    ];
  };
  "asyncunit" = {
    src = fetchGit {
      url = "https://github.com/schuster/asyncunit";
      rev = "d388c4b0d500f4f77c91415cd2b2741ea0b98909";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "peg" = {
    src = fetchGit {
      url = "https://github.com/rain-1/racket-peg.git#5191749fa13686045f2170358097eb81d710a9de";
      rev = "5191749fa13686045f2170358097eb81d710a9de";
      ref = "5191749fa13686045f2170358097eb81d710a9de";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "rosette-extras" = {
    src = fetchGit {
      url = "https://github.com/lenary/rosette-extras.git";
      rev = "66f45e9cddd8ac3e2c9b182e38a71dd49c8ef089";
    };

    deps = [
      "base"
      "rosette"
      "rackunit-lib"
    ];
  };
  "readline-gpl" = {
    src = fetchGit {
      url = "https://github.com/racket/readline-gpl";
      rev = "6c231bdba7086c397349a934db768441ca648fec";
    };

    deps = [
      "base"
      "rackunit-lib"
    ];
  };
  "racket-glossary" = {
    src = fetchGit {
      url = "https://git.sr.ht/~sschwarzer/racket-glossary#main";
      rev = "66c2d3c17e9d1f9988277fbb907cb65a65497d4f";
      ref = "main";
    };

    deps = [
      "base"
      "data-doc"
      "data-lib"
      "gui-doc"
      "gui-lib"
      "rackunit-doc"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "racket-chipmunk" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/racket-chipmunk.git";
      rev = "152c9c4758f59ade9db01614e89e946eb39de168";
    };

    deps = [
      "base"
    ];
  };
  "port-match" = {
    src = fetchGit {
      url = "https://github.com/lwhjp/port-match";
      rev = "71fd3e9ed4f5766c46182923b08ff6d514e838a2";
    };

    deps = [
      "base"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "base32" = {
    src = fetchGit {
      url = "https://github.com/afldcr/racket-base32.git";
      rev = "ea130f84dbac547d40f5bd27d1be53df811b4fd7";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "lz4-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lz4.git";
      rev = "df811b1166b22221f641b3c78171cd31f4e2ba53";
    };
    subpath = "lz4-test";
    deps = [
      "base"
      "lz4-lib"
      "rackunit-lib"
    ];
  };
  "libgit2" = {
    src = fetchGit {
      url = "https://github.com/libgit2-racket/libgit2.git";
      rev = "b1a8f7adc35b861ce95df2bbc41a71808e8133f0";
      ref = "main";
    };
    subpath = "libgit2";
    deps = [
      "base"
      "libgit2-native-libs"
      "rackunit-lib"
      "rackunit-lib"
      "rackunit-spec"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "redex-abbrevs-doc" = {
    src = fetchGit {
      url = "https://github.com/bennn/redex-abbrevs.git";
      rev = "9e08f5a3ea0c2b70c5324c73969397c161a624df";
    };
    subpath = "redex-abbrevs-doc";
    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "rackunit-doc"
      "redex-doc"
      "redex-lib"
      "redex-abbrevs-lib"
    ];
  };
  "drcomplete-auto" = {
    src = fetchGit {
      url = "https://github.com/yjqww6/drcomplete.git";
      rev = "694dda3d1666153f656c04db53e1ab6e25904c90";
    };
    subpath = "drcomplete-auto";
    deps = [
      "base"
      "gui-lib"
      "drracket-plugin-lib"
      "drracket"
    ];
  };
  "snappy" = {
    src = fetchGit {
      url = "https://github.com/stchang/snappy";
      rev = "c97436037ff6600dc7df447a5aba3d59c3e7e011";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "osc" = {
    src = fetchGit {
      url = "https://github.com/jbclements/osc";
      rev = "ec8293cf0f98d459710d74ecb88c11a6f70f44ef";
      ref = "master";
    };
    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "typed-racket-datatype-lib" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/typed-racket-datatype.git";
      rev = "70af100b2035ee9383c63c0d969194659af233f2";
      ref = "main";
    };
    subpath = "typed-racket-datatype-lib";
    deps = [
      "base"
      "typed-racket-lib"
      "syntax-classes-lib"
    ];
  };
  "binaryio" = {
    src = fetchGit {
      url = "https://github.com/rmculpepper/binaryio";
      rev = "34ad07e9e33cf835670c4697572e93e8a0af5f02";
    };
    subpath = "binaryio";
    deps = [
      "base"
      "binaryio-lib"
      "rackunit-lib"
      "math-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "ebuild-modify-lang" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-ebuild.git";
      rev = "f546f1c86a834a04520d0817407141d376572c86";
    };
    subpath = "src/ebuild-modify-lang";
    deps = [
      "base"
      "ebuild-lib"
    ];
  };
  "libargon2-aarch64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://racket.defn.io/libargon2-aarch64-macosx-20210625.0.tar.gz";
      sha256 = "0jzah44z773lwai7p5wncph8pn73vlbllw7lj67s3yzznkqrx1pm";
    };
    deps = [
      "base"
    ];
  };
  "hive-client" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/hive-client";
      rev = "605dd70cdeb4bcc88e9c79d744bcca6fc89c611d";
    };

    deps = [
      "base"
      "scribble-lib"
      "hive-common"
      "gui-lib"
      "racket-doc"
    ];
  };
  "rfc6455" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-rfc6455";
      rev = "e3a87e914e25841a6e1bb996aa001aeb178284bf";
    };

    deps = [
      "base"
      "net-lib"
      "rackunit-lib"
      "web-server-lib"
      "scribble-lib"
      "net-doc"
      "racket-doc"
      "web-server-doc"
    ];
  };
  "file-metadata" = {
    src = fetchGit {
      url = "https://github.com/dstorrs/file-metadata.git";
      rev = "7e3a1ad79cc66d35e002f7365a776de2538bcec7";
    };

    deps = [
    ];
  };
  "drracket-tool-text-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-tool-text-lib.zip";
      sha256 = "1brcz5y9gfpj0ppf1vhax220lcl1f9jqv26h4vk3cz7mgcw583gc";
    };
    deps = [
      "base"
      "scribble-lib"
      "string-constants-lib"
      "racket-index"
      "at-exp-lib"
      "rackunit-lib"
    ];
  };
  "yaml-exp" = {
    src = fetchGit {
      url = "https://github.com/eutro/yaml-exp.git#main";
      rev = "3f4d7bc1c3fb6c674d5be219223e4cab96879cf5";
      ref = "main";
    };

    deps = [
      "base"
      "yaml"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "cover-test" = {
    src = fetchGit {
      url = "https://github.com/florence/cover.git";
      rev = "ad50ffa8f6246053bec24b39b9cae7fad1534373";
      ref = "release";
    };
    subpath = "cover-test";
    deps = [
      "base"
      "cover-lib"
      "data-lib"
      "syntax-color-lib"
      "compiler-lib"
      "custom-load"
      "at-exp-lib"
      "base"
      "htdp-lib"
      "macro-debugger"
      "rackunit-lib"
      "typed-racket-lib"
    ];
  };
  "vela" = {
    src = fetchGit {
      url = "https://github.com/nuty/vela.git";
      rev = "ba00692452020136b4f629e729a7e58855db630a";
    };
    subpath = "vela";
    deps = [
      "base"
      "vela-lib"
      "vela-docs"
    ];
  };
  "racket-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-lib.zip";
      sha256 = "0q756742bvpvq2jb91y7nm5frb6bkjrasjmgxjg2prhz7q9rf8cl";
    };
    deps = [
      "base"
      "racket-win32-i386-3"
      "racket-win32-x86_64-3"
      "racket-win32-arm64-3"
      "racket-x86_64-linux-natipkg-3"
      "racket-x86_64-macosx-3"
      "racket-i386-macosx-3"
      "racket-ppc-macosx-3"
      "racket-aarch64-macosx-3"
      "db-ppc-macosx"
      "db-win32-i386"
      "db-win32-x86_64"
      "db-win32-arm64"
      "db-x86_64-linux-natipkg"
      "com-win32-i386"
      "com-win32-x86_64"
    ];
  };
  "used-imports" = {
    src = fetchGit {
      url = "https://github.com/Metaxal/used-imports.git#main";
      rev = "1754ecb89ffbc418e7b2596bb1bb2c34401947ce";
      ref = "main";
    };

    deps = [
      "define2"
      "drracket-tool-text-lib"
      "base"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "generic-flonum" = {
    src = fetchGit {
      url = "https://github.com/bksaiki/generic-flonum.git";
      rev = "903b2492a84b0596e2ef067f07b17567c65b048b";
    };

    deps = [
      "math-lib"
      "base"
      "scribble-lib"
      "rackunit-lib"
      "racket-doc"
      "math-doc"
    ];
  };
  "xe" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-xe.git";
      rev = "ce113def8ce67651d0c6135afd5e0b506aeaca8e";
    };

    deps = [
      "base"
      "base"
      "rackunit-lib"
    ];
  };
  "raco-format" = {
    src = fetchGit {
      url = "https://github.com/mxork/raco-format.git#main";
      rev = "05b167809a891a35d9533f31cf95041860bc80db";
      ref = "main";
    };

    deps = [
      "base"
      "threading-lib"
      "gui-lib"
    ];
  };
  "drracket-plugin-lib" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/drracket-plugin-lib.zip";
      sha256 = "0wz3mp14jlq10zxldryv6mmp8hks9nknsvgx7wzwswzngfggpcb5";
    };
    deps = [
      "base"
      "compatibility-lib"
    ];
  };
  "andlet" = {
    src = fetchGit {
      url = "https://bitbucket.org/derend/andlet.git";
      rev = "2da90e6a47c2f87c57d05d9bd7bc221677d4b9d5";
    };

    deps = [
      "base"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "openfst-x86_64-macosx" = {
    src = fetchGit {
      url = "https://github.com/AlexMaclean/racket-openfst.git";
      rev = "cdd7ce0f62d159c56fc77df2fc299045f37e5d50";
    };
    subpath = "openfst-x86_64-macosx";
    deps = [
      "base"
    ];
  };
  "cli" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/cli.git#main";
      rev = "26c930e8f8bc4cb9396561f2678d74179473085d";
      ref = "main";
    };

    deps = [
      "base"
      "mischief"
      "version-case"
      "scribble-lib"
      "scribble-abbrevs"
      "racket-doc"
      "rackunit-lib"
      "cover"
      "cover-coveralls"
      "sandbox-lib"
    ];
  };
  "expeditor" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/expeditor.zip";
      sha256 = "1kgxsbwn031zjm4ly37ly9kxz2g1r8yabskb0h88gn42clqcg0gl";
    };
    deps = [
      "expeditor-lib"
      "expeditor-doc"
    ];
  };
  "battlearena-fortnite" = {
    src = fetchGit {
      url = "https://github.com/thoughtstem/TS-Languages.git";
      rev = "49a8ad283230e5bcc38d583056271876c5d6556e";
    };
    subpath = "battlearena-fortnite";
    deps = [
      "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-kata-util"
      "https://github.com/thoughtstem/TS-Languages.git?path=battlearena"
      "https://github.com/thoughtstem/fandom-sprites-ge.git"
    ];
  };
  "taro" = {
    src = fetchGit {
      url = "https://github.com/orreksu/taro.git#main";
      rev = "dcc2a251f7e697bf4c8a36347a59c08ed122f5d1";
      ref = "main";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "generator-util" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/generator-util.git";
      rev = "2de885130984bd6880a5e1017d0b3783e64b3877";
    };

    deps = [
      "base"
      "collections-lib"
      "relation"
      "social-contract"
      "scribble-lib"
      "scribble-abbrevs"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "cover"
      "cover-coveralls"
      "collections-doc"
    ];
  };
  "sirmail" = {
    src = fetchGit {
      url = "https://github.com/mflatt/sirmail";
      rev = "30c9bd6c6993ddd432d50a7ab705afa22ec34891";
    };

    deps = [
      "base"
      "compatibility-lib"
      "drracket"
      "gui-lib"
      "net-lib"
      "parser-tools-lib"
      "scheme-lib"
      "syntax-color-lib"
      "sandbox-lib"
      "pict-lib"
      "pict-snip-lib"
    ];
  };
  "htdp-trace" = {
    src = fetchGit {
      url = "https://git.uwaterloo.ca/djholtby/uwaterloo-racket.git";
      rev = "c4848f9d32d83c385e7ae0a7efc8bc11ccb808a8";
    };
    subpath = "htdp-trace";
    deps = [
      "base"
      "htdp-lib"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "net-test" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-test.zip";
      sha256 = "1wgkpv9bp1zw75yda2ngj2wwzsdl34y8b7si6kr5g3dxg6wgcrnw";
    };
    deps = [
      "base"
      "at-exp-lib"
      "compatibility-lib"
      "eli-tester"
      "net-lib"
      "racket-test"
      "rackunit-lib"
      "sandbox-lib"
      "web-server-lib"
    ];
  };
  "gir" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/gir";
      rev = "b0934a0c2d00933e7f0cc17b7f59a51ee5f841c1";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "retry" = {
    src = fetchGit {
      url = "https://github.com/jackfirth/racket-retry";
      rev = "2a6ba58ab5f14707305e75063c3ee4519fc6dc7d";
    };

    deps = [
      "compose-app"
      "fancy-app"
      "gregor-lib"
      "reprovide-lang"
      "base"
      "mock"
      "at-exp-lib"
      "gregor-doc"
      "scribble-text-lib"
      "racket-doc"
      "scribble-lib"
      "rackunit-lib"
      "mock-rackunit"
    ];
  };
  "hive-server" = {
    src = fetchGit {
      url = "https://github.com/Kalimehtar/hive-server.git";
      rev = "b60f588e9f214faa7b0767047ff20ba962ce935a";
    };

    deps = [
      "base"
      "scribble-lib"
      "hive-common"
      "rackunit-lib"
      "srfi-lib"
      "racket-doc"
    ];
  };
  "dbg" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-dbg.git";
      rev = "a265f4eeaf0b38fe2cb3196013fa698eb9f7a172";
    };
    subpath = "dbg";
    deps = [
      "base"
      "profile-lib"
    ];
  };
  "raco-bug" = {
    src = fetchGit {
      url = "https://github.com/samth/raco-bug";
      rev = "21d5b6aa30e8efa33bf7110482dea48541399edb";
    };

    deps = [
      "base"
      "drracket"
    ];
  };
  "collections-lens" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/collections-lens";
      rev = "73556daf4885558ea6a66a5def8ad668c0fcf4c3";
    };

    deps = [
      "base"
      "collections"
      "curly-fn"
      "lens-common"
      "scribble-lib"
      "at-exp-lib"
      "racket-doc"
      "lens-doc"
      "rackunit-lib"
    ];
  };
  "helisp" = {
    src = fetchGit {
      url = "https://github.com/QYamamoto/helisp.git#master";
      rev = "d7d80c71ae093dac7a0450fe35eadd6536469d81";
      ref = "master";
    };

    deps = [
    ];
  };
  "video-testing" = {
    src = fetchGit {
      url = "https://github.com/videolang/video#testing";
      rev = "aa958b5ab250c8a202b24444935255d773608ea6";
      ref = "testing";
    };

    deps = [
      "base"
      "rackunit-lib"
      "gui-lib"
      "draw-lib"
      "images-lib"
      "drracket-plugin-lib"
      "data-lib"
      "pict-lib"
      "wxme-lib"
      "sandbox-lib"
      "at-exp-lib"
      "scribble-lib"
      "bitsyntax"
      "opengl"
      "portaudio"
      "net-lib"
      "syntax-color-lib"
      "parser-tools-lib"
      "graph"
      "libvid-x86_64-macosx"
      "libvid-x86_64-win32"
      "libvid-i386-win32"
      "libvid-x86_64-linux"
      "libvid-i386-linux"
      "ffmpeg-x86_64-macosx-3-4"
      "ffmpeg-x86_64-win32-3-4"
      "ffmpeg-i386-win32-3-4"
      "scribble-lib"
      "racket-doc"
      "gui-doc"
      "draw-doc"
      "ppict"
      "reprovide-lang"
    ];
  };
  "Quaternion" = {
    src = fetchGit {
      url = "https://github.com/APOS80/Quaternion";
      rev = "6e8cf081849384f848b53bb06977794d95491bf4";
    };

    deps = [
      "base"
      "scribble-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "math-lib"
      "typed-racket-doc"
      "racket-doc"
      "math-doc"
    ];
  };
  "racket-langserver" = {
    src = fetchGit {
      url = "https://github.com/jeapostrophe/racket-langserver.git";
      rev = "140d94e7d64dd861bb2bfccc989d91382c4c8d8e";
    };

    deps = [
      "base"
      "compatibility-lib"
      "data-lib"
      "drracket-tool-lib"
      "gui-lib"
      "syntax-color-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-index"
      "html-parsing"
      "chk-lib"
    ];
  };
  "azelf" = {
    src = fetchGit {
      url = "https://github.com/kalxd/azelf.git#master";
      rev = "16f0a61b660f8ccecbb8785cb64575b9ae94f2d1";
      ref = "master";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "ansi-color" = {
    src = fetchGit {
      url = "https://github.com/renatoathaydes/ansi-color.git";
      rev = "20363d90fcef9219580ec0d6a78eea834df39d21";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "pmsf-name" = {
    src = fetchGit {
      url = "https://gitlab.com/gentoo-racket/racket-pmsf.git";
      rev = "58274daaeaa92b424da73d45c4b521d385e1bbf4";
    };
    subpath = "src/pmsf-name";
    deps = [
      "base"
      "brag-lib"
      "reprovide-lang-lib"
      "threading-lib"
      "pmsf-lib"
    ];
  };
  "magnolisp" = {
    src = fetchGit {
      url = "https://github.com/bldl/magnolisp";
      rev = "2a3487cf743d61b7f5c6bcb8656a312e70c1b6dc";
    };

    deps = [
      "base"
      "data-lib"
      "scribble-lib"
      "unstable-debug-lib"
      "at-exp-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "snappy-lib" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-snappy.git";
      rev = "b02fa86ac7527f7a3a8731ac52f8b351e7d5feca";
    };
    subpath = "snappy-lib";
    deps = [
      "base"
    ];
  };
  "gui-easy" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-gui-easy.git";
      rev = "d0c760f74ca6bc5bd027ec1b6749fa81ef84e02e";
    };
    subpath = "gui-easy";
    deps = [
      "base"
      "gui-easy-lib"
      "draw-doc"
      "gui-doc"
      "gui-lib"
      "pict-doc"
      "pict-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "multipath-daemon" = {
    src = fetchGit {
      url = "https://github.com/mordae/racket-multipath-daemon";
      rev = "4d8a2644d2641e9d263e83caef28b3bf6af63b88";
      ref = "master";
    };
    deps = [
      "base"
      "scribble-lib"
      "misc1"
      "unix-socket-lib"
      "racket-doc"
      "unstable-doc"
      "unix-socket-doc"
    ];
  };
  "graphite" = {
    src = fetchGit {
      url = "https://github.com/ralsei/graphite.git";
      rev = "58a7bc54345e9b0bc5ac080401757f76d3999b0c";
    };
    subpath = "graphite";
    deps = [
      "graphite-lib"
      "graphite-doc"
      "graphite-tutorial"
    ];
  };
  "unmozlz4" = {
    src = fetchGit {
      url = "https://git.sr.ht/~nut/racket-unmozlz4#main";
      rev = "09f3608beb15b618bcddf3220a3dd505113cc608";
      ref = "main";
    };

    deps = [
      "base"
      "binaryio-lib"
      "lz4-lib"
    ];
  };
  "xxhash-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-lz4.git";
      rev = "df811b1166b22221f641b3c78171cd31f4e2ba53";
    };
    subpath = "xxhash-test";
    deps = [
      "base"
      "xxhash-lib"
      "rackcheck-lib"
      "rackunit-lib"
    ];
  };
  "racket-quandl" = {
    src = fetchGit {
      url = "https://github.com/malcolmstill/racket-quandl";
      rev = "2bc231f7981dfcd663c87ce46b4ff0876723a7ef";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "forged-ocelot" = {
    src = fetchGit {
      url = "https://github.com/cemcutting/forged-ocelot.git";
      rev = "f28a7012348b9096ede5cb1da64ef6544686b205";
    };

    deps = [
      "base"
      "rackunit-lib"
      "sandbox-lib"
      "rosette"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "flexpr" = {
    src = fetchGit {
      url = "https://github.com/greghendershott/flexpr";
      rev = "a547ca94094a2090f12b0028b634da0b08d42df8";
    };

    deps = [
      "base"
      "racket"
      "at-exp-lib"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "todo-txt" = {
    src = fetchGit {
      url = "https://git.sr.ht/~sschwarzer/todo-txt#v0.5.0";
      rev = "cab12c9d480d16fdc1447caa55b50fff4a59bcdc";
      ref = "v0.5.0";
    };

    deps = [
      "base"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "al2-test-runner"
      "raco-exe-multitarget"
    ];
  };
  "macrotypes-nonstx" = {
    src = fetchGit {
      url = "https://github.com/macrotypefunctors/macrotypes-nonstx.git";
      rev = "b3f9839b6f8dcce4bf3fe9c15d5017214300924d";
    };

    deps = [
      "base"
      "agile"
      "rackunit-lib"
      "syntax-classes-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "bencode" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://www.neilvandyke.org/racket/bencode.zip";
      sha256 = "18rvsph78f1kwgkhxj5xgq0j9qy1bcx6ps3i4rx4fnhnj55xfw4z";
    };
    deps = [
      "base"
      "mcfly"
      "racket-doc"
      "scribble-lib"
      "overeasy"
    ];
  };
  "ipoe" = {
    src = fetchGit {
      url = "https://github.com/bennn/ipoe";
      rev = "6663c215361064bf3a56fb933ccf5f6276b7de50";
    };
    subpath = "ipoe";
    deps = [
      "base"
      "basedir"
      "db-lib"
      "html-lib"
      "html-parsing"
      "levenshtein"
      "rackunit-lib"
      "readline-lib"
      "reprovide-lang"
      "sxml"
      "basedir"
      "net-doc"
      "racket-doc"
      "rackunit-abbrevs"
      "rackunit-lib"
      "scribble-doc"
      "scribble-lib"
    ];
  };
  "slideshow-text-style" = {
    src = fetchGit {
      url = "https://github.com/takikawa/slideshow-text-style";
      rev = "a59ce57a693697a79c34344d2feca0cd0ffd2202";
    };

    deps = [
      "base"
      "pict-lib"
      "slideshow-lib"
      "scribble-text-lib"
      "scribble-lib"
      "at-exp-lib"
      "pict-doc"
      "slideshow-doc"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "cs2500f16-jsonlab" = {
    src = fetchGit {
      url = "https://github.com/rmacnz/cs2500jsonlab";
      rev = "34e5dceecc4b8c43428414b3da7befdb36c123d6";
    };

    deps = [
      "base"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "gref-test" = {
    src = fetchGit {
      url = "https://github.com/usaoc/gref.git";
      rev = "4520bf033c74b40c830400b65ac0cbb1d6b8623c";
      ref = "master";
    };
    subpath = "gref-test";
    deps = [
      "base"
      "doc-coverage"
      "expect"
      "rackunit-lib"
      "rackunit-spec"
      "gref-doc"
      "gref-lib"
    ];
  };
  "relation-doc" = {
    src = fetchGit {
      url = "https://github.com/countvajhula/relation.git";
      rev = "a88f119147d054f00b02a6deac4f2fc644780b75";
      ref = "master";
    };
    subpath = "relation-doc";
    deps = [
      "base"
      "relation-lib"
      "scribble-lib"
      "scribble-abbrevs"
      "racket-doc"
      "arguments"
      "collections-lib"
      "functional-lib"
      "algebraic"
      "sugar"
      "fancy-app"
      "collections-doc"
      "functional-doc"
      "rackjure"
      "threading-doc"
      "sandbox-lib"
    ];
  };
  "keyring-secret-service-lib" = {
    src = fetchGit {
      url = "https://github.com/samdphillips/racket-keyring.git";
      rev = "5233dface521aa8dfa341466f67d791dd20a352a";
      ref = "release";
    };
    subpath = "keyring-secret-service-lib";
    deps = [
      "base"
      "dbus"
      "keyring-lib"
      "base"
    ];
  };
  "parendown-doc" = {
    src = fetchGit {
      url = "https://github.com/lathe/parendown-for-racket.git";
      rev = "bbd36ea3fec9b78b3ccc05dcf20341f768a7f4ac";
      ref = "main";
    };
    subpath = "parendown-doc";
    deps = [
      "base"
      "parendown-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "microformats" = {
    src = fetchGit {
      url = "https://github.com/jacobwhall/racket-mf2.git";
      rev = "6724520dfc5ec25bf53df5d38a39d3c70302f61a";
    };

    deps = [
      "base"
      "sxml"
      "gregor"
      "html-parsing"
      "rackunit-lib"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
    ];
  };
  "logbook" = {
    src = fetchGit {
      url = "https://github.com/tonyg/racket-logbook";
      rev = "6772003b5e8663426559d245451b82ec748c07c7";
    };

    deps = [
      "base"
      "compatibility-lib"
      "plot-gui-lib"
      "plot-lib"
      "web-server-lib"
      "csv-reading"
    ];
  };
  "gtp-benchmarks" = {
    src = fetchGit {
      url = "https://github.com/utahplt/gtp-benchmarks.git";
      rev = "e2014d20395ea874cea1464e2c83f0f3fcfaf037";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "require-typed-check"
      "scribble-lib"
      "racket-doc"
      "rackunit-lib"
      "typed-racket-doc"
      "at-exp-lib"
      "gtp-util"
      "pict-lib"
      "scribble-abbrevs"
      "syntax-sloc"
      "with-cache"
    ];
  };
  "scribble-lp2-manual" = {
    src = fetchGit {
      url = "https://github.com/benknoble/scribble-lp2-manual.git#main";
      rev = "b45fae26b110798780f8717a9a5cee55306918aa";
      ref = "main";
    };

    deps = [
      "base"
      "at-exp-lib"
      "scribble-lib"
      "scribble-lib"
      "scribble-doc"
      "racket-doc"
    ];
  };
  "apply" = {
    src = fetchGit {
      url = "https://github.com/zaoqil/apply.git";
      rev = "1d7d138179cd02e2b10eab29748d08b76d91c69d";
    };
    subpath = "apply";
    deps = [
      "racket"
    ];
  };
  "redex-aam-tutorial" = {
    src = fetchGit {
      url = "https://github.com/dvanhorn/redex-aam-tutorial.git";
      rev = "1fdb038225b03d5ea9cf4258503cb8c83f108671";
    };

    deps = [
      "base"
      "redex-lib"
      "scheme-lib"
      "scribble-lib"
      "racket-doc"
      "redex-doc"
      "redex-gui-lib"
      "sandbox-lib"
    ];
  };
  "expander" = {
    src = fetchGit {
      url = "https://github.com/racket/racket/";
      rev = "5a6921d77bb29363ecd81e56f8ec1b964b60cdf9";
    };
    subpath = "racket/src/expander";
    deps = [
      "base"
      "zo-lib"
      "compiler-lib"
      "at-exp-lib"
    ];
  };
  "gui-aarch64-macosx" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-aarch64-macosx.zip";
      sha256 = "14qnwlycx0y9x6xyg9s1sapifb91d8sqrxlkcy1cpag63jxd9pm2";
    };
    deps = [
      "base"
    ];
  };
  "rackunit-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-doc.zip";
      sha256 = "0adir9vc7cwkr6lp2b8n2v59hh5l0bxf99vsf7w8aczqwx4h49qm";
    };
    deps = [
      "base"
      "racket-index"
      "racket-doc"
      "rackunit-gui"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "nvim-client" = {
    src = fetchGit {
      url = "https://gitlab.com/HiPhish/neovim.rkt.git";
      rev = "c7d0a3d7ceaebd59955e6d2aee16352098c82d8a";
    };
    subpath = "nvim-client";
    deps = [
      "base"
      "msgpack"
      "unix-socket-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "scribble-lib"
      "unix-socket-doc"
      "rackunit-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "template" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-template.git";
      rev = "7e8cd438cdc168b74b1a23721d3410be330de209";
    };

    deps = [
      "base"
      "debug-scopes"
      "racket-doc"
      "rackunit-lib"
      "sandbox-lib"
      "scribble-lib"
    ];
  };
  "binfmt" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-binfmt.git";
      rev = "dbd7bbe72ad734687bd72241e4528d934ae3f4aa";
    };
    subpath = "binfmt";
    deps = [
      "base"
      "binfmt-lib"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "req" = {
    src = fetchGit {
      url = "https://gitlab.com/xgqt/racket-req.git";
      rev = "4826c86164a2713be161a7e9a8e952c042ef5f75";
    };
    subpath = "src/req";
    deps = [
      "base"
      "req-doc"
      "req-lib"
      "req-test"
    ];
  };
  "postmark" = {
    src = fetchGit {
      url = "https://github.com/jbclements/postmark";
      rev = "6204838d15c5de48389a2a45ee9158493cc76bc8";
    };

    deps = [
      "base"
      "typed-racket-lib"
      "typed-racket-more"
      "racket-doc"
      "rackunit-lib"
      "scribble-lib"
    ];
  };
  "mvar-lib" = {
    src = fetchGit {
      url = "https://github.com/lexi-lambda/racket-mvar.git";
      rev = "aac2876805fd79257b4076b750f5b8a16667f595";
    };
    subpath = "mvar-lib";
    deps = [
      "base"
    ];
  };
  "syntax-macro-lang" = {
    src = fetchGit {
      url = "https://github.com/AlexKnauth/syntax-macro-lang";
      rev = "d20497348015aecb309bdddd29cebea4a0b35664";
    };

    deps = [
      "base"
    ];
  };
  "option-contract-doc" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/option-contract-doc.zip";
      sha256 = "0arxbj6xcd4xqlbd1l7srfhd39jl3mbzcbbz7xvx4h1vbq2nvjrf";
    };
    deps = [
      "base"
      "option-contract-lib"
      "scribble-lib"
      "racket-doc"
    ];
  };
  "json-lexer-test" = {
    src = fetchGit {
      url = "https://github.com/Bogdanp/racket-json-lexer.git";
      rev = "d3b61463971d495d3b7ae834f2c3256faf2ed593";
    };
    subpath = "json-lexer-test";
    deps = [
      "base"
      "json-lexer-lib"
      "rackunit-lib"
    ];
  };
  "texmath" = {
    src = fetchGit {
      url = "https://github.com/dedbox/racket-texmath.git";
      rev = "9c775542b5473ed6aeedc7c45ecc6726fbd483fc";
    };

    deps = [
      "base"
      "functional-lib"
      "megaparsack-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
  };
  "racket-test-extra" = {
    src = fetchzip {
      stripRoot = false;
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-test-extra.zip";
      sha256 = "034qn5y056wkgxm24rjgir29hfkwn9ab3yn9a5ang3j4hfvzrqxi";
    };
    deps = [
      "base"
      "drracket-tool-text-lib"
      "redex-lib"
      "scheme-lib"
      "rackunit-lib"
      "serialize-cstruct-lib"
    ];
  };
  "r16" = {
    src = fetchGit {
      url = "https://git.sr.ht/~williewillus/r16";
      rev = "8874eed789d005f9c2eba3b3412682f22164c58f";
    };

    deps = [
      "base"
      "dbg"
      "racket-cord"
      "sandbox-lib"
      "slideshow-lib"
      "srfi-lite-lib"
      "threading-lib"
      "web-server-lib"
      "racket-doc"
      "draw-lib"
      "rackunit-lib"
      "scribble-lib"
      "threading-doc"
    ];
  };
  "lambdajam-2015-racket-pl-pl" = {
    src = fetchGit {
      url = "https://github.com/rfindler/lambdajam-2015-racket-pl-pl";
      rev = "4c9001dca9fb72c885d8cc1bef057ac8f56c24d0";
    };

    deps = [
      "base"
      "gui-lib"
      "lazy"
      "parser-tools-lib"
      "rackunit-lib"
      "scheme-lib"
      "schemeunit"
      "slideshow-lib"
      "typed-racket-lib"
      "lang-slide"
    ];
  };
  "video-samples" = {
    src = fetchGit {
      url = "https://github.com/videolang/test-samples";
      rev = "6ac1cfc77152350d1ce55738447350ae0d43cf5d";
    };

    deps = [
      "base"
      "rackunit-lib"
      "draw-lib"
      "gui-lib"
      "pict-lib"
      "video"
    ];
  };
  "graphite-test" = {
    src = fetchGit {
      url = "https://github.com/ralsei/graphite.git";
      rev = "58a7bc54345e9b0bc5ac080401757f76d3999b0c";
    };
    subpath = "graphite-test";
    deps = [
      "draw-lib"
      "plot-gui-lib"
      "base"
      "data-frame"
      "graphite-lib"
      "plot-lib"
      "pict-lib"
      "rackunit-lib"
    ];
  };
  "tzinfo" = {
    src = fetchGit {
      url = "https://github.com/97jaz/tzinfo.git";
      rev = "2f812283d9c90040aecb3c7e2ed2edf93a3720de";
    };

    deps = [
      "base"
      "cldr-core"
      "rackunit-lib"
      "tzdata"
      "racket-doc"
      "scribble-lib"
    ];
  };
  "libvid-i386-win32-0-2" = {
    src = fetchGit {
      url = "https://github.com/videolang/native-pkgs.git";
      rev = "dfe1d5cb7271b1657bbde9c8f67ee9c5a513a9c7";
    };
    subpath = "libvid-i386-win32";
    deps = [
      "base"
    ];
  };
  "redex-abbrevs-lib" = {
    src = fetchGit {
      url = "https://github.com/bennn/redex-abbrevs.git";
      rev = "9e08f5a3ea0c2b70c5324c73969397c161a624df";
    };
    subpath = "redex-abbrevs-lib";
    deps = [
      "redex-lib"
      "base"
      "rackunit-lib"
    ];
  };
}
