;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname increaseall) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;base case , if null then return null
;case where there is one element , return +1 in a list
;Recursive case , build a list of the first number + 1 to the rest of the list +1

(define increaseAll(lambda(L)(cond 
                               ((null? L) L)
                               ((null? (cdr L)) (list (+ (car L) 1)))
                               (else
                                (cons (+ (car L) 1) (increaseAll (cdr L))))
                               )))

(increaseAll '())
(increaseAll '(3))
(increaseAll '(1 2 3 4 5 6))