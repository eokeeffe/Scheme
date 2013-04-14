;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname fizzbuzz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;define the number of elements to create
(define NumberOfElements 45)

;first condition where the number is divisible by 3 and 5 , so append FizzBuzz and add 1 to counter
(define cond1(lambda(a L i)(fb (+ a 1) (append L (list 'FizzBuzz)) i)))
;second condition where the number is divisible by 3 , so append Fizz and add 1 to counter
(define cond2(lambda(a L i)(fb (+ a 1) (append L (list 'Fizz)) i)))
;second condition where the number is divisible by 5 , so append Buzz and add 1 to counter
(define cond3(lambda(a L i)(fb (+ a 1) (append L (list 'Buzz)) i)))

;Main Function Loop
(define fb(lambda(a L i)(cond
                          ;while a is less than or equal to i
                        ((<= a i) (cond
                                   ((and (= (remainder a 3) 0) (= (remainder a 5) 0)) (cond1 a L i));condition 1 helper function
                                   ((= (remainder a 3) 0) (cond2 a L i));condition 2 helper function
                                   ((= (remainder a 5) 0) (cond3 a L i));condition 3 helper function
                                   (else (fb (+ a 1) (append L (list a)) i));else just append the number and add 1 to counter
                                    ))
                        (else L);return the list
                        )))

(define FizzBuzz(lambda(i)(fb 1 '() i)));call the main loop function , start the counter at 1 , place an empty list into it and give i to it

(FizzBuzz NumberOfElements);call the function , happy Days it works :-)