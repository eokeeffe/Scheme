;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname apply) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define add(lambda(a b)(+ a b)))

(apply + '(1 2 3 4))

(map abs '(1 -2 3 -4 5 -6))

(map sqrt '(1 -2 3 -4 5 -6))

(abs '-2)

(complex? 2+i)



