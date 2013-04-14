#lang racket
 
(define ns (make-base-namespace))
(eval '(cons 1 2) ns) ; works

(define l '(sqrt 25))
((eval (car l) ns) (car (cdr l)));works should give 5