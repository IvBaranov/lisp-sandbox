;;;; Some basics.

;; Sum calculation.
;; Returns 3
(print (+ 1 2))

;; Difference.
;; Returns -5
(print (- 2 7))

;; Difference with decimal argument.
;; Returns -5.0
(print (- 2 7.0))

;; 2*(3+4)
;; Returns 14
(print (* 2 (+ 3 4)))

;; Quote returns its argument without calculating.
;; Returns (* 2 (+ 3 4))
(print '(* 2 (+ 3 4)))

;; QUOTE function. 'expression <=> (quote expression).
;; Returns (* 2 (+ 3 4))
(print (quote (* 2 (+ 3 4))))

;; Numbers do not need quote as interpreter assumes that numbers and their values are the same.
;; Same for `t` and `nil`.
;; returns 3.14
;; returns T
;; returns NIl
(print '3.14)
(print 't)
(print 'nil)

;; Having fun with quote.
;; Returns 'QUOTE
(print (quote 'quote))

;; Empty list () <=> NIL
;; List that contains atom NIL: (NIL)
;; (NIL) <=> (())
;; Returns NIL
(print '())