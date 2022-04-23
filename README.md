# Trivial US-ASCII

A library for implementation-independent, portable US-ASCII encoding and
decoding.

## Features

US-ASCII character constants:

```
+NUL+
+#\A+
+#\0+

etc.
```

Functions mapping Lisp characters to and from US-ASCII:

```
ascii-code-char
ascii-char-code
```

Functions mapping Lisp strings to and from sequences of US-ASCII:

```
ascii-code-string
ascii-string-code
```

A macro to ease US-ASCII encoding of Lisp character literals:

```
ascii
```

## Installation

Trivial US-ASCII is available on [Ultralisp](https://ultralisp.org/) and is easy
to install using [Quicklisp](https://www.quicklisp.org/beta/).

Add the Ultralisp repository:

```lisp
CL-USER> (ql-dist:install-dist "http://dist.ultralisp.org/")
```

Install Trivial US-ASCII:

```lisp
CL-USER> (ql:quickload :trivial-us-ascii)
```

## Usage

Load the `trivial-us-ascii` package:

```lisp
CL-USER> (require :trivial-us-ascii)
NIL

CL-USER> (use-package :trivial-us-ascii)
T
```

Constants:

```lisp
CL-USER> +NUL+
0

CL-USER> +#\A+
65
```

Character mapping:

```lisp
CL-USER> (ascii-code-char 0)
#\Nul

CL-USER> (ascii-code-char 65)
#\A

CL-USER> (ascii-char-code #\Nul)
0

CL-USER> (ascii-char-code #\A)
65
```

String mapping:

```lisp
CL-USER> (ascii-string-code '(simple-array (unsigned-byte 8) (*)) "Hello, world!")
#(72 101 108 108 111 44 32 119 111 114 108 100 33)

CL-USER> (ascii-code-string #(72 101 108 108 111 44 32 119 111 114 108 100 33))
"Hello, world!"
```

Inlining:

```lisp
CL-USER> (macroexpand-1 '(ascii #\Space))
32
T
```

## Links

* [Repository](https://sr.ht/~pyramidion/trivial-us-ascii/)

## Patches

Patches are welcome.

## License

Trivial US-ASCII is in the public domain, or licensed permissively in
jurisdictions hostile to the public domain.

See LICENSE.
