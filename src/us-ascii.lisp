(in-package :cl-user)
(defpackage :trivial-us-ascii
  (:use
   :cl)
  (:export
   :us-ascii-char

   :+NUL+
   :+SOH+
   :+STX+
   :+ETX+
   :+EOT+
   :+ENQ+
   :+ACK+
   :+BEL+
   :+BS+
   :+HT+
   :+LF+
   :+VT+
   :+FF+
   :+CR+
   :+SO+
   :+SI+
   :+DLE+
   :+DC1+
   :+DC2+
   :+DC3+
   :+DC4+
   :+NAK+
   :+SYN+
   :+ETB+
   :+CAN+
   :+EM+
   :+SUB+
   :+ESC+
   :+FS+
   :+GS+
   :+RS+
   :+US+
   :+DEL+

   :+SP+
   :+#\!+
   :+#\"+
   :+#\#+
   :+#\$+
   :+#\%+
   :+#\&+
   :+#\'+
   :+#\(+
   :+#\)+
   :+#\*+
   :+#\++
   :+#\,+
   :+#\-+
   :+#\.+
   :+#\/+
   :+#\0+
   :+#\1+
   :+#\2+
   :+#\3+
   :+#\4+
   :+#\5+
   :+#\6+
   :+#\7+
   :+#\8+
   :+#\9+
   :+#\:+
   :+#\;+
   :+#\<+
   :+#\=+
   :+#\>+
   :+#\?+
   :+#\@+
   :+#\A+
   :+#\B+
   :+#\C+
   :+#\D+
   :+#\E+
   :+#\F+
   :+#\G+
   :+#\H+
   :+#\I+
   :+#\J+
   :+#\K+
   :+#\L+
   :+#\M+
   :+#\N+
   :+#\O+
   :+#\P+
   :+#\Q+
   :+#\R+
   :+#\S+
   :+#\T+
   :+#\U+
   :+#\V+
   :+#\W+
   :+#\X+
   :+#\Y+
   :+#\Z+
   :+#\[+
   :+#\\+
   :+#\]+
   :+#\^+
   :+#\_+
   :+#\`+
   :+#\a+
   :+#\b+
   :+#\c+
   :+#\d+
   :+#\e+
   :+#\f+
   :+#\g+
   :+#\h+
   :+#\i+
   :+#\j+
   :+#\k+
   :+#\l+
   :+#\m+
   :+#\n+
   :+#\o+
   :+#\p+
   :+#\q+
   :+#\r+
   :+#\s+
   :+#\t+
   :+#\u+
   :+#\v+
   :+#\w+
   :+#\x+
   :+#\y+
   :+#\z+
   :+#\{+
   :+#\|+
   :+#\}+
   :+#\~+

   :ascii-code-char
   :ascii-char-code
   :ascii-code-string
   :ascii-string-code

   :ascii))
(in-package :trivial-us-ascii)

;; ------------------------------------------------------------------------------
;;
;; 7-Bit US ASCII
;;
;; This exists solely to facilitate portability between implementations.
;;
;; ------------------------------------------------------------------------------

(deftype us-ascii-char () '(unsigned-byte 8))

;; Control Codes

(declaim (type us-ascii-char +NUL+))
(declaim (type us-ascii-char +SOH+))
(declaim (type us-ascii-char +STX+))
(declaim (type us-ascii-char +ETX+))
(declaim (type us-ascii-char +EOT+))
(declaim (type us-ascii-char +ENQ+))
(declaim (type us-ascii-char +ACK+))
(declaim (type us-ascii-char +BEL+))
(declaim (type us-ascii-char +BS+))
(declaim (type us-ascii-char +HT+))
(declaim (type us-ascii-char +LF+))
(declaim (type us-ascii-char +VT+))
(declaim (type us-ascii-char +FF+))
(declaim (type us-ascii-char +CR+))
(declaim (type us-ascii-char +SO+))
(declaim (type us-ascii-char +SI+))
(declaim (type us-ascii-char +DLE+))
(declaim (type us-ascii-char +DC1+))
(declaim (type us-ascii-char +DC2+))
(declaim (type us-ascii-char +DC3+))
(declaim (type us-ascii-char +DC4+))
(declaim (type us-ascii-char +NAK+))
(declaim (type us-ascii-char +SYN+))
(declaim (type us-ascii-char +ETB+))
(declaim (type us-ascii-char +CAN+))
(declaim (type us-ascii-char +EM+))
(declaim (type us-ascii-char +SUB+))
(declaim (type us-ascii-char +ESC+))
(declaim (type us-ascii-char +FS+))
(declaim (type us-ascii-char +GS+))
(declaim (type us-ascii-char +RS+))
(declaim (type us-ascii-char +US+))
(declaim (type us-ascii-char +DEL+))

(defconstant +NUL+ #x00)
(defconstant +SOH+ #x01)
(defconstant +STX+ #x02)
(defconstant +ETX+ #x03)
(defconstant +EOT+ #x04)
(defconstant +ENQ+ #x05)
(defconstant +ACK+ #x06)
(defconstant +BEL+ #x07)
(defconstant +BS+  #x08)
(defconstant +HT+  #x09)
(defconstant +LF+  #x0a)
(defconstant +VT+  #x0b)
(defconstant +FF+  #x0c)
(defconstant +CR+  #x0d)
(defconstant +SO+  #x0e)
(defconstant +SI+  #x0f)
(defconstant +DLE+ #x10)
(defconstant +DC1+ #x11)
(defconstant +DC2+ #x12)
(defconstant +DC3+ #x13)
(defconstant +DC4+ #x14)
(defconstant +NAK+ #x15)
(defconstant +SYN+ #x16)
(defconstant +ETB+ #x17)
(defconstant +CAN+ #x18)
(defconstant +EM+  #x19)
(defconstant +SUB+ #x1a)
(defconstant +ESC+ #x1b)
(defconstant +FS+  #x1c)
(defconstant +GS+  #x1d)
(defconstant +RS+  #x1e)
(defconstant +US+  #x1f)
(defconstant +DEL+ #x7f)

;; Printable Characters

(declaim (type us-ascii-char +SP+))
(declaim (type us-ascii-char +#\!+))
(declaim (type us-ascii-char +#\"+))
(declaim (type us-ascii-char +#\#+))
(declaim (type us-ascii-char +#\$+))
(declaim (type us-ascii-char +#\%+))
(declaim (type us-ascii-char +#\&+))
(declaim (type us-ascii-char +#\'+))
(declaim (type us-ascii-char +#\(+))
(declaim (type us-ascii-char +#\)+))
(declaim (type us-ascii-char +#\*+))
(declaim (type us-ascii-char +#\++))
(declaim (type us-ascii-char +#\,+))
(declaim (type us-ascii-char +#\-+))
(declaim (type us-ascii-char +#\.+))
(declaim (type us-ascii-char +#\/+))
(declaim (type us-ascii-char +#\0+))
(declaim (type us-ascii-char +#\1+))
(declaim (type us-ascii-char +#\2+))
(declaim (type us-ascii-char +#\3+))
(declaim (type us-ascii-char +#\4+))
(declaim (type us-ascii-char +#\5+))
(declaim (type us-ascii-char +#\6+))
(declaim (type us-ascii-char +#\7+))
(declaim (type us-ascii-char +#\8+))
(declaim (type us-ascii-char +#\9+))
(declaim (type us-ascii-char +#\:+))
(declaim (type us-ascii-char +#\;+))
(declaim (type us-ascii-char +#\<+))
(declaim (type us-ascii-char +#\=+))
(declaim (type us-ascii-char +#\>+))
(declaim (type us-ascii-char +#\?+))
(declaim (type us-ascii-char +#\@+))
(declaim (type us-ascii-char +#\A+))
(declaim (type us-ascii-char +#\B+))
(declaim (type us-ascii-char +#\C+))
(declaim (type us-ascii-char +#\D+))
(declaim (type us-ascii-char +#\E+))
(declaim (type us-ascii-char +#\F+))
(declaim (type us-ascii-char +#\G+))
(declaim (type us-ascii-char +#\H+))
(declaim (type us-ascii-char +#\I+))
(declaim (type us-ascii-char +#\J+))
(declaim (type us-ascii-char +#\K+))
(declaim (type us-ascii-char +#\L+))
(declaim (type us-ascii-char +#\M+))
(declaim (type us-ascii-char +#\N+))
(declaim (type us-ascii-char +#\O+))
(declaim (type us-ascii-char +#\P+))
(declaim (type us-ascii-char +#\Q+))
(declaim (type us-ascii-char +#\R+))
(declaim (type us-ascii-char +#\S+))
(declaim (type us-ascii-char +#\T+))
(declaim (type us-ascii-char +#\U+))
(declaim (type us-ascii-char +#\V+))
(declaim (type us-ascii-char +#\W+))
(declaim (type us-ascii-char +#\X+))
(declaim (type us-ascii-char +#\Y+))
(declaim (type us-ascii-char +#\Z+))
(declaim (type us-ascii-char +#\[+))
(declaim (type us-ascii-char +#\\+))
(declaim (type us-ascii-char +#\]+))
(declaim (type us-ascii-char +#\^+))
(declaim (type us-ascii-char +#\_+))
(declaim (type us-ascii-char +#\`+))
(declaim (type us-ascii-char +#\a+))
(declaim (type us-ascii-char +#\b+))
(declaim (type us-ascii-char +#\c+))
(declaim (type us-ascii-char +#\d+))
(declaim (type us-ascii-char +#\e+))
(declaim (type us-ascii-char +#\f+))
(declaim (type us-ascii-char +#\g+))
(declaim (type us-ascii-char +#\h+))
(declaim (type us-ascii-char +#\i+))
(declaim (type us-ascii-char +#\j+))
(declaim (type us-ascii-char +#\k+))
(declaim (type us-ascii-char +#\l+))
(declaim (type us-ascii-char +#\m+))
(declaim (type us-ascii-char +#\n+))
(declaim (type us-ascii-char +#\o+))
(declaim (type us-ascii-char +#\p+))
(declaim (type us-ascii-char +#\q+))
(declaim (type us-ascii-char +#\r+))
(declaim (type us-ascii-char +#\s+))
(declaim (type us-ascii-char +#\t+))
(declaim (type us-ascii-char +#\u+))
(declaim (type us-ascii-char +#\v+))
(declaim (type us-ascii-char +#\w+))
(declaim (type us-ascii-char +#\x+))
(declaim (type us-ascii-char +#\y+))
(declaim (type us-ascii-char +#\z+))
(declaim (type us-ascii-char +#\{+))
(declaim (type us-ascii-char +#\|+))
(declaim (type us-ascii-char +#\}+))
(declaim (type us-ascii-char +#\~+))

(defconstant +SP+  #x20)
(defconstant +#\!+ #x21)
(defconstant +#\"+ #x22)
(defconstant +#\#+ #x23)
(defconstant +#\$+ #x24)
(defconstant +#\%+ #x25)
(defconstant +#\&+ #x26)
(defconstant +#\'+ #x27)
(defconstant +#\(+ #x28)
(defconstant +#\)+ #x29)
(defconstant +#\*+ #x2a)
(defconstant +#\++ #x2b)
(defconstant +#\,+ #x2c)
(defconstant +#\-+ #x2d)
(defconstant +#\.+ #x2e)
(defconstant +#\/+ #x2f)
(defconstant +#\0+ #x30)
(defconstant +#\1+ #x31)
(defconstant +#\2+ #x32)
(defconstant +#\3+ #x33)
(defconstant +#\4+ #x34)
(defconstant +#\5+ #x35)
(defconstant +#\6+ #x36)
(defconstant +#\7+ #x37)
(defconstant +#\8+ #x38)
(defconstant +#\9+ #x39)
(defconstant +#\:+ #x3a)
(defconstant +#\;+ #x3b)
(defconstant +#\<+ #x3c)
(defconstant +#\=+ #x3d)
(defconstant +#\>+ #x3e)
(defconstant +#\?+ #x3f)
(defconstant +#\@+ #x40)
(defconstant +#\A+ #x41)
(defconstant +#\B+ #x42)
(defconstant +#\C+ #x43)
(defconstant +#\D+ #x44)
(defconstant +#\E+ #x45)
(defconstant +#\F+ #x46)
(defconstant +#\G+ #x47)
(defconstant +#\H+ #x48)
(defconstant +#\I+ #x49)
(defconstant +#\J+ #x4a)
(defconstant +#\K+ #x4b)
(defconstant +#\L+ #x4c)
(defconstant +#\M+ #x4d)
(defconstant +#\N+ #x4e)
(defconstant +#\O+ #x4f)
(defconstant +#\P+ #x50)
(defconstant +#\Q+ #x51)
(defconstant +#\R+ #x52)
(defconstant +#\S+ #x53)
(defconstant +#\T+ #x54)
(defconstant +#\U+ #x55)
(defconstant +#\V+ #x56)
(defconstant +#\W+ #x57)
(defconstant +#\X+ #x58)
(defconstant +#\Y+ #x59)
(defconstant +#\Z+ #x5a)
(defconstant +#\[+ #x5b)
(defconstant +#\\+ #x5c)
(defconstant +#\]+ #x5d)
(defconstant +#\^+ #x5e)
(defconstant +#\_+ #x5f)
(defconstant +#\`+ #x60)
(defconstant +#\a+ #x61)
(defconstant +#\b+ #x62)
(defconstant +#\c+ #x63)
(defconstant +#\d+ #x64)
(defconstant +#\e+ #x65)
(defconstant +#\f+ #x66)
(defconstant +#\g+ #x67)
(defconstant +#\h+ #x68)
(defconstant +#\i+ #x69)
(defconstant +#\j+ #x6a)
(defconstant +#\k+ #x6b)
(defconstant +#\l+ #x6c)
(defconstant +#\m+ #x6d)
(defconstant +#\n+ #x6e)
(defconstant +#\o+ #x6f)
(defconstant +#\p+ #x70)
(defconstant +#\q+ #x71)
(defconstant +#\r+ #x72)
(defconstant +#\s+ #x73)
(defconstant +#\t+ #x74)
(defconstant +#\u+ #x75)
(defconstant +#\v+ #x76)
(defconstant +#\w+ #x77)
(defconstant +#\x+ #x78)
(defconstant +#\y+ #x79)
(defconstant +#\z+ #x7a)
(defconstant +#\{+ #x7b)
(defconstant +#\|+ #x7c)
(defconstant +#\}+ #x7d)
(defconstant +#\~+ #x7e)

;; Interface

(defmacro eager-ccase (keyform &rest body)
  `(ccase ,keyform
     ,@(mapcar (lambda (form)
                 (list (eval (car form)) (eval (cadr form))))
        body)))

(defun ascii-code-char (code)
  (declare (type us-ascii-char code))
  (eager-ccase code
               (+NUL+ #\Nul)
               (+SOH+ #\Soh)
               (+STX+ #\Stx)
               (+ETX+ #\Etx)
               (+EOT+ #\Eot)
               (+ENQ+ #\Enq)
               (+ACK+ #\Ack)
               (+BEL+ #\Bel)
               (+BS+  #\Backspace)
               (+HT+  #\Tab)
               (+LF+  #\Newline)
               (+VT+  #\Vt)
               (+FF+  #\Page)
               (+CR+  #\Return)
               (+SO+  #\So)
               (+SI+  #\Si)
               (+DLE+ #\Dle)
               (+DC1+ #\Dc1)
               (+DC2+ #\Dc2)
               (+DC3+ #\Dc3)
               (+DC4+ #\Dc4)
               (+NAK+ #\Nak)
               (+SYN+ #\Syn)
               (+ETB+ #\Etb)
               (+CAN+ #\Can)
               (+EM+  #\Em)
               (+SUB+ #\Sub)
               (+ESC+ #\Esc)
               (+FS+  #\Fs)
               (+GS+  #\Gs)
               (+RS+  #\Rs)
               (+US+  #\Us)
               (+DEL+ #\Rubout)
               (+SP+  #\Space)
               (+#\!+ #\!)
               (+#\"+ #\")
               (+#\#+ #\#)
               (+#\$+ #\$)
               (+#\%+ #\%)
               (+#\&+ #\&)
               (+#\'+ #\')
               (+#\(+ #\()
               (+#\)+ #\))
               (+#\*+ #\*)
               (+#\++ #\+)
               (+#\,+ #\,)
               (+#\-+ #\-)
               (+#\.+ #\.)
               (+#\/+ #\/)
               (+#\0+ #\0)
               (+#\1+ #\1)
               (+#\2+ #\2)
               (+#\3+ #\3)
               (+#\4+ #\4)
               (+#\5+ #\5)
               (+#\6+ #\6)
               (+#\7+ #\7)
               (+#\8+ #\8)
               (+#\9+ #\9)
               (+#\:+ #\:)
               (+#\;+ #\;)
               (+#\<+ #\<)
               (+#\=+ #\=)
               (+#\>+ #\>)
               (+#\?+ #\?)
               (+#\@+ #\@)
               (+#\A+ #\A)
               (+#\B+ #\B)
               (+#\C+ #\C)
               (+#\D+ #\D)
               (+#\E+ #\E)
               (+#\F+ #\F)
               (+#\G+ #\G)
               (+#\H+ #\H)
               (+#\I+ #\I)
               (+#\J+ #\J)
               (+#\K+ #\K)
               (+#\L+ #\L)
               (+#\M+ #\M)
               (+#\N+ #\N)
               (+#\O+ #\O)
               (+#\P+ #\P)
               (+#\Q+ #\Q)
               (+#\R+ #\R)
               (+#\S+ #\S)
               (+#\T+ #\T)
               (+#\U+ #\U)
               (+#\V+ #\V)
               (+#\W+ #\W)
               (+#\X+ #\X)
               (+#\Y+ #\Y)
               (+#\Z+ #\Z)
               (+#\[+ #\[)
               (+#\\+ #\\)
               (+#\]+ #\])
               (+#\^+ #\^)
               (+#\_+ #\_)
               (+#\`+ #\`)
               (+#\a+ #\a)
               (+#\b+ #\b)
               (+#\c+ #\c)
               (+#\d+ #\d)
               (+#\e+ #\e)
               (+#\f+ #\f)
               (+#\g+ #\g)
               (+#\h+ #\h)
               (+#\i+ #\i)
               (+#\j+ #\j)
               (+#\k+ #\k)
               (+#\l+ #\l)
               (+#\m+ #\m)
               (+#\n+ #\n)
               (+#\o+ #\o)
               (+#\p+ #\p)
               (+#\q+ #\q)
               (+#\r+ #\r)
               (+#\s+ #\s)
               (+#\t+ #\t)
               (+#\u+ #\u)
               (+#\v+ #\v)
               (+#\w+ #\w)
               (+#\x+ #\x)
               (+#\y+ #\y)
               (+#\z+ #\z)
               (+#\{+ #\{)
               (+#\|+ #\|)
               (+#\}+ #\})
               (+#\~+ #\~)))

(defun ascii-char-code (char)
  (declare (type character char))
  (eager-ccase char
               (#\Nul       +NUL+)
               (#\Soh       +SOH+)
               (#\Stx       +STX+)
               (#\Etx       +ETX+)
               (#\Eot       +EOT+)
               (#\Enq       +ENQ+)
               (#\Ack       +ACK+)
               (#\Bel       +BEL+)
               (#\Backspace +BS+)
               (#\Tab       +HT+)
               (#\Newline   +LF+)
               (#\Vt        +VT+)
               (#\Page      +FF+)
               (#\Return    +CR+)
               (#\So        +SO+)
               (#\Si        +SI+)
               (#\Dle       +DLE+)
               (#\Dc1       +DC1+)
               (#\Dc2       +DC2+)
               (#\Dc3       +DC3+)
               (#\Dc4       +DC4+)
               (#\Nak       +NAK+)
               (#\Syn       +SYN+)
               (#\Etb       +ETB+)
               (#\Can       +CAN+)
               (#\Em        +EM+)
               (#\Sub       +SUB+)
               (#\Esc       +ESC+)
               (#\Fs        +FS+)
               (#\Gs        +GS+)
               (#\Rs        +RS+)
               (#\Us        +US+)
               (#\Rubout    +DEL+)
               (#\Space     +SP+)
               (#\!         +#\!+)
               (#\"         +#\"+)
               (#\#         +#\#+)
               (#\$         +#\$+)
               (#\%         +#\%+)
               (#\&         +#\&+)
               (#\'         +#\'+)
               (#\(         +#\(+)
               (#\)         +#\)+)
               (#\*         +#\*+)
               (#\+         +#\++)
               (#\,         +#\,+)
               (#\-         +#\-+)
               (#\.         +#\.+)
               (#\/         +#\/+)
               (#\0         +#\0+)
               (#\1         +#\1+)
               (#\2         +#\2+)
               (#\3         +#\3+)
               (#\4         +#\4+)
               (#\5         +#\5+)
               (#\6         +#\6+)
               (#\7         +#\7+)
               (#\8         +#\8+)
               (#\9         +#\9+)
               (#\:         +#\:+)
               (#\;         +#\;+)
               (#\<         +#\<+)
               (#\=         +#\=+)
               (#\>         +#\>+)
               (#\?         +#\?+)
               (#\@         +#\@+)
               (#\A         +#\A+)
               (#\B         +#\B+)
               (#\C         +#\C+)
               (#\D         +#\D+)
               (#\E         +#\E+)
               (#\F         +#\F+)
               (#\G         +#\G+)
               (#\H         +#\H+)
               (#\I         +#\I+)
               (#\J         +#\J+)
               (#\K         +#\K+)
               (#\L         +#\L+)
               (#\M         +#\M+)
               (#\N         +#\N+)
               (#\O         +#\O+)
               (#\P         +#\P+)
               (#\Q         +#\Q+)
               (#\R         +#\R+)
               (#\S         +#\S+)
               (#\T         +#\T+)
               (#\U         +#\U+)
               (#\V         +#\V+)
               (#\W         +#\W+)
               (#\X         +#\X+)
               (#\Y         +#\Y+)
               (#\Z         +#\Z+)
               (#\[         +#\[+)
               (#\\         +#\\+)
               (#\]         +#\]+)
               (#\^         +#\^+)
               (#\_         +#\_+)
               (#\`         +#\`+)
               (#\a         +#\a+)
               (#\b         +#\b+)
               (#\c         +#\c+)
               (#\d         +#\d+)
               (#\e         +#\e+)
               (#\f         +#\f+)
               (#\g         +#\g+)
               (#\h         +#\h+)
               (#\i         +#\i+)
               (#\j         +#\j+)
               (#\k         +#\k+)
               (#\l         +#\l+)
               (#\m         +#\m+)
               (#\n         +#\n+)
               (#\o         +#\o+)
               (#\p         +#\p+)
               (#\q         +#\q+)
               (#\r         +#\r+)
               (#\s         +#\s+)
               (#\t         +#\t+)
               (#\u         +#\u+)
               (#\v         +#\v+)
               (#\w         +#\w+)
               (#\x         +#\x+)
               (#\y         +#\y+)
               (#\z         +#\z+)
               (#\{         +#\{+)
               (#\|         +#\|+)
               (#\}         +#\}+)
               (#\~         +#\~+)))

(declaim (ftype (function (sequence)                string)   ascii-code-string))
(declaim (ftype (function ((or symbol list) string) sequence) ascii-string-code))

(defun ascii-code-string (codes)
  (apply #'concatenate 'string
         (map 'list
              (lambda (code)
                (string (ascii-code-char code)))
              codes)))

(defun ascii-string-code (result-type str)
  (map result-type
       (lambda (char)
         (ascii-char-code char))
       str))

(defmacro ascii (char)
  (ascii-char-code char))
