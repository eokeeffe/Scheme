;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname lastelement) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(helllo world and universe))
(define last(lambda(x)(
                       cond
                        ((null? x) x)
                        ((null? (cdr x)) x)
                        (else (last(cdr x))))))