#lang racket

(define output (open-output-file "./racket-package-defs.nix" #:exists 'replace))
(define release-hashstream (open-input-file "./downloads/release-catalog.lock"))
(define live-hashstream (open-input-file "./downloads/live-catalog.lock"))

(define release-hash (read release-hashstream))
(define live-hash (read live-hashstream))

(close-input-port release-hashstream)
(close-input-port live-hashstream)

(define header
  '("# racket package definitions\n"
    "# NOTE: These are not builds or derivations, but simply\n"
    "#       definitions for each package to help determine\n"
    "#       dependencies\n"
    "{ fetchzip }: {\n")
)

(define prefix-url "https://download.racket-lang.org/releases/8.12")

(define result-hash (make-hash))

;; Helper functions
(define (contains-archive? str)
  (regexp-match #rx"\\.zip$|\\.tar\\.gz$" str))

(define (contains-git? str)
  (regexp-match #rx"\\.git|^git://|^git\\+" str))

(define (contains-github? str)
  (regexp-match #rx"^github://" str))

(define (get-hash src)
  (define result (string-split
                   (with-output-to-string
                     (lambda () (system (format "nix-prefetch-url --unpack ~a" src))))
                   "\n"))
    (if (eq? (length result) 0) "" (car result)))

(define (parse-branch-git src)
  (define result (regexp-match #rx"#([^#]+)$" src))
  (if (eq? result #f) "" (format "ref = \"~a\";" (cadr result))))

(define (parse-path-git src)
  (define raw-result (regexp-match #rx"path=([^&#]+)" src))
  (if (eq? raw-result #f)
    ""
    (regexp-replace* "%2F" (format "subpath = \"~a\";" (cadr raw-result)) "/")))

(define (clean-url src)
  (define step1 (regexp-replace* "\\?.*" src ""))
  (define step2 (regexp-replace "^git:" step1 "https:"))
  (regexp-replace "^git\\+https:" step2 "https:"))

;; Github utils
(define (parse-branch src)
  (define result (regexp-match #rx"/([^/]+)/?$" src))
  (if (eq? result #f)
    (raise (format "Weird parsing in ~a" src))
    (format "ref = \"~a\";" (cadr result))))

(define (clean-branch src)
  (define stage1 (regexp-replace #rx"/[^/]+/?$" src ""))
    (regexp-replace #rx"github://" stage1 "https://"))

;; Release loop
(for ([key (hash-keys release-hash)])
  (define inner-hash (make-hash))
  (define value (hash-ref release-hash key))

  (define name (hash-ref value 'name))
  (hash-set! inner-hash 'name name)

  (define src (format "~a/~a" prefix-url (regexp-replace* #rx"\\.\\./" (hash-ref value 'source) "")))
  (hash-set! inner-hash 'src src)

  (hash-set! inner-hash 'checksum (hash-ref value 'checksum))

  (hash-set! inner-hash 'deps (hash-ref value 'dependencies))

  (hash-set! result-hash name inner-hash))

;; Live catalog
(for ([key (hash-keys live-hash)])
  (define (parse-map key)
    (define inner-hash (make-hash))
    (define value (hash-ref live-hash key))

    (define name (hash-ref value 'name))
    (hash-set! inner-hash 'name name)

    (hash-set! inner-hash 'src (hash-ref value 'source))

  (hash-set! inner-hash 'checksum (hash-ref value 'checksum))

    (hash-set! inner-hash 'deps (hash-ref value 'dependencies))

    (hash-set! result-hash name inner-hash))

  (if (not (hash-has-key? result-hash key))
    (parse-map key)
    (void)))


;; Begin printing and parsing
(for ([line header])
  (write-string line output))

(for ([key (hash-keys result-hash)])
  (define value (hash-ref result-hash key))
  (write-string (format "\"~a\" = {" (hash-ref value 'name)) output)

  (define src-data (hash-ref value 'src))
  (define src-rev (hash-ref value 'checksum))
  (define src-line (cond
                     [(contains-archive? src-data)
                      (format "src = fetchzip {\nstripRoot = false;\nurl = \"~a\";\nsha256 = \"~a\";\n};\n" src-data (get-hash src-data))]
                     [(contains-git? src-data)
                      (format "src = fetchGit {\nurl = \"~a\";\nrev = \"~a\";\n~a};\n~a\n" (clean-url src-data) src-rev (parse-branch-git src-data) (parse-path-git src-data))]
                     [(contains-github? src-data)
                      (format "src = fetchGit {\nurl = \"~a\";\nrev = \"~a\";\n~a};\n" (clean-branch src-data) src-rev (parse-branch src-data))]
                     [else (raise (format "source not a recognized value: ~a" src-data))]))

  (write-string src-line output)

  (write-string "deps = [\n" output)
  (for ([dep (hash-ref value 'deps)])
    (if (string? dep)
      (write-string (format "\"~a\"\n" dep) output)
      (write-string (format "\"~a\"\n" (car dep)) output)))
  (write-string "];\n" output)
  (write-string "};\n" output))

(for ([line '("}\n")])
  (write-string line output))

(close-output-port output)
