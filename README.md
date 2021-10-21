# Trivial US-ASCII

A library for implementation-independent, portable US-ASCII encoding and
decoding.

Trivial US-ASCII provides the following functionality:

* A complete set of constants defining the US-ASCII characters as unsigned
  bytes.

* Functions that map Common Lisp characters to and from US-ASCII:
  - `ascii-code-char`
  - `ascii-char-code`

* Functions that map Common Lisp strings to and from sequences of US-ASCII:
  - `ascii-code-string`
  - `ascii-string-code`

* A macro that inlines the US-ASCII encoding of Common Lisp character literals
  at compile time:
  - `ascii`

## Installation

Trivial US-ASCII requires [ASDF](https://common-lisp.net/project/asdf/), the
Common Lisp world's de facto standard build facility. Most Common Lisp
implementations ship with ASDF, so chances are you don't need to install it
yourself.

You'll need to [configure ASDF to find Trivial US-ASCII](https://common-lisp.net/project/asdf/asdf/Configuring-ASDF-to-find-your-systems.html).

If you're in a hurry, and run a *nix system, just do this:

```bash
$ mkdir -p ~/.local/share/common-lisp/source

$ git clone https://git.sr.ht/~pyramidion/trivial-us-ascii ~/.local/share/common-lisp/source/
```

ASDF should find the package there and make it available to your Common Lisp
implementation. Subsequently, you will be able to `require` the package in
your REPL, and include it as a dependency to your own projects using ASDF.

At some point, I'll see about including it in [Quicklisp](https://www.quicklisp.org/beta/).

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
