(set-option :produce-interpolants true)

(declare-const x Real)
(declare-const y Real)

(define-fun A1 () Bool (and (<= y 3) (<= x 1)))
(define-fun A2 () Bool (and (<= y 2) (<= x 2)))
(define-fun A3 () Bool (and (<= y 1) (<= x 3)))
(define-fun B1 () Bool (and (>= x 2) (>= y 3)))
(define-fun B2 () Bool (and (>= x 3) (>= y 2)))
(define-fun A () Bool (or A1 A2 A3))
(define-fun B () Bool (or B1 B2))

(assert (! A :interpolation-group g1))
(assert (! B :interpolation-group g2))

(check-sat)
(get-interpolant (g1))

(exit)

