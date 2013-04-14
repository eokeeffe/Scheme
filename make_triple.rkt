;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname make_triple) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;make triple
(define (maketriples A B C)(list (car A) (car B) (car C)))
(define (makeTriples A B C)
  (cond ((null? A) '())
  ((null? B) '())
  ((null? C) '())
  (else 
   (cons (maketriples A B C) (makeTriples (cdr A) (cdr B) (cdr C)))
  )))

(maketriples '(jack bonnie jill) '(hello and world) '(be all you))