;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname everysecondelement) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;This function will get every second element in the list
(define L1 '(a b c d e f g h))
(define L2 '())
(define L3 '(x))

(define everysecond(lambda(x)(
                              cond ((null? x) '())
                                   ((null? (cdr x)) '())
                                   (#t (cons (car (cdr  x)) (everysecond(cdr (cdr x)))))
                              )
                     )
  )