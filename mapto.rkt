;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname mapto) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(1 -2 3 -4 5))

;base case is the list empty
;Recursive Condition
;construct a list of the the each element in the list being passed to
;the function 
;to the rest of the elements of the list going through the function

(define mapTo(lambda(fn L)(cond
                            ((null? L) L)
                            (else (cons (fn (car L)) (mapTo fn (cdr L))))
                            )))

(mapTo abs L)
(mapTo list '(a b c d))