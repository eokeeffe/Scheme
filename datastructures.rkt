;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname datastructures) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;this is a simple data structure
;to describe it we say there exist 4 lists that contain pairs of lists
;each one can be identified by the either the first or second part of the pair
;e.g age 20 has the pair identifiers age and 20 in it
(define myInfo '( (evan ((age 20) (height 1.84) (home Dublin))) 
                  (mark ((age 21) (height 1.76) (home Dublin)))
                  (Olena ((age 20) (height 1.76) (home Ukraine)))
                  (mary-anne ((age 21) (height 1.76) (home Dublin)))
                  ))
;this function merely shows how to find someone in the data structure 
;and return the list of information that is contained in that list
(define findSomeone(lambda(x name )(cond
                               ((null? x) '())
                               ((eq? (getName x) name)  (car x))
                               (else (findSomeone (cdr x) name))
                                )))
;this is an example of problem decomposition and creating "helper functions"
(define getName(lambda(x)(cond
                                     ((null? x) '())
                                     (#t(car (car x))))))
;just extract the persons name from the list
(define getname(lambda(x)(cond
                                     ((null? x) '())
                                     (#t(car x)))))
;other functions can be seen to be helper functions to the starting function
(define getAge(lambda(x)(cond
                          ((null? x) '())
                          (#t (cdr (car (car (cdr x))))))))
(define getHeight(lambda(x)(cond
                          ((null? x) '())
                          (#t (cdr (car (cdr (car (cdr x)))))))))
(define getHome(lambda(x)(cond
                           ((null? x) '())
                           (#t (cdr (car (cdr (cdr (car (cdr x))))))))))


(getname (findSomeone myInfo 'evan))
(getHome (findSomeone myInfo 'evan))
(getAge (findSomeone myInfo 'evan))
(getHeight (findSomeone myInfo 'evan))