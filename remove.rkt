;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname remove) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(a b c d a b cd e))

(define myremove(lambda(A L)(cond
                             ((null? L) '());is the list empty , return empty
                             ((eq? (car L) A) (cdr L));is the current element the element we are looking for
                             (else
                              (cons (car L) (myremove A (cdr L)))))));return a list of all the elements bar first occurence


(myremove 'b L)