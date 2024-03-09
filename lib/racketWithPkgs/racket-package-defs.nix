# racket package definitions
# NOTE: These are not builds or derivations, but simply
#       definitions for each package to help determine
#       dependencies
{ fetchzip, fetchFromGitHub }:
let
  # Fetch wrapper so I don't have to repeat stripRoot
  fetchRacketCatalogSrc = { url, sha256 }: fetchzip {
    inherit url sha256;
    stripRoot = false;
  };
in
{
  "mario" = {
    src = fetchFromGitHub {
      owner = "mlang";
      repo = "mario";
      rev = "4604f58610230176abdde0ffca38c9df77810a49";
      sha256 = "sha256-+gFfGIvNyjR1ZEYyECVSpmGQpOHS2jJfHWCaFbK0Z0c=";
    };
  };
  "sicp" = {
    deps = [
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
    src = fetchFromGitHub {
      owner = "sicp-lang";
      repo = "sicp";
      rev = "61493866c871233ff9fc1f3a58950d405e7ec70d";
      sha256 = "sha256-sdlzwYp79+aN9wRl3pwWkZDnKh1Sbbdbzx6YfeDiDXU=";
    };
  };
  "testing-util-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/testing-util-lib.zip";
      sha256 = "sha256-HAr1N69fiLAbmwbH2Dr03Ofm9SBq8zfbYgOfX2pPKNA=";
    };
  };
  "rackunit-lib" = {
    deps = [
      "testing-util-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-lib.zip";
      sha256 = "sha256-toT/6+UrA8JXRTDEShiMaOqzRc5yUYUDVoxUKT5ssdo=";
    };
  };
  "draw-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-lib.zip";
      sha256 = "sha256-ZlepUOW/VSn9sSFgSbZuPrL2vFeOViSRlA5NBZl9gQE=";
    };
  };
  "r5rs-lib" = {
    deps = [
      "scheme-lib"
      "compatibility-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r5rs-lib.zip";
      sha256 = "sha256-EKth+dASO2bByUgGR/qkRfc4TYOusdHltlmOzexkseE=";
    };
  };
  "r5rs-doc" = {
    deps = [
      "mzscheme-doc"
      "scheme-lib"
      "scribble-lib"
      "r5rs-lib"
      "compatibility-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r5rs-doc.zip";
      sha256 = "sha256-lFRiB9Mj7ejMnqO/F9JKLVm/rKCJdk21pOFFyamw6i8=";
    };
  };
  "scheme-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scheme-lib.zip";
      sha256 = "sha256-V6r2Mjuexq4jKr2LZ8LOSnNWv1AiD9crD/ysNBlECzk=";
    };
  };
  "net-lib" = {
    deps = [
      "srfi-lite-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-lib.zip";
      sha256 = "sha256-JaFbzAFw+6j+CxasRKpcJv9GJiGcBvDAAZDtVDA+Uhk=";
    };
  };
  "gui-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-doc.zip";
      sha256 = "sha256-nGO/1hffNlUE4PyLMAKacCaB9enJoNnxJTAp2VzsLME=";
    };
  };
  "syntax-color-doc" = {
    deps = [
      "gui-doc"
      "scribble-doc"
      "gui-lib"
      "scribble-lib"
      "racket-doc"
      "syntax-color-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color-doc.zip";
      sha256 = "sha256-LgiItx8juY/PDsQNrssfTsxLzukb747IkUaG9ejrf1s=";
    };
  };
  "at-exp-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/at-exp-lib.zip";
      sha256 = "sha256-jCJfW+MCFSgRUlQHRJivnpgAgZ+ycCny30v2q63upAg=";
    };
  };
  "draw-doc" = {
    deps = [
      "gui-doc"
      "pict-doc"
      "at-exp-lib"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "draw-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/draw-doc.zip";
      sha256 = "sha256-oQaLYZXBJA1nvM0aD95mG4tgUp4ngxKQoWGPncn94X0=";
    };
  };
  "pict-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-doc.zip";
      sha256 = "sha256-eoxSwYEDN0W7gGw2IM/BHk/MFLVciTnTcBdYttJDMLk=";
    };
  };
  "mzscheme-doc" = {
    deps = [
      "compatibility-lib"
      "r5rs-doc"
      "r5rs-lib"
      "racket-doc"
      "scheme-lib"
      "scheme-doc"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mzscheme-doc.zip";
      sha256 = "sha256-5kYdICmB+jj4ZSAYh4TyX6DIe7TOFyWl7SW+w298D2Q=";
    };
  };
  "scheme-doc" = {
    deps = [
      "scheme-lib"
      "net-lib"
      "sandbox-lib"
      "scribble-lib"
      "racket-index"
      "racket-doc"
      "gui-lib"
      "gui-doc"
      "compatibility-doc"
    ];
    src = fetchFromGitHub {
      owner = "racket";
      repo = "racket";
      rev = "35f779d15604d8ab458ba0bc49a673947d0d031b";
      sha256 = "sha256-2N8Acw27Dw0mHH7Gd/+tHymQ/qQWEW3HOuyfFgMshxo=";
    };
    subpath = "pkgs/scheme-doc";
  };
  "compatibility-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-doc.zip";
      sha256 = "sha256-ivqzrWn1/Fgeqa59mMWko1GjzbbLHeOrOO+TxXBUPZ0=";
    };
  };
  "data-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-doc.zip";
      sha256 = "sha256-HL1wDWhPMLcfdqBaFV73zUxlNpj7fNfWcRbqMwmhIKs=";
    };
  };
  "math-lib" = {
    deps = [
      "r6rs-lib"
      "typed-racket-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-lib.zip";
      sha256 = "sha256-YyL4hzLcqGAVuoS07Cq5xt1EQ1LrOFnmMBEVSW409wM=";
    };
  };
  "r6rs-lib" = {
    deps = [
      "scheme-lib"
      "r5rs-lib"
      "compatibility-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-lib.zip";
      sha256 = "sha256-+QblpPsVbI0z0BI7/PDp56vGHwnQBvXjtq+PfZmuCEY=";
    };
  };
  "r6rs-doc" = {
    deps = [
      "racket-index"
      "r5rs-doc"
      "scribble-lib"
      "r6rs-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-doc.zip";
      sha256 = "sha256-D/mDyLG4jgfGLEoumze2+i7+X8w2sSH0yIUITOoi5jw=";
    };
  };
  "math-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-doc.zip";
      sha256 = "sha256-gYkVeiN7fHDnuUqy5sHPkHKRiIImEzeVyMDK2xvLGsE=";
    };
  };
  "typed-racket-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-lib.zip";
      sha256 = "sha256-8FnFEBhFiFzgURajCdheQ8fcGmoVxgu9NXfaYb8Ivqs=";
    };
  };
  "typed-racket-doc" = {
    deps = [
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
      "racket-doc"
      "draw-lib"
      "web-server-doc"
      "scheme-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-doc.zip";
      sha256 = "sha256-R0tQvGoO0vOvtQRqtFimubXj3O1b4RyPWR1KZKmFZ5o=";
    };
  };
  "typed-racket-compatibility" = {
    deps = [
      "scheme-lib"
      "typed-racket-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-compatibility.zip";
      sha256 = "sha256-KqoGMP6W9aAbnY/5NzxFR3npM5Rk2FqcxD0u641JWG4=";
    };
  };
  "net-cookies-doc" = {
    deps = [
      "net-cookies-lib"
      "racket-doc"
      "web-server-lib"
      "web-server-doc"
      "net-doc"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-cookies-doc.zip";
      sha256 = "sha256-W3nXtEuwr8Uz6PJI9J/LyJJg8DvXG0CJqItmRfI8TtA=";
    };
  };
  "net-cookies-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-cookies-lib.zip";
      sha256 = "sha256-EQ5sGc0LAOtAm3zLXjDZmV8irA7/w2FFg5N1XJOdt6k=";
    };
  };
  "plot-gui-lib" = {
    deps = [
      "plot-lib"
      "math-lib"
      "gui-lib"
      "snip-lib"
      "typed-racket-lib"
      "typed-racket-more"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-gui-lib.zip";
      sha256 = "sha256-hJkokpyYmWi0cmvU9vZOSmKkeMK7Xg9/sdQYPq40bUQ=";
    };
  };
  "typed-racket-more" = {
    deps = [
      "srfi-lite-lib"
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-more.zip";
      sha256 = "sha256-ATmKagP7I0DJ9uft8seri2Tqtqzdh6+OnzkBmnpV5fg=";
    };
  };
  "images-lib" = {
    deps = [
      "draw-lib"
      "typed-racket-lib"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-lib.zip";
      sha256 = "sha256-B5wpUTrWLmaf9xU4g0Yn/Gx1/lg1mfdfEXs94OBNp0M=";
    };
  };
  "rackunit-typed" = {
    deps = [
      "racket-index"
      "rackunit-gui"
      "rackunit-lib"
      "typed-racket-lib"
      "testing-util-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-typed.zip";
      sha256 = "sha256-UrQp7qfZOpOYrLym9aQhnUA7YjTiawD3TbbbO3Vep6U=";
    };
  };
  "plot-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-doc.zip";
      sha256 = "sha256-FE7RFauqreGPoTlyROxC3Y1EjdW/qGhHvn1u29kMiEU=";
    };
  };
  "srfi-doc" = {
    deps = [
      "mzscheme-doc"
      "scheme-doc"
      "scheme-lib"
      "scribble-lib"
      "srfi-lib"
      "racket-doc"
      "racket-index"
      "compatibility-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-doc.zip";
      sha256 = "sha256-kHSSZ897qmESZLmSpy54+RQPglXUH2tTicyTh0WTMTI=";
    };
  };
  "srfi-lib" = {
    deps = [
      "scheme-lib"
      "srfi-lite-lib"
      "r6rs-lib"
      "compatibility-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-lib.zip";
      sha256 = "sha256-OYMawhLQX+KvLpGATUqy5ugxSjXASuBBMJQQ/IfIiww=";
    };
  };
  "plot-compat" = {
    deps = [
      "plot-gui-lib"
      "draw-lib"
      "plot-lib"
      "snip-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-compat.zip";
      sha256 = "sha256-vTGIs71P9ZefzLXEdQjyBGRoa7qMwuAUiFPbU7Cv4RI=";
    };
  };
  "db-doc" = {
    deps = [
      "srfi-lite-lib"
      "web-server-doc"
      "scribble-lib"
      "sandbox-lib"
      "web-server-lib"
      "db-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-doc.zip";
      sha256 = "sha256-yFeBy5FMt7X4JS/0uEit+ej/hD9Vm1bzd0XFBfxLDoE=";
    };
  };
  "db-lib" = {
    deps = [
      "srfi-lite-lib"
      "unix-socket-lib"
      "sasl-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-lib.zip";
      sha256 = "sha256-QMuMzJzl9zThzf8pk3SlhwXYflpDdzGsf6SAYuLXuus=";
    };
  };
  "sasl-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sasl-lib.zip";
      sha256 = "sha256-RoS6UXZUPL93qht8xg0oVGnMn3GS6rHMkvFFmXRL+n0=";
    };
  };
  "unix-socket-lib" = {
    deps = [
      "net-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/unix-socket-lib.zip";
      sha256 = "sha256-dj8sQ5VX3DsoZPu+lbgN0+8lzcoC1pUpmOBr52R3/W8=";
    };
  };
  "web-server-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-doc.zip";
      sha256 = "sha256-YVMMqr95OjLtWFs/3lWpLG5AQQ18mb4FZhMBEgs8XFI=";
    };
  };
  "web-server-lib" = {
    deps = [
      "srfi-lite-lib"
      "net-lib"
      "net-cookies-lib"
      "scribble-text-lib"
      "parser-tools-lib"
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-lib.zip";
      sha256 = "sha256-KMdTXxnsEwyMck5gSokPl9zbTelrnrSEUmL4d+6Pk0s=";
    };
  };
  "plot-lib" = {
    deps = [
      "draw-lib"
      "pict-lib"
      "db-lib"
      "srfi-lite-lib"
      "typed-racket-lib"
      "typed-racket-more"
      "compatibility-lib"
      "math-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-lib.zip";
      sha256 = "sha256-uidxjxnhWIvRdH3556zhVBXlnjv74w10k/QlSkeRhU8=";
    };
  };
  "data-enumerate-lib" = {
    deps = [
      "data-lib"
      "math-lib"
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-enumerate-lib.zip";
      sha256 = "sha256-CAFIznQs2ZH0uO+9o0Ard2bCugfRe1x8J5PZ+CL/FtE=";
    };
  };
  "pconvert-lib" = {
    deps = [
      "compatibility-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pconvert-lib.zip";
      sha256 = "sha256-bJvQZE7qRtxR7CrU0UFoBYmJKLOJMFfmSAE2i7PHAJs=";
    };
  };
  "slideshow-doc" = {
    deps = [
      "scheme-lib"
      "draw-doc"
      "gui-doc"
      "pict-doc"
      "scribble-doc"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
      "slideshow-lib"
      "racket-doc"
      "at-exp-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-doc.zip";
      sha256 = "sha256-w3y6VLzDcFI/NQUtlEyUjjMMauDOzP8i4i8UtTT3Av8=";
    };
  };
  "slideshow-lib" = {
    deps = [
      "scheme-lib"
      "compatibility-lib"
      "draw-lib"
      "pict-lib"
      "gui-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-lib.zip";
      sha256 = "sha256-w2XQ3hHR3Y/gGDLOiUzrfz8XhK0cVuplEP5XQ6iTVtc=";
    };
  };
  "gui-lib" = {
    deps = [
      "srfi-lite-lib"
      "data-lib"
      "icons"
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
      "at-exp-lib"
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-lib.zip";
      sha256 = "sha256-kgrPGaE0UlBCWD+0WKDldusyeG2Ca11EThZKIPpRxS4=";
    };
  };
  "pict-lib" = {
    deps = [
      "scheme-lib"
      "compatibility-lib"
      "draw-lib"
      "syntax-color-lib"
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-lib.zip";
      sha256 = "sha256-zGbJB2TzuWYVTcbp1e2oHWu7CanQ0PFzUA4F94xSLxI=";
    };
  };
  "scribble-lib" = {
    deps = [
      "scheme-lib"
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-lib.zip";
      sha256 = "sha256-D46AmJT+xiu4lA4W1DSHTtOb0O5mwA7oODWXkju6XiI=";
    };
  };
  "scribble-html-lib" = {
    deps = [
      "scheme-lib"
      "at-exp-lib"
      "scribble-text-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-html-lib.zip";
      sha256 = "sha256-v5FxevfNIUpanDYX1DdJadRWj+eiQlTbQFa3hiEQQfk=";
    };
  };
  "scribble-doc" = {
    deps = [
      "racket-index"
      "net-doc"
      "scheme-lib"
      "draw-doc"
      "at-exp-lib"
      "compatibility-lib"
      "draw-lib"
      "pict-lib"
      "pict-doc"
      "sandbox-lib"
      "scribble-lib"
      "scribble-text-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-doc.zip";
      sha256 = "sha256-kqjFKLUS8JUcdpl5HHZfDxZybMwPCkNfFrzjxUXr1KI=";
    };
  };
  "scribble-text-lib" = {
    deps = [
      "scheme-lib"
      "at-exp-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-text-lib.zip";
      sha256 = "sha256-F2CsZnORr73/6SCxDH09Y/9ci1tVdl82oI9Ys5l9sVY=";
    };
  };
  "racket-doc" = {
    deps = [
      "scheme-lib"
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-doc.zip";
      sha256 = "sha256-qauHoQiaDkGYjJp850bUgaxkHu8UEW/rqndhlejJvF0=";
    };
  };
  "xrepl-doc" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-doc.zip";
      sha256 = "sha256-D66iTCdGe7g5YytRJE2HHHovWNQ23Nlrez5G16xP0ps=";
    };
  };
  "xrepl-lib" = {
    deps = [
      "readline-lib"
      "scribble-text-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-lib.zip";
      sha256 = "sha256-Qcw798UCFLW+MY7Qr7vtDgjAdtFabRLMnb3MVwgPBxY=";
    };
  };
  "profile-doc" = {
    deps = [
      "scribble-lib"
      "profile-lib"
      "errortrace-doc"
      "errortrace-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-doc.zip";
      sha256 = "sha256-N8DCQYsjMtZpLzqrDFPO9nEdrNG80ktsSnXuGF4OJ/M=";
    };
  };
  "profile-lib" = {
    deps = [
      "errortrace-lib"
      "at-exp-lib"
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-lib.zip";
      sha256 = "sha256-Arnm/lTkhk+5IgUKPV4Fiu5lv7BiTqXR7EWVn+AL/8k=";
    };
  };
  "macro-debugger" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/macro-debugger.zip";
      sha256 = "sha256-H6R1zP0m5XBmlKQYHKgK3c6mA6V1lEG7ivhSctZ2V1s=";
    };
  };
  "images-gui-lib" = {
    deps = [
      "draw-lib"
      "gui-lib"
      "string-constants-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-gui-lib.zip";
      sha256 = "sha256-jeXOCi/WD99qgeO2ijF3uOt4GEnqY643Kb0jwITWuuk=";
    };
  };
  "macro-debugger-text-lib" = {
    deps = [
      "db-lib"
      "class-iop-lib"
      "parser-tools-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/macro-debugger-text-lib.zip";
      sha256 = "sha256-NhYHU2XFarhpsX5X23mLL8z/WdycKp67aezHm1bvxro=";
    };
  };
  "planet-doc" = {
    deps = [
      "planet-lib"
      "scribble-lib"
      "racket-doc"
      "scribble-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-doc.zip";
      sha256 = "sha256-KN7ZlXpIO4hMQzUdMkh0qk8JFK0v4vzs2Ep0wo/Jg0Q=";
    };
  };
  "planet-lib" = {
    deps = [
      "srfi-lite-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-lib.zip";
      sha256 = "sha256-65f/dQiXW4HBJ66U12rYZpkJWAuDIiJdDtnc/JNKbcA=";
    };
  };
  "net-doc" = {
    deps = [
      "compatibility-lib"
      "net-lib"
      "racket-doc"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-doc.zip";
      sha256 = "sha256-a6zpYkGuvs1eKyM0r+2UXy8jX2IJXrkTs7g7B0yKBmo=";
    };
  };
  "racket-index" = {
    deps = [
      "scribble-lib"
      "scheme-lib"
      "at-exp-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-index.zip";
      sha256 = "sha256-DgZgoQUNgT58sTOvKRTjhqUS2Rk1VWVDylXG8AjTa48=";
    };
  };
  "rackunit-doc" = {
    deps = [
      "racket-index"
      "racket-doc"
      "rackunit-gui"
      "rackunit-lib"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-doc.zip";
      sha256 = "sha256-FScCSef4M4X4cXqn5PoCtECYyhYWLXGpyZOzw3bKsSk=";
    };
  };
  "rackunit-gui" = {
    deps = [
      "rackunit-lib"
      "class-iop-lib"
      "data-lib"
      "gui-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-gui.zip";
      sha256 = "sha256-CVSx6XCw6IGYp0fg1xr5KrlC4+yb0yet9FJ56T/m5Lw=";
    };
  };
  "class-iop-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/class-iop-lib.zip";
      sha256 = "sha256-ZWEnMlQn0sBbutXjG3jRXxSLadJenYxcKjBrgDLjDgs=";
    };
  };
  "errortrace-doc" = {
    deps = [
      "racket-doc"
      "errortrace-lib"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/errortrace-doc.zip";
      sha256 = "sha256-OtHo/jBPyjnNGIjrslNvaqOvW9IFB64HK2GMrCbSwfg=";
    };
  };
  "errortrace-lib" = {
    deps = [
      "source-syntax"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/errortrace-lib.zip";
      sha256 = "sha256-VA3OJiNqZT6y/s/peFXk85oDeB5a1XD53mtxhLrAvqU=";
    };
  };
  "source-syntax" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/source-syntax.zip";
      sha256 = "sha256-LSAzilV39KA6wDopCwmdUTXLF4g+B2n2hAXhHnrjRkY=";
    };
  };
  "readline-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/readline-lib.zip";
      sha256 = "sha256-R5z/7QI+n/odq2LMz7zTwNDT33x7DQWVraJgVkx2l88=";
    };
  };
  "readline-doc" = {
    deps = [
      "scribble-lib"
      "readline-lib"
      "racket-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/readline-doc.zip";
      sha256 = "sha256-i1MVKiRD99UKDmxcGzgOTVL79DO/ZMnYe3g8T9WQQkY=";
    };
  };
  "future-visualizer" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer.zip";
      sha256 = "sha256-1JLyRJZKcqXNvyD1kYpNBBAb/jGBpzlr30hxve4SUEs=";
    };
  };
  "future-visualizer-pict" = {
    deps = [
      "data-lib"
      "draw-lib"
      "pict-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer-pict.zip";
      sha256 = "sha256-Pk4k9KlElJShqpw1pQ7F9/mv/haAZzOqBcKcspB/sqU=";
    };
  };
  "distributed-places-doc" = {
    deps = [
      "distributed-places-lib"
      "racket-doc"
      "sandbox-lib"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distributed-places-doc.zip";
      sha256 = "sha256-cNLBAioeIHbcBAJgNsrnZA54r+iguDETHvDoyzWOaEc=";
    };
  };
  "distributed-places-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/distributed-places-lib.zip";
      sha256 = "sha256-OhB1KH3dVzRKQKvGA7spMGF5pypc+XSPBT3H9zJ/pwY=";
    };
  };
  "serialize-cstruct-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/serialize-cstruct-lib.zip";
      sha256 = "sha256-+FuIdYg9kurU5GHw2E79L/pA/gbSKl2AtHaj7r7cJL0=";
    };
  };
  "cext-lib" = {
    deps = [
      "compiler-lib"
      "dynext-lib"
      "scheme-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/cext-lib.zip";
      sha256 = "sha256-0+cyKEfo18Sfot73OxiPDjEdFYAWD8Qi+6yEsLEssJ0=";
    };
  };
  "compiler-lib" = {
    deps = [
      "scheme-lib"
      "rackunit-lib"
      "zo-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compiler-lib.zip";
      sha256 = "sha256-3G/V77rYqdXA/R1d/VW3wtXtP64FLq5di0LV8pb1Pi4=";
    };
  };
  "zo-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/zo-lib.zip";
      sha256 = "sha256-KZ9+huYN3iC4aDW7cQU7X8yuNpDiy9Ad4HNj8ShE+A8=";
    };
  };
  "dynext-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/dynext-lib.zip";
      sha256 = "sha256-ltdJNyJ35OoMNJwUQmw+OVeDE8G1ZiW1x8XqbQm/TP8=";
    };
  };
  "snip-lib" = {
    deps = [
      "draw-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/snip-lib.zip";
      sha256 = "sha256-XIOgURk73xx6SnuSQ6s6uwUl0pbOuxkBtBINdp1bi+w=";
    };
  };
  "string-constants-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/string-constants-lib.zip";
      sha256 = "sha256-ENGAPxi4LaSRlPy+07oPjrefbDFUNhZiSzz392wIc30=";
    };
  };
  "syntax-color-lib" = {
    deps = [
      "parser-tools-lib"
      "option-contract-lib"
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color-lib.zip";
      sha256 = "sha256-xvGe+8D1nklOav6QFMf+aOq0ZOIIhBALBvtmy4f0qXQ=";
    };
  };
  "parser-tools-lib" = {
    deps = [
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/parser-tools-lib.zip";
      sha256 = "sha256-xm5WAXwYm1LBN/wRz8tdZ5tYxyrjHnu8EvrqhnOE2Gg=";
    };
  };
  "wxme-lib" = {
    deps = [
      "scheme-lib"
      "compatibility-lib"
      "snip-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/wxme-lib.zip";
      sha256 = "sha256-a91Lizhn85HUkeKBMszwU28PVHny3HgxJf7yyeoaZpE=";
    };
  };
  "string-constants-doc" = {
    deps = [
      "string-constants-lib"
      "racket-doc"
      "scribble-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/string-constants-doc.zip";
      sha256 = "sha256-/A8R4bkbPr958Ye86xI2J3Pe8Ljwdj6dhfVovMvkS7g=";
    };
  };
  "simple-tree-text-markup-doc" = {
    deps = [
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
    src = fetchFromGitHub {
      owner = "racket";
      repo = "simple-tree-text-markup";
      rev = "06bbcd3651e518a53cffa5f8484fe127574fed06";
      sha256 = "sha256-GX/xNDYajtFxbs3ExCGquQAGbS2bB5BCBdsu891LzTs=";
    };
    subpath = "simple-tree-text-markup-doc";
  };
  "simple-tree-text-markup-lib" = {
    src = fetchFromGitHub {
      owner = "racket";
      repo = "simple-tree-text-markup";
      rev = "06bbcd3651e518a53cffa5f8484fe127574fed06";
      sha256 = "sha256-GX/xNDYajtFxbs3ExCGquQAGbS2bB5BCBdsu891LzTs=";
    };
    subpath = "simple-tree-text-markup-lib";
  };
  "srfi-lite-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-lite-lib.zip";
      sha256 = "sha256-3qM4GvArAMbsbghS4WKyEkHRrn0CsTjHmQiCFMJpfL4=";
    };
  };
  "data-lib" = {
    deps = [
      "rackunit-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-lib.zip";
      sha256 = "sha256-B2fPE/MTmoPGMM2CsQTp1k1BgvW8EjN6ulfYDjd7bsU=";
    };
  };
  "icons" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/icons.zip";
      sha256 = "sha256-SLXHaikRojec4exACtCioPwyS0+3vLR2j7RN5algYmM=";
    };
  };
  "option-contract-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/option-contract-lib.zip";
      sha256 = "sha256-QO01/Ey9/qjMTqYdz3Ze1Pd7pv0o/DtwqBfRUiMRtEw=";
    };
  };
  "2d-lib" = {
    deps = [
      "scribble-lib"
      "syntax-color-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/2d-lib.zip";
      sha256 = "sha256-bN6igW9JI7oEBo8BcNMJq937nNsJ6jmF8RmzZumla2E=";
    };
  };
  "compatibility-lib" = {
    deps = [
      "scheme-lib"
      "net-lib"
      "sandbox-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-lib.zip";
      sha256 = "sha256-d/m1gwDa65V275xfCd9XatF+6Do+LhxSu5wM2FGrJH8=";
    };
  };
  "sandbox-lib" = {
    deps = [
      "scheme-lib"
      "errortrace-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/sandbox-lib.zip";
      sha256 = "sha256-lDf8zwHMbCsIHZfsVMprriJlIcGMCdQN1L2ST2F/ip4=";
    };
  };
  "tex-table" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/tex-table.zip";
      sha256 = "sha256-xwDrtTCyvTIBEJhH2Pepo7/cHaca7V0qXbs/eN4RCu0=";
    };
  };
}
