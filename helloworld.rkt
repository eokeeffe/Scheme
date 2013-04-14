;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname helloworld) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define a '(hello world and hello universe))
(define getlast(lambda(x)(
                          cond
                           ((null? (cdr x)) x)
                           (else(getlast(cdr x))))))