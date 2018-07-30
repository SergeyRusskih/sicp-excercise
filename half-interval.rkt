#lang racket

; The half-interval method is a simple but powerful technique for finding
; roots of an equation f (x) = 0, where f is a continuous function.

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value)
                 (search f neg-point midpoint))
                ((negative? test-value)
                 (search f midpoint pos-point))
                (else midpoint))))))

(define (close-enought? x y)
  (< (abs (- x y)) 0.001))