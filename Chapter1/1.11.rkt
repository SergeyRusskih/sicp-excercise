#lang racket

(define (recursive value)
  (if (< value 3)
      value
      (+ (recursive (- value 1)) (* 2 (recursive (- value 2))) (* 3 (recursive (- value 3))))))

(recursive 8)

(define (iterative value)
  (if (< value 3)
      value
      (iterative-recursive value 0 3)))

(define (iterative-recursive value result count)
  (if (<= count 0)
      result
      (iterative-recursive (value) (+ result ()) (- count 1))
      