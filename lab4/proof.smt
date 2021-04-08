(set-option :produce-unsat-cores true)

(declare-const x1 Int)
(declare-const x2 Int)
(declare-const x3 Int)
(declare-fun f (Int) Bool)
(declare-fun g (Int) Bool)

(assert (! (>= x1 1) :named A1))
(assert (! (<= x2 3) :named A2))
(assert (! (<= x3 x2) :named A3))
(assert (! (<= x1 (- 3 x3)) :named A4))
(assert (! (= x3 1) :named A5))
(assert (! (g x1) :named A6))
(assert (! (not (g 2)) :named A7))
(assert (! (not (= (f x1) (f x2))) :named A8))
(assert (! (not (= (f 3) (f x2))) :named A9))
(assert (! (not (g (- x2 x1))) :named A10))
(assert (! (>= x1 x2) :named A11))

(check-sat)
(get-unsat-core)
