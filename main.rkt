#lang racket 
(require "utility.rkt")
(require "parser.rkt")
(require "runner.rkt")

;(define scope '((a 1) (b 2) (c 5)))
(define env '((global (a 1) (b 2) (c 5))))
;(resolve env 'a)

(define sample-code '(block (assign i 0) (while (bool < i 10) (block (assign a (math + i 1)) (assign i a) (print i)))))
;(define sample-code '(block (assign  x 8) (print x)))
(displayln (neo-parser sample-code))
(define parsed-neo-code (neo-parser sample-code))
(run-neo-parsed-code parsed-neo-code env)

;(define sample-code '(call (function () (ask (bool != a b) (math - a b) (math + a b))) (a)))
;(define scope '((y 10)(x 8)))
;(display (update-scope 'x 16 scope))
 ;(define parsed-neo-code (neo-parser sample-code))
 ;(run-neo-parsed-code parsed-neo-code env)


 ;(let* ((alex 21) (bushi 22) (blade 35) (amy 7) (substract (lambda(a b)(- a b))) (amy 5)) (substract alex amy))
 ;(run-bool-parsed-code 'a env)
 ;(elementAt '(!= (var-exp a) (var-exp b)) 1)
; (define parsed-neo-code (neo-parser '(call (function(a) (call (function (r) a) (a))) (5)))) 

; (run-neo-parsed-code parsed-neo-code env)
;(displayln (cons scope (cons scope env)))
;(display (push_scope_to_env '(a c d) '(5 8 11) (cons scope env)))

;(resolve_env env 'z)