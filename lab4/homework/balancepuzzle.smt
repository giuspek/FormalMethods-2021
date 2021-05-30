(set-option :produce-models true)

(declare-const diamond Int)
(declare-const circle Int)
(declare-const pentagon Int)
(declare-const rectangle Int)
(declare-const triangle Int)

(assert (> diamond 0))
(assert (> circle 0))
(assert (> pentagon 0))
(assert (> rectangle 0))
(assert (> triangle 0))

(define-fun square () Int (* 2 triangle))

; Encoding first two balances
(assert (= (+ diamond circle square) (+ pentagon rectangle rectangle)))
(assert (= (+ square pentagon) (+ square circle diamond)))

; Support variable for each option and the last balance
(define-fun lastbalance () Int (* 3 rectangle))
(define-fun opt1 () Int (+ (* 2 diamond) square))
(define-fun opt2 () Int (+ diamond square))
(define-fun opt3 () Int (+ triangle square))
(define-fun opt4 () Int (+ pentagon diamond))
(declare-const isopt1  Bool)
(declare-const isopt2  Bool)
(declare-const isopt3  Bool)
(declare-const isopt4  Bool)

(assert (= isopt1 (= lastbalance opt1)))
(assert (= isopt2 (= lastbalance opt2)))
(assert (= isopt3 (= lastbalance opt3)))
(assert (= isopt4 (= lastbalance opt4)))

; Only one of the option is the solution
(assert (or isopt1 isopt2 isopt3 isopt4))
(assert (not (and isopt1 isopt2)))
(assert (not (and isopt1 isopt3)))
(assert (not (and isopt1 isopt4)))
(assert (not (and isopt2 isopt3)))
(assert (not (and isopt2 isopt4)))
(assert (not (and isopt3 isopt4)))

(check-sat)
(get-model)

(exit)

