;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname addpairs) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;list = 1 2 3 4 5
;first condition to check if list is empty
;next condition is to check if list has only 1 element
;build a list of the addition of the current first element to the next element
;only want every second element = (cdr (cdr list))

(define a '(1 2 3 4 5))
(define addpairs(lambda(l)(
                           cond
                            ((null? l) l);is the list empty
                            ((null? (cdr l)) l);so while the next element isn't empty
                            (else (cons (+ (car l) (car (cdr l))) (addpairs(cdr (cdr l)))))
                            )));build a list of the addition of a + b by
;recursing through the list 2 at a time ( cdr will return list-1 , so 
;cdr (cdr x) is equal to the list minus 2 elements)
(addpairs a)