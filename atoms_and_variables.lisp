;;;; Atoms, variables. constants.

;; Numbers do not need quote as interpreter assumes that numbers and their values are the same.
;; Same for `t` and `nil`.
;; returns 3.14
;; returns T
;; returns NIl
(print '3.14)
(print 't)
(print 'nil)

;; SET sets and binds symbols value.
;; Returns (car cdr eq)
(set 'basic_functions '(car cdr eq))
(print basic_functions)

;; SETQ same as SET except that the first argument is quoted already.
(setq basic_functions '(car cdr eq))

;; SET calculates both arguments first.
;; Returns (1 2 3)
(set (car '(foo bar)) '(1 2 3))
(print (symbol-value 'foo))

;; SYMBOL-VALUE returns symbol value.
;; Returns (1 2 3)
(setq list_123 '(1 2 3))
(print (symbol-value 'list_123))

;; BOUNDP checks if atom is bounded.
;; Returns NIL
(print (boundp 'something))

;; Returns T
(print (boundp 'list_123))

;; Returns T
(print (boundp 't))
