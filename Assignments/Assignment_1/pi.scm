#lang racket

;;;;;;;;;;;;;;;;;;; Felix Singerman 7970742 ;;;;;;;;;;;;;;;;;;;;

;; main function that makes use of the helper function 
;; helper function calculation divided by i, than multiplies by 4
(define main
  (lambda (i)
  (* 4.0 (/ (helper i) i))))


;; the helper function that does most of the logic
;; number of points -- the higher the more accurate but slower, 1000 is a good number to run
;; choose random x and y values in the map 
;; do the calculation 
(define helper
  (lambda (numberOfPoints)    
  (letrec ((x (/(random )  1))    
           (y (/(random )  1)))    
    (cond ( ( = numberOfPoints 0) 0)    
           (else (cond (( < ( sqrt ( + ( * y y) ( * x x))) 1)    
                       ( + 1 ( helper ( - numberOfPoints 1))))    
                     ( else ( helper ( - numberOfPoints 1)))))))))    