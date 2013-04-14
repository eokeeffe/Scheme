;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname myremovex) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;list = 1 2 3 4 1 6
;check if the list is null (null? l)
;check if the condition is null (null? C)
;check if the current first element is equal to the condition, if so then skip this element
;else construct a list of every element that isn't the condition

(define a '(1 2 3 4 1 6))
(define myremove(lambda(C l)(cond
                            ((null? l) l)
                            ((null? C) l)
                            ((eq? C (car l)) (myremove C (cdr l)) )
                            (else 
                             (cons (car l) (myremove C (cdr l))))
                            )))
(myremove 1 a)