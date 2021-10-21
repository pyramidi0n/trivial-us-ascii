(defsystem "trivial-us-ascii"
  :version "1.0.0"
  :license "Public Domain / 0-clause MIT"
  :description "A library for implementation-independent, portable US-ASCII encoding and decoding."
  :author "Stephen Youts"
  :long-description
  "Trivial US-ASCII provides the following functionality:

* A complete set of constants defining the US-ASCII characters as unsigned bytes.

* Functions that map Common Lisp characters to and from US-ASCII:
  - ascii-code-char
  - ascii-char-code

* Functions that map Common Lisp strings to and from sequences of US-ASCII:
  - ascii-code-string
  - ascii-string-code

* A macro that inlines the US-ASCII encoding of Common Lisp character literals
  at compile time:
  - ascii"
  :components
  ((:static-file "README.md")
   (:static-file "LICENSE")
   (:module "src"
    :components ((:file "us-ascii")))))
