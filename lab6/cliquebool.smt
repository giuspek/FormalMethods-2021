(declare-const n1 Bool)
(declare-const n2 Bool)
(declare-const n3 Bool)
(declare-const n4 Bool)

(assert (or (not n2) (not n3)))

(assert-soft n1 :weight 1 :id penalty)
(assert-soft n2 :weight 1 :id penalty)
(assert-soft n3 :weight 1 :id penalty)
(assert-soft n4 :weight 1 :id penalty)

(minimize penalty)
(check-sat)
(get-objectives)
(get-model)
(exit)