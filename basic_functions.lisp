;;;; Basic functions.


;;; CAR/FIRST and CDR/REST functions.
;;; The difference between equivalents http://stackoverflow.com/questions/29907440/difference-between-cdr-car-and-rest-first-and-possible-implementation

;;; CAR/FIRST function.
;;; (car list) -> s-expression. Returns `head` of the list.

;; Returns 1
(print (car '(1 2 3)))

;; Returns NIL
(print (car ()))

;; Returns NIL
(print (car nil))

;; Returns NIL
(print (first 'nil))

;; Returns NIL
(print (first '(nil 1 2 3)))

;;; CDR/REST function.
;;; (cdr list) -> s-expression. Returns `tail` of the list (that is everything except `head`).

;; Returns (1 2 3)
(print (cdr '(nil 1 2 3)))

;; Returns REST
(print (first '(rest '(1 2 3))))

;;; Nested CAR/CDR functions.

;; (cdr (cdr (car '((1 2 3) (1 2) 1)))) <=> cddar'((1 2 3) (1 2) 1)
;; Returns 3
(print (caddar '((1 2 3) (1 2) 1)))

;; CAR, CADR, CADDR, CADDDR <=> FIRST, SECOND, THIRD, FORTH

;; Returns 3
(print (caddr '(1 2 3)))

;; Returns 3
(print (third '(1 2 3)))

;;; NTH funcion. (NTH n 'list'). Returns element at n-th position.

;; Returns 2
(print (nth 1 '(1 2 3)))

;;; LAST function returns the last list element.

;; Returns 8
(print (last '(2 4 8)))

;;; CONS function. Adds `head` to `tail`.

;; Returns (1 2 3)
(print (cons 1 '(2 3)))

;; Returns (5 2 3)
(print (cons (+ 1 4) '(2 3)))

;; Returns ((+ 1 4) 2 3)
(print (cons '(+ 1 4) '(2 3)))

;; Returns (1 2 3)
(print (cons 1 (cons 2 (cons 3 nil))))

;; Returns (NIL). NIL is not the same as (NIL). (NIL) is a list with one element.
(print (cons nil nil))


;;; Predicate functions. Predicates return T(or any value except NIL) or NIL as a result.

;;; ATOM predicate returns if expression is an atom. (ATOM s-expression) -> T/NIL

;; Returns T
(print (atom 1))

;; Returns T
(print (atom 'a))

;; Returns T
(print (atom nil))

;; Returns T
(print (atom ()))

;; Returns T
(print (atom '()))

;; Returns T
(print (atom 'nil))

;; Returns T
(print (atom (+ 1 2)))

;;; EQ predicate returns T if arguments are equal. Arguments can be symbols or constants T and NIL.

;; Returns T
(print (eq nil ()))

;; Returns T
(print (eq nil 'nil))

;; Returns NIL
(print (eq 'a 'b))

;; Returns NIL
(print (eq '(1 2) ' (1 2)))

;; Returns NIL
(print (eq 3.14 3.14))

;;; EQL predicate also compares numbers of the same type.

;; Returns T
(print (eql 3.14 3.14))

;; Returns NIL
(print (eql 3 3.14))

;;; = predicate compares numbers of different type.

;; Returns T
(print (= 3 3.0))

;; Returns T
(print (= 3 0.3e1))

;;; EQUAL predicate is like EQL, but also works with lists.

;; Returns T
(print (equal '(1 2 3) '(1 2 3)))

;; Returns T
(print (equal 'a 'a))

;;; EQUALP predicate. Compares numbers of different types and is case insensitive while comparing chars and strings.

;; Returns T
(print (equalp "Foo" "FOo"))

;; Returns T
(print (equalp '(1 2.0) '(1 2)))

;;; NULL predicate checks if list is empty.

;; Returns NIL
(print (null '(1 2 3)))

;; Returns T
(print (null ()))

;;; LIST creates list using provided arguments.

;; Returns (NIL 6 1 (1 2))
(print (list () (+ 1 2 3) 1 '(1 2)))