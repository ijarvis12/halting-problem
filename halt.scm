#!/home/ijarvis12/.guix-profile/bin/guile -s
!#

;; Function g
(define (g x) (not x))

;; Function f
(define (f x) (g x))

;; Helper function
(define (bool->string bool) (if bool "True" "False"))

(newline)
(display "-------------------------------------------------------") (newline)
(display "-- Function f(x) predicts what function g(x) will do --") (newline)
(display "-- given f(g(x)) and then g(x) does the opposite.    --") (newline)
(display "-------------------------------------------------------") (newline)
(newline)

;; First input
(display "The input x = True") (newline)
(display (string-append "f(g(True)) = "  (bool->string (f (g #t))))) (newline)
(display (string-append "g(True) = " (bool->string (g #t)))) (newline)
(newline)

;; Second input
(display "The input x = False") (newline)
(display (string-append "f(g(False)) = " (bool->string (f (g #f))))) (newline)
(display (string-append "g(False) = " (bool->string (g #f)))) (newline)
(newline)
