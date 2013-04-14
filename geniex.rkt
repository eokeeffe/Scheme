#lang racket
;define the namespace for using eval in Dr.Racket
(define ns (make-base-namespace))

;First Display the list of words
;Next get input and set it to a
;next evaluate whats in a
;then display the evaluation with a newline
;Then do it over again so recurse Genie
(define GenieX(lambda(X)(
                        cond
                         ((= X 0)(newline)(display "you've used up your goes"))
                         (#t (newline)(display "what is you wish o master")
                             (let* ( (L (read)) )
                               (cond
                                 ((not(equal? L 'farewell))
                                  (display (eval L ns))
                                  (GenieX(- X 1)))
                                 )
           )))))
(GenieX 2)