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
      "rackunit-lib"
      "draw-lib"
      "gui-doc"
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r5rs-lib.zip";
      sha256 = "sha256-EKth+dASO2bByUgGR/qkRfc4TYOusdHltlmOzexkseE=";
    };
  };
  "r5rs-doc" = {
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
      "snip-lib"
      "string-constants-lib"
      "syntax-color-lib"
      "wxme-lib"
      "string-constants-doc"
      "simple-tree-text-markup-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-doc.zip";
      sha256 = "sha256-nGO/1hffNlUE4PyLMAKacCaB9enJoNnxJTAp2VzsLME=";
    };
  };
  "syntax-color-doc" = {
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
      "pict-doc"
      "gui-lib"
      "pict-lib"
      "scribble-lib"
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
      "slideshow-doc"
      "slideshow-lib"
      "scribble-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-doc.zip";
      sha256 = "sha256-eoxSwYEDN0W7gGw2IM/BHk/MFLVciTnTcBdYttJDMLk=";
    };
  };
  "mzscheme-doc" = {
    deps = [
      "r5rs-lib"
      "r5rs-doc"
      "scheme-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/mzscheme-doc.zip";
      sha256 = "sha256-5kYdICmB+jj4ZSAYh4TyX6DIe7TOFyWl7SW+w298D2Q=";
    };
  };
  "scheme-doc" = {
    deps = [
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
      "pconvert-lib"
      "data-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-doc.zip";
      sha256 = "sha256-ivqzrWn1/Fgeqa59mMWko1GjzbbLHeOrOO+TxXBUPZ0=";
    };
  };
  "data-doc" = {
    deps = [
      "data-enumerate-lib"
      "plot-lib"
      "math-doc"
      "math-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-doc.zip";
      sha256 = "sha256-HL1wDWhPMLcfdqBaFV73zUxlNpj7fNfWcRbqMwmhIKs=";
    };
  };
  "math-lib" = {
    deps = [
      "r6rs-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/math-lib.zip";
      sha256 = "sha256-YyL4hzLcqGAVuoS07Cq5xt1EQ1LrOFnmMBEVSW409wM=";
    };
  };
  "r6rs-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-lib.zip";
      sha256 = "sha256-+QblpPsVbI0z0BI7/PDp56vGHwnQBvXjtq+PfZmuCEY=";
    };
  };
  "r6rs-doc" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/r6rs-doc.zip";
      sha256 = "sha256-D/mDyLG4jgfGLEoumze2+i7+X8w2sSH0yIUITOoi5jw=";
    };
  };
  "math-doc" = {
    deps = [
      "plot-doc"
      "plot-gui-lib"
      "typed-racket-doc"
      "typed-racket-lib"
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
      "net-cookies-doc"
      "r6rs-doc"
      "typed-racket-compatibility"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-doc.zip";
      sha256 = "sha256-R0tQvGoO0vOvtQRqtFimubXj3O1b4RyPWR1KZKmFZ5o=";
    };
  };
  "typed-racket-compatibility" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-compatibility.zip";
      sha256 = "sha256-KqoGMP6W9aAbnY/5NzxFR3npM5Rk2FqcxD0u641JWG4=";
    };
  };
  "net-cookies-doc" = {
    deps = [
      "net-cookies-lib"
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
      "typed-racket-more"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-gui-lib.zip";
      sha256 = "sha256-hJkokpyYmWi0cmvU9vZOSmKkeMK7Xg9/sdQYPq40bUQ=";
    };
  };
  "typed-racket-more" = {
    deps = [
      "rackunit-typed"
      "images-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/typed-racket-more.zip";
      sha256 = "sha256-ATmKagP7I0DJ9uft8seri2Tqtqzdh6+OnzkBmnpV5fg=";
    };
  };
  "images-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-lib.zip";
      sha256 = "sha256-B5wpUTrWLmaf9xU4g0Yn/Gx1/lg1mfdfEXs94OBNp0M=";
    };
  };
  "rackunit-typed" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-typed.zip";
      sha256 = "sha256-UrQp7qfZOpOYrLym9aQhnUA7YjTiawD3TbbbO3Vep6U=";
    };
  };
  "plot-doc" = {
    deps = [
      "db-doc"
      "plot-compat"
      "srfi-doc"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-doc.zip";
      sha256 = "sha256-FE7RFauqreGPoTlyROxC3Y1EjdW/qGhHvn1u29kMiEU=";
    };
  };
  "srfi-doc" = {
    deps = [
      "srfi-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-doc.zip";
      sha256 = "sha256-kHSSZ897qmESZLmSpy54+RQPglXUH2tTicyTh0WTMTI=";
    };
  };
  "srfi-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/srfi-lib.zip";
      sha256 = "sha256-OYMawhLQX+KvLpGATUqy5ugxSjXASuBBMJQQ/IfIiww=";
    };
  };
  "plot-compat" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-compat.zip";
      sha256 = "sha256-vTGIs71P9ZefzLXEdQjyBGRoa7qMwuAUiFPbU7Cv4RI=";
    };
  };
  "db-doc" = {
    deps = [
      "web-server-doc"
      "web-server-lib"
      "db-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/db-doc.zip";
      sha256 = "sha256-yFeBy5FMt7X4JS/0uEit+ej/hD9Vm1bzd0XFBfxLDoE=";
    };
  };
  "db-lib" = {
    deps = [
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/unix-socket-lib.zip";
      sha256 = "sha256-dj8sQ5VX3DsoZPu+lbgN0+8lzcoC1pUpmOBr52R3/W8=";
    };
  };
  "web-server-doc" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-doc.zip";
      sha256 = "sha256-YVMMqr95OjLtWFs/3lWpLG5AQQ18mb4FZhMBEgs8XFI=";
    };
  };
  "web-server-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/web-server-lib.zip";
      sha256 = "sha256-KMdTXxnsEwyMck5gSokPl9zbTelrnrSEUmL4d+6Pk0s=";
    };
  };
  "plot-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/plot-lib.zip";
      sha256 = "sha256-uidxjxnhWIvRdH3556zhVBXlnjv74w10k/QlSkeRhU8=";
    };
  };
  "data-enumerate-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/data-enumerate-lib.zip";
      sha256 = "sha256-CAFIznQs2ZH0uO+9o0Ard2bCugfRe1x8J5PZ+CL/FtE=";
    };
  };
  "pconvert-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pconvert-lib.zip";
      sha256 = "sha256-bJvQZE7qRtxR7CrU0UFoBYmJKLOJMFfmSAE2i7PHAJs=";
    };
  };
  "slideshow-doc" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/slideshow-doc.zip";
      sha256 = "sha256-w3y6VLzDcFI/NQUtlEyUjjMMauDOzP8i4i8UtTT3Av8=";
    };
  };
  "slideshow-lib" = {
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
      "option-contract-lib"
      "2d-lib"
      "compatibility-lib"
      "net-lib"
      "tex-table"
      "simple-tree-text-markup-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/gui-lib.zip";
      sha256 = "sha256-kgrPGaE0UlBCWD+0WKDldusyeG2Ca11EThZKIPpRxS4=";
    };
  };
  "pict-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/pict-lib.zip";
      sha256 = "sha256-zGbJB2TzuWYVTcbp1e2oHWu7CanQ0PFzUA4F94xSLxI=";
    };
  };
  "scribble-lib" = {
    deps = [
      "scribble-html-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-lib.zip";
      sha256 = "sha256-D46AmJT+xiu4lA4W1DSHTtOb0O5mwA7oODWXkju6XiI=";
    };
  };
  "scribble-html-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-html-lib.zip";
      sha256 = "sha256-v5FxevfNIUpanDYX1DdJadRWj+eiQlTbQFa3hiEQQfk=";
    };
  };
  "scribble-doc" = {
    deps = [
      "scribble-text-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-doc.zip";
      sha256 = "sha256-kqjFKLUS8JUcdpl5HHZfDxZybMwPCkNfFrzjxUXr1KI=";
    };
  };
  "scribble-text-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/scribble-text-lib.zip";
      sha256 = "sha256-F2CsZnORr73/6SCxDH09Y/9ci1tVdl82oI9Ys5l9sVY=";
    };
  };
  "racket-doc" = {
    deps = [
      "racket-index"
      "rackunit-doc"
      "errortrace-doc"
      "readline-lib"
      "readline-doc"
      "future-visualizer"
      "distributed-places-doc"
      "serialize-cstruct-lib"
      "cext-lib"
      "net-doc"
      "planet-doc"
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
      "macro-debugger"
      "profile-doc"
      "profile-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-doc.zip";
      sha256 = "sha256-D66iTCdGe7g5YytRJE2HHHovWNQ23Nlrez5G16xP0ps=";
    };
  };
  "xrepl-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/xrepl-lib.zip";
      sha256 = "sha256-Qcw798UCFLW+MY7Qr7vtDgjAdtFabRLMnb3MVwgPBxY=";
    };
  };
  "profile-doc" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-doc.zip";
      sha256 = "sha256-N8DCQYsjMtZpLzqrDFPO9nEdrNG80ktsSnXuGF4OJ/M=";
    };
  };
  "profile-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/profile-lib.zip";
      sha256 = "sha256-Arnm/lTkhk+5IgUKPV4Fiu5lv7BiTqXR7EWVn+AL/8k=";
    };
  };
  "macro-debugger" = {
    deps = [
      "images-gui-lib"
      "macro-debugger-text-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/macro-debugger.zip";
      sha256 = "sha256-H6R1zP0m5XBmlKQYHKgK3c6mA6V1lEG7ivhSctZ2V1s=";
    };
  };
  "images-gui-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/images-gui-lib.zip";
      sha256 = "sha256-jeXOCi/WD99qgeO2ijF3uOt4GEnqY643Kb0jwITWuuk=";
    };
  };
  "macro-debugger-text-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/macro-debugger-text-lib.zip";
      sha256 = "sha256-NhYHU2XFarhpsX5X23mLL8z/WdycKp67aezHm1bvxro=";
    };
  };
  "planet-doc" = {
    deps = [
      "planet-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-doc.zip";
      sha256 = "sha256-KN7ZlXpIO4hMQzUdMkh0qk8JFK0v4vzs2Ep0wo/Jg0Q=";
    };
  };
  "planet-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/planet-lib.zip";
      sha256 = "sha256-65f/dQiXW4HBJ66U12rYZpkJWAuDIiJdDtnc/JNKbcA=";
    };
  };
  "net-doc" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/net-doc.zip";
      sha256 = "sha256-a6zpYkGuvs1eKyM0r+2UXy8jX2IJXrkTs7g7B0yKBmo=";
    };
  };
  "racket-index" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/racket-index.zip";
      sha256 = "sha256-DgZgoQUNgT58sTOvKRTjhqUS2Rk1VWVDylXG8AjTa48=";
    };
  };
  "rackunit-doc" = {
    deps = [
      "rackunit-gui"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/rackunit-doc.zip";
      sha256 = "sha256-FScCSef4M4X4cXqn5PoCtECYyhYWLXGpyZOzw3bKsSk=";
    };
  };
  "rackunit-gui" = {
    deps = [
      "class-iop-lib"
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
      "errortrace-lib"
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/readline-doc.zip";
      sha256 = "sha256-i1MVKiRD99UKDmxcGzgOTVL79DO/ZMnYe3g8T9WQQkY=";
    };
  };
  "future-visualizer" = {
    deps = [
      "future-visualizer-pict"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer.zip";
      sha256 = "sha256-1JLyRJZKcqXNvyD1kYpNBBAb/jGBpzlr30hxve4SUEs=";
    };
  };
  "future-visualizer-pict" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/future-visualizer-pict.zip";
      sha256 = "sha256-Pk4k9KlElJShqpw1pQ7F9/mv/haAZzOqBcKcspB/sqU=";
    };
  };
  "distributed-places-doc" = {
    deps = [
      "distributed-places-lib"
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
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/cext-lib.zip";
      sha256 = "sha256-0+cyKEfo18Sfot73OxiPDjEdFYAWD8Qi+6yEsLEssJ0=";
    };
  };
  "compiler-lib" = {
    deps = [
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
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/syntax-color-lib.zip";
      sha256 = "sha256-xvGe+8D1nklOav6QFMf+aOq0ZOIIhBALBvtmy4f0qXQ=";
    };
  };
  "parser-tools-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/parser-tools-lib.zip";
      sha256 = "sha256-xm5WAXwYm1LBN/wRz8tdZ5tYxyrjHnu8EvrqhnOE2Gg=";
    };
  };
  "wxme-lib" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/wxme-lib.zip";
      sha256 = "sha256-a91Lizhn85HUkeKBMszwU28PVHny3HgxJf7yyeoaZpE=";
    };
  };
  "string-constants-doc" = {
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/string-constants-doc.zip";
      sha256 = "sha256-/A8R4bkbPr958Ye86xI2J3Pe8Ljwdj6dhfVovMvkS7g=";
    };
  };
  "simple-tree-text-markup-doc" = {
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
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/2d-lib.zip";
      sha256 = "sha256-bN6igW9JI7oEBo8BcNMJq937nNsJ6jmF8RmzZumla2E=";
    };
  };
  "compatibility-lib" = {
    deps = [
      "sandbox-lib"
    ];
    src = fetchRacketCatalogSrc {
      url = "https://download.racket-lang.org/releases/8.12/pkgs/compatibility-lib.zip";
      sha256 = "sha256-d/m1gwDa65V275xfCd9XatF+6Do+LhxSu5wM2FGrJH8=";
    };
  };
  "sandbox-lib" = {
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
