#lang racket


(define all_negatives
       (lambda(L)
           (cond( (null? L)  '()                             )
                ( (list? (car L))
                      (append (all_negatives (car L))
                              (all_negatives (cdr L)) )      )
                ( (< (car L) 0)
                      (cons (car L) (all_negatives (cdr L))) )
                ( #t  (all_negatives (cdr L))                )
           )
       )
)

;; an example using let:  let takes 2 args, the first being a
;;list of pairs pairing names and values, the second being
;; an expression using those names, which the let evaluates to.

(define all_negatives_let
       (lambda(L)
           (cond( (null? L)  '()                             )
                ( (list? (car L))
                    (let( (resultForCar (all_negatives_let (car L)))
                          (resultForCdr (all_negatives_let (cdr L)))
                        ) ;; end of the list of pairs in let
                      (append resultForCar resultForCdr)) ;; end let
                                                                );; end cond pair
                ( (< (car L) 0)
                      (cons (car L) (all_negatives_let (cdr L))) )
                ( #t  (all_negatives_let (cdr L))                )
           )
       )
)
        