; Use semi columns for comments
(set-option :produce-models true)

(declare-const xa Real)
(declare-const ya Real)
(declare-const xb Real)
(declare-const yb Real)

(declare-const x Real)
(declare-const m Real)
(declare-const q Real)

(declare-fun f (Real) Real)

(assert (= xa 1))
; (assert (= xa (- (/ 4 5))))
(assert (= ya 3))
(assert (= xb 2))
(assert (= yb 2))

(assert (= (f x) (+ q (* m x))))
(assert (= m (/ (- yb ya) (- xb xa))))
(assert (= q (- yb (* m xb))))
(assert (= (f x) 0))

(check-sat)
(get-model)
