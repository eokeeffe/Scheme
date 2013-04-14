;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname fib) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define fb(lambda(count a b L)(cond
                          ((> count 0)
                           (fb (- count 1) b (+ a b) (append (list (+ a b)) L)))
                          (else L)
                          )))

(define fibonacci(lambda(count)(cond
                                 ((< count 0) '(0))
                                 ((= count 1) '(0))
                                 ((= count 2) '(0 1))
                                 (else 
                                  (reverse (fb count 0 1 '()))))))

(fibonacci 10)