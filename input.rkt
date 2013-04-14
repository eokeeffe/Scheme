#lang racket
(define ns (make-base-namespace)) 

(define getInfo(read))

(display (reverse getInfo))
(newline)
(display (eval getInfo ns))
(newline)
(eval getInfo ns)