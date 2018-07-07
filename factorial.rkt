#lang racket

(define (factorial n)
  (fact-inter 1 1 n))

(define (fact-inter product counter max-count)
  (if (> counter max-count)
      product
      (fact-inter (* counter product)
                  (+ counter 1)
                  max-count)))
      

(factorial 5)