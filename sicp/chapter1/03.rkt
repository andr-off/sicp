#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (solution x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
        ((and (< y x) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares y x))))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 2 1 3) 13)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 4 2 3) 25)
(check-equal? (solution 0 0 0) 0)
(check-equal? (solution 1 0 1) 2)
(check-equal? (solution 2 3 0) 13)
