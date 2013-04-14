;for this next one comment out the first 2 lines if not using Dr.Racket

#lang racket
(define ns (make-base-namespace))

;returns the list bar the first element
(define removeFirst(lambda(t L)(cond
                               ((null? L) '())
                               ((null? (cdr L)) '())
                               ((= t 1) (cons (car L) (removeFirst t (cdr L))))
                               (else removeFirst 1 (cdr L)))))
;(removeFirst 0 '(a b c d e))

;simple evaluate the function of car L to a
(define Func(lambda(a L)((eval (car L) ns) a)))

;evaluate the first number to the first function
(define Func1(lambda(L)((eval (car (cdr L)) ns) (car L))))

;step 1 , reverse the list
(define Chain(lambda(L)(cond
                         ((null? L) '())
                         (#t 
                          (CHAIN1 (reverse L))) )))

;step 2 , get the first expression and shorten the list by 2
(define CHAIN1(lambda(L)(cond 
                          ((null? L) '())
                          (else (CHAIN2 (Func1 L) (removeFirst 0 (removeFirst 0 L)))))))

;if there are still more expressions then recursively evaluate the previous
;expression to the next one
(define CHAIN2(lambda(a L)(cond
                            ((null? L) a)
                            (else
                             (CHAIN2 (Func a L) (cdr L))))))

(define l '(list (lambda(x) (+ x 2)) sqrt 25))
(define l2 '((lambda(x) (* x x))  (lambda(x) (- x 3)) 5 ))
(define l3 '(sqrt sqrt sqrt sqrt sqrt 5 ))

(Chain l)
(Chain l2)
(Chain l3)