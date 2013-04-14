;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname squarelist) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;list = 1 2 3 4 5 6 7 8 9
;muliply each element by itself a= (* (car l) (car l))
;construct a list of the squares cons a b
;b= recusive function of the shortened list i.e (squarelist(cdr l))

(define a '(1 2 3 4 5 6 7 8 9))
;so this function will make a list that will square
;the numbers of the list passed into it
;and return the list of each number squared
(define squarelist(lambda(l)(cond
                              ((null? l) l)
                              (else
                                (cons (* (car l) (car l)) (squarelist(cdr l))
                                      )))))
(squarelist a)
