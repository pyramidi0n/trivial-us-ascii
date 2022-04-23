(defsystem "trivial-us-ascii"
  :version "1.0.0"
  :license "Public Domain / 0-clause MIT"
  :description "A library for implementation-independent, portable US-ASCII encoding and decoding."
  :author "Stephen Youts"
  :components
  ((:static-file "README.md")
   (:static-file "LICENSE")
   (:module "src"
    :components ((:file "us-ascii")))))
