#lang racket

(define replaceFirst(lambda(X Y L)(cond
                                    ((null? L) '())
                                       ((eq? (car L) X) (cons Y (cdr L)))
                                       (else
                                        (cons (car L) (replaceFirst X Y (cdr L)))))))

(replaceFirst 'c 'a '(a b c d e))