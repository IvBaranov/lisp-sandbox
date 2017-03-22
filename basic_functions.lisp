;;;; Basic functions.

;;; CAR function.

;; (car list) -> s-expression. Returns `head` of the list.
;; Returns 1
(print (car '(1 2 3)))

;; Returns NIL
(print (car ()))

;; Returns NIL
(print (car nil))

;; Returns NIL
(print (car 'nil))

;; Returns NIL
(print (car '(nil 1 2 3)))
