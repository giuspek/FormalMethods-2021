(declare-const srv0_vm0 Int)
(declare-const srv0_vm1 Int)
(declare-const srv0_vm2 Int)
(declare-const srv0_vm3 Int)
(declare-const srv0_vm4 Int)
(declare-const srv0_vm5 Int)
(declare-const srv0_vm6 Int)
(declare-const srv0_vm7 Int)
(declare-const srv0_vm8 Int)
(declare-const srv0_vm9 Int)
(declare-const srv0_vm10 Int)
(declare-const srv1_vm0 Int)
(declare-const srv1_vm1 Int)
(declare-const srv1_vm2 Int)
(declare-const srv1_vm3 Int)
(declare-const srv1_vm4 Int)
(declare-const srv1_vm5 Int)
(declare-const srv1_vm6 Int)
(declare-const srv1_vm7 Int)
(declare-const srv1_vm8 Int)
(declare-const srv1_vm9 Int)
(declare-const srv1_vm10 Int)
(declare-const srv2_vm0 Int)
(declare-const srv2_vm1 Int)
(declare-const srv2_vm2 Int)
(declare-const srv2_vm3 Int)
(declare-const srv2_vm4 Int)
(declare-const srv2_vm5 Int)
(declare-const srv2_vm6 Int)
(declare-const srv2_vm7 Int)
(declare-const srv2_vm8 Int)
(declare-const srv2_vm9 Int)
(declare-const srv2_vm10 Int)
(declare-const srv3_vm0 Int)
(declare-const srv3_vm1 Int)
(declare-const srv3_vm2 Int)
(declare-const srv3_vm3 Int)
(declare-const srv3_vm4 Int)
(declare-const srv3_vm5 Int)
(declare-const srv3_vm6 Int)
(declare-const srv3_vm7 Int)
(declare-const srv3_vm8 Int)
(declare-const srv3_vm9 Int)
(declare-const srv3_vm10 Int)
(declare-const srv4_vm0 Int)
(declare-const srv4_vm1 Int)
(declare-const srv4_vm2 Int)
(declare-const srv4_vm3 Int)
(declare-const srv4_vm4 Int)
(declare-const srv4_vm5 Int)
(declare-const srv4_vm6 Int)
(declare-const srv4_vm7 Int)
(declare-const srv4_vm8 Int)
(declare-const srv4_vm9 Int)
(declare-const srv4_vm10 Int)
(declare-const srv5_vm0 Int)
(declare-const srv5_vm1 Int)
(declare-const srv5_vm2 Int)
(declare-const srv5_vm3 Int)
(declare-const srv5_vm4 Int)
(declare-const srv5_vm5 Int)
(declare-const srv5_vm6 Int)
(declare-const srv5_vm7 Int)
(declare-const srv5_vm8 Int)
(declare-const srv5_vm9 Int)
(declare-const srv5_vm10 Int)
(declare-const srv6_vm0 Int)
(declare-const srv6_vm1 Int)
(declare-const srv6_vm2 Int)
(declare-const srv6_vm3 Int)
(declare-const srv6_vm4 Int)
(declare-const srv6_vm5 Int)
(declare-const srv6_vm6 Int)
(declare-const srv6_vm7 Int)
(declare-const srv6_vm8 Int)
(declare-const srv6_vm9 Int)
(declare-const srv6_vm10 Int)
(declare-const srv7_vm0 Int)
(declare-const srv7_vm1 Int)
(declare-const srv7_vm2 Int)
(declare-const srv7_vm3 Int)
(declare-const srv7_vm4 Int)
(declare-const srv7_vm5 Int)
(declare-const srv7_vm6 Int)
(declare-const srv7_vm7 Int)
(declare-const srv7_vm8 Int)
(declare-const srv7_vm9 Int)
(declare-const srv7_vm10 Int)
(declare-const srv8_vm0 Int)
(declare-const srv8_vm1 Int)
(declare-const srv8_vm2 Int)
(declare-const srv8_vm3 Int)
(declare-const srv8_vm4 Int)
(declare-const srv8_vm5 Int)
(declare-const srv8_vm6 Int)
(declare-const srv8_vm7 Int)
(declare-const srv8_vm8 Int)
(declare-const srv8_vm9 Int)
(declare-const srv8_vm10 Int)
(declare-const srv9_vm0 Int)
(declare-const srv9_vm1 Int)
(declare-const srv9_vm2 Int)
(declare-const srv9_vm3 Int)
(declare-const srv9_vm4 Int)
(declare-const srv9_vm5 Int)
(declare-const srv9_vm6 Int)
(declare-const srv9_vm7 Int)
(declare-const srv9_vm8 Int)
(declare-const srv9_vm9 Int)
(declare-const srv9_vm10 Int)
(declare-const srv10_vm0 Int)
(declare-const srv10_vm1 Int)
(declare-const srv10_vm2 Int)
(declare-const srv10_vm3 Int)
(declare-const srv10_vm4 Int)
(declare-const srv10_vm5 Int)
(declare-const srv10_vm6 Int)
(declare-const srv10_vm7 Int)
(declare-const srv10_vm8 Int)
(declare-const srv10_vm9 Int)
(declare-const srv10_vm10 Int)
(declare-const use_srv0 Int)
(declare-const use_srv1 Int)
(declare-const use_srv2 Int)
(declare-const use_srv3 Int)
(declare-const use_srv4 Int)
(declare-const use_srv5 Int)
(declare-const use_srv6 Int)
(declare-const use_srv7 Int)
(declare-const use_srv8 Int)
(declare-const use_srv9 Int)
(declare-const use_srv10 Int)
(declare-const n_servers Int)
(assert (and (>= n_servers 0) (<= n_servers 11)))
(assert (and (>= use_srv0 0) (<= use_srv0 1)))
(assert (and (>= use_srv1 0) (<= use_srv1 1)))
(assert (and (>= use_srv2 0) (<= use_srv2 1)))
(assert (and (>= use_srv3 0) (<= use_srv3 1)))
(assert (and (>= use_srv4 0) (<= use_srv4 1)))
(assert (and (>= use_srv5 0) (<= use_srv5 1)))
(assert (and (>= use_srv6 0) (<= use_srv6 1)))
(assert (and (>= use_srv7 0) (<= use_srv7 1)))
(assert (and (>= use_srv8 0) (<= use_srv8 1)))
(assert (and (>= use_srv9 0) (<= use_srv9 1)))
(assert (and (>= use_srv10 0) (<= use_srv10 1)))
(assert (or (= srv0_vm0 0) (= srv0_vm0 1) ))
(assert (or (= srv0_vm1 0) (= srv0_vm1 1) ))
(assert (or (= srv0_vm2 0) (= srv0_vm2 1) ))
(assert (or (= srv0_vm3 0) (= srv0_vm3 1) ))
(assert (or (= srv0_vm4 0) (= srv0_vm4 1) ))
(assert (or (= srv0_vm5 0) (= srv0_vm5 1) ))
(assert (or (= srv0_vm6 0) (= srv0_vm6 1) ))
(assert (or (= srv0_vm7 0) (= srv0_vm7 1) ))
(assert (or (= srv0_vm8 0) (= srv0_vm8 1) ))
(assert (or (= srv0_vm9 0) (= srv0_vm9 1) ))
(assert (or (= srv0_vm10 0) (= srv0_vm10 1) ))
(assert (or (= srv1_vm0 0) (= srv1_vm0 1) ))
(assert (or (= srv1_vm1 0) (= srv1_vm1 1) ))
(assert (or (= srv1_vm2 0) (= srv1_vm2 1) ))
(assert (or (= srv1_vm3 0) (= srv1_vm3 1) ))
(assert (or (= srv1_vm4 0) (= srv1_vm4 1) ))
(assert (or (= srv1_vm5 0) (= srv1_vm5 1) ))
(assert (or (= srv1_vm6 0) (= srv1_vm6 1) ))
(assert (or (= srv1_vm7 0) (= srv1_vm7 1) ))
(assert (or (= srv1_vm8 0) (= srv1_vm8 1) ))
(assert (or (= srv1_vm9 0) (= srv1_vm9 1) ))
(assert (or (= srv1_vm10 0) (= srv1_vm10 1) ))
(assert (or (= srv2_vm0 0) (= srv2_vm0 1) ))
(assert (or (= srv2_vm1 0) (= srv2_vm1 1) ))
(assert (or (= srv2_vm2 0) (= srv2_vm2 1) ))
(assert (or (= srv2_vm3 0) (= srv2_vm3 1) ))
(assert (or (= srv2_vm4 0) (= srv2_vm4 1) ))
(assert (or (= srv2_vm5 0) (= srv2_vm5 1) ))
(assert (or (= srv2_vm6 0) (= srv2_vm6 1) ))
(assert (or (= srv2_vm7 0) (= srv2_vm7 1) ))
(assert (or (= srv2_vm8 0) (= srv2_vm8 1) ))
(assert (or (= srv2_vm9 0) (= srv2_vm9 1) ))
(assert (or (= srv2_vm10 0) (= srv2_vm10 1) ))
(assert (or (= srv3_vm0 0) (= srv3_vm0 1) ))
(assert (or (= srv3_vm1 0) (= srv3_vm1 1) ))
(assert (or (= srv3_vm2 0) (= srv3_vm2 1) ))
(assert (or (= srv3_vm3 0) (= srv3_vm3 1) ))
(assert (or (= srv3_vm4 0) (= srv3_vm4 1) ))
(assert (or (= srv3_vm5 0) (= srv3_vm5 1) ))
(assert (or (= srv3_vm6 0) (= srv3_vm6 1) ))
(assert (or (= srv3_vm7 0) (= srv3_vm7 1) ))
(assert (or (= srv3_vm8 0) (= srv3_vm8 1) ))
(assert (or (= srv3_vm9 0) (= srv3_vm9 1) ))
(assert (or (= srv3_vm10 0) (= srv3_vm10 1) ))
(assert (or (= srv4_vm0 0) (= srv4_vm0 1) ))
(assert (or (= srv4_vm1 0) (= srv4_vm1 1) ))
(assert (or (= srv4_vm2 0) (= srv4_vm2 1) ))
(assert (or (= srv4_vm3 0) (= srv4_vm3 1) ))
(assert (or (= srv4_vm4 0) (= srv4_vm4 1) ))
(assert (or (= srv4_vm5 0) (= srv4_vm5 1) ))
(assert (or (= srv4_vm6 0) (= srv4_vm6 1) ))
(assert (or (= srv4_vm7 0) (= srv4_vm7 1) ))
(assert (or (= srv4_vm8 0) (= srv4_vm8 1) ))
(assert (or (= srv4_vm9 0) (= srv4_vm9 1) ))
(assert (or (= srv4_vm10 0) (= srv4_vm10 1) ))
(assert (or (= srv5_vm0 0) (= srv5_vm0 1) ))
(assert (or (= srv5_vm1 0) (= srv5_vm1 1) ))
(assert (or (= srv5_vm2 0) (= srv5_vm2 1) ))
(assert (or (= srv5_vm3 0) (= srv5_vm3 1) ))
(assert (or (= srv5_vm4 0) (= srv5_vm4 1) ))
(assert (or (= srv5_vm5 0) (= srv5_vm5 1) ))
(assert (or (= srv5_vm6 0) (= srv5_vm6 1) ))
(assert (or (= srv5_vm7 0) (= srv5_vm7 1) ))
(assert (or (= srv5_vm8 0) (= srv5_vm8 1) ))
(assert (or (= srv5_vm9 0) (= srv5_vm9 1) ))
(assert (or (= srv5_vm10 0) (= srv5_vm10 1) ))
(assert (or (= srv6_vm0 0) (= srv6_vm0 1) ))
(assert (or (= srv6_vm1 0) (= srv6_vm1 1) ))
(assert (or (= srv6_vm2 0) (= srv6_vm2 1) ))
(assert (or (= srv6_vm3 0) (= srv6_vm3 1) ))
(assert (or (= srv6_vm4 0) (= srv6_vm4 1) ))
(assert (or (= srv6_vm5 0) (= srv6_vm5 1) ))
(assert (or (= srv6_vm6 0) (= srv6_vm6 1) ))
(assert (or (= srv6_vm7 0) (= srv6_vm7 1) ))
(assert (or (= srv6_vm8 0) (= srv6_vm8 1) ))
(assert (or (= srv6_vm9 0) (= srv6_vm9 1) ))
(assert (or (= srv6_vm10 0) (= srv6_vm10 1) ))
(assert (or (= srv7_vm0 0) (= srv7_vm0 1) ))
(assert (or (= srv7_vm1 0) (= srv7_vm1 1) ))
(assert (or (= srv7_vm2 0) (= srv7_vm2 1) ))
(assert (or (= srv7_vm3 0) (= srv7_vm3 1) ))
(assert (or (= srv7_vm4 0) (= srv7_vm4 1) ))
(assert (or (= srv7_vm5 0) (= srv7_vm5 1) ))
(assert (or (= srv7_vm6 0) (= srv7_vm6 1) ))
(assert (or (= srv7_vm7 0) (= srv7_vm7 1) ))
(assert (or (= srv7_vm8 0) (= srv7_vm8 1) ))
(assert (or (= srv7_vm9 0) (= srv7_vm9 1) ))
(assert (or (= srv7_vm10 0) (= srv7_vm10 1) ))
(assert (or (= srv8_vm0 0) (= srv8_vm0 1) ))
(assert (or (= srv8_vm1 0) (= srv8_vm1 1) ))
(assert (or (= srv8_vm2 0) (= srv8_vm2 1) ))
(assert (or (= srv8_vm3 0) (= srv8_vm3 1) ))
(assert (or (= srv8_vm4 0) (= srv8_vm4 1) ))
(assert (or (= srv8_vm5 0) (= srv8_vm5 1) ))
(assert (or (= srv8_vm6 0) (= srv8_vm6 1) ))
(assert (or (= srv8_vm7 0) (= srv8_vm7 1) ))
(assert (or (= srv8_vm8 0) (= srv8_vm8 1) ))
(assert (or (= srv8_vm9 0) (= srv8_vm9 1) ))
(assert (or (= srv8_vm10 0) (= srv8_vm10 1) ))
(assert (or (= srv9_vm0 0) (= srv9_vm0 1) ))
(assert (or (= srv9_vm1 0) (= srv9_vm1 1) ))
(assert (or (= srv9_vm2 0) (= srv9_vm2 1) ))
(assert (or (= srv9_vm3 0) (= srv9_vm3 1) ))
(assert (or (= srv9_vm4 0) (= srv9_vm4 1) ))
(assert (or (= srv9_vm5 0) (= srv9_vm5 1) ))
(assert (or (= srv9_vm6 0) (= srv9_vm6 1) ))
(assert (or (= srv9_vm7 0) (= srv9_vm7 1) ))
(assert (or (= srv9_vm8 0) (= srv9_vm8 1) ))
(assert (or (= srv9_vm9 0) (= srv9_vm9 1) ))
(assert (or (= srv9_vm10 0) (= srv9_vm10 1) ))
(assert (or (= srv10_vm0 0) (= srv10_vm0 1) ))
(assert (or (= srv10_vm1 0) (= srv10_vm1 1) ))
(assert (or (= srv10_vm2 0) (= srv10_vm2 1) ))
(assert (or (= srv10_vm3 0) (= srv10_vm3 1) ))
(assert (or (= srv10_vm4 0) (= srv10_vm4 1) ))
(assert (or (= srv10_vm5 0) (= srv10_vm5 1) ))
(assert (or (= srv10_vm6 0) (= srv10_vm6 1) ))
(assert (or (= srv10_vm7 0) (= srv10_vm7 1) ))
(assert (or (= srv10_vm8 0) (= srv10_vm8 1) ))
(assert (or (= srv10_vm9 0) (= srv10_vm9 1) ))
(assert (or (= srv10_vm10 0) (= srv10_vm10 1) ))

(assert (= (+ srv0_vm0 srv1_vm0 srv2_vm0 srv3_vm0 srv4_vm0 srv5_vm0 srv6_vm0 srv7_vm0 srv8_vm0 srv9_vm0 srv10_vm0 ) 1))
(assert (= (+ srv0_vm1 srv1_vm1 srv2_vm1 srv3_vm1 srv4_vm1 srv5_vm1 srv6_vm1 srv7_vm1 srv8_vm1 srv9_vm1 srv10_vm1 ) 1))
(assert (= (+ srv0_vm2 srv1_vm2 srv2_vm2 srv3_vm2 srv4_vm2 srv5_vm2 srv6_vm2 srv7_vm2 srv8_vm2 srv9_vm2 srv10_vm2 ) 1))
(assert (= (+ srv0_vm3 srv1_vm3 srv2_vm3 srv3_vm3 srv4_vm3 srv5_vm3 srv6_vm3 srv7_vm3 srv8_vm3 srv9_vm3 srv10_vm3 ) 1))
(assert (= (+ srv0_vm4 srv1_vm4 srv2_vm4 srv3_vm4 srv4_vm4 srv5_vm4 srv6_vm4 srv7_vm4 srv8_vm4 srv9_vm4 srv10_vm4 ) 1))
(assert (= (+ srv0_vm5 srv1_vm5 srv2_vm5 srv3_vm5 srv4_vm5 srv5_vm5 srv6_vm5 srv7_vm5 srv8_vm5 srv9_vm5 srv10_vm5 ) 1))
(assert (= (+ srv0_vm6 srv1_vm6 srv2_vm6 srv3_vm6 srv4_vm6 srv5_vm6 srv6_vm6 srv7_vm6 srv8_vm6 srv9_vm6 srv10_vm6 ) 1))
(assert (= (+ srv0_vm7 srv1_vm7 srv2_vm7 srv3_vm7 srv4_vm7 srv5_vm7 srv6_vm7 srv7_vm7 srv8_vm7 srv9_vm7 srv10_vm7 ) 1))
(assert (= (+ srv0_vm8 srv1_vm8 srv2_vm8 srv3_vm8 srv4_vm8 srv5_vm8 srv6_vm8 srv7_vm8 srv8_vm8 srv9_vm8 srv10_vm8 ) 1))
(assert (= (+ srv0_vm9 srv1_vm9 srv2_vm9 srv3_vm9 srv4_vm9 srv5_vm9 srv6_vm9 srv7_vm9 srv8_vm9 srv9_vm9 srv10_vm9 ) 1))
(assert (= (+ srv0_vm10 srv1_vm10 srv2_vm10 srv3_vm10 srv4_vm10 srv5_vm10 srv6_vm10 srv7_vm10 srv8_vm10 srv9_vm10 srv10_vm10 ) 1))

(assert (<= (+ (* srv0_vm0 1) (* srv0_vm1 16) (* srv0_vm2 4) (* srv0_vm3 2) (* srv0_vm4 4) (* srv0_vm5 8) (* srv0_vm6 2) (* srv0_vm7 4) (* srv0_vm8 16) (* srv0_vm9 16) (* srv0_vm10 12) ) 2))
(assert (<= (+ (* srv0_vm0 100) (* srv0_vm1 900) (* srv0_vm2 710) (* srv0_vm3 800) (* srv0_vm4 7000) (* srv0_vm5 4000) (* srv0_vm6 800) (* srv0_vm7 2500) (* srv0_vm8 450) (* srv0_vm9 3700) (* srv0_vm10 1300) ) 100))
(assert (<= (+ (* srv1_vm0 1) (* srv1_vm1 16) (* srv1_vm2 4) (* srv1_vm3 2) (* srv1_vm4 4) (* srv1_vm5 8) (* srv1_vm6 2) (* srv1_vm7 4) (* srv1_vm8 16) (* srv1_vm9 16) (* srv1_vm10 12) ) 4))
(assert (<= (+ (* srv1_vm0 100) (* srv1_vm1 900) (* srv1_vm2 710) (* srv1_vm3 800) (* srv1_vm4 7000) (* srv1_vm5 4000) (* srv1_vm6 800) (* srv1_vm7 2500) (* srv1_vm8 450) (* srv1_vm9 3700) (* srv1_vm10 1300) ) 800))
(assert (<= (+ (* srv2_vm0 1) (* srv2_vm1 16) (* srv2_vm2 4) (* srv2_vm3 2) (* srv2_vm4 4) (* srv2_vm5 8) (* srv2_vm6 2) (* srv2_vm7 4) (* srv2_vm8 16) (* srv2_vm9 16) (* srv2_vm10 12) ) 4))
(assert (<= (+ (* srv2_vm0 100) (* srv2_vm1 900) (* srv2_vm2 710) (* srv2_vm3 800) (* srv2_vm4 7000) (* srv2_vm5 4000) (* srv2_vm6 800) (* srv2_vm7 2500) (* srv2_vm8 450) (* srv2_vm9 3700) (* srv2_vm10 1300) ) 1000))
(assert (<= (+ (* srv3_vm0 1) (* srv3_vm1 16) (* srv3_vm2 4) (* srv3_vm3 2) (* srv3_vm4 4) (* srv3_vm5 8) (* srv3_vm6 2) (* srv3_vm7 4) (* srv3_vm8 16) (* srv3_vm9 16) (* srv3_vm10 12) ) 16))
(assert (<= (+ (* srv3_vm0 100) (* srv3_vm1 900) (* srv3_vm2 710) (* srv3_vm3 800) (* srv3_vm4 7000) (* srv3_vm5 4000) (* srv3_vm6 800) (* srv3_vm7 2500) (* srv3_vm8 450) (* srv3_vm9 3700) (* srv3_vm10 1300) ) 8000))
(assert (<= (+ (* srv4_vm0 1) (* srv4_vm1 16) (* srv4_vm2 4) (* srv4_vm3 2) (* srv4_vm4 4) (* srv4_vm5 8) (* srv4_vm6 2) (* srv4_vm7 4) (* srv4_vm8 16) (* srv4_vm9 16) (* srv4_vm10 12) ) 8))
(assert (<= (+ (* srv4_vm0 100) (* srv4_vm1 900) (* srv4_vm2 710) (* srv4_vm3 800) (* srv4_vm4 7000) (* srv4_vm5 4000) (* srv4_vm6 800) (* srv4_vm7 2500) (* srv4_vm8 450) (* srv4_vm9 3700) (* srv4_vm10 1300) ) 3000))
(assert (<= (+ (* srv5_vm0 1) (* srv5_vm1 16) (* srv5_vm2 4) (* srv5_vm3 2) (* srv5_vm4 4) (* srv5_vm5 8) (* srv5_vm6 2) (* srv5_vm7 4) (* srv5_vm8 16) (* srv5_vm9 16) (* srv5_vm10 12) ) 16))
(assert (<= (+ (* srv5_vm0 100) (* srv5_vm1 900) (* srv5_vm2 710) (* srv5_vm3 800) (* srv5_vm4 7000) (* srv5_vm5 4000) (* srv5_vm6 800) (* srv5_vm7 2500) (* srv5_vm8 450) (* srv5_vm9 3700) (* srv5_vm10 1300) ) 6000))
(assert (<= (+ (* srv6_vm0 1) (* srv6_vm1 16) (* srv6_vm2 4) (* srv6_vm3 2) (* srv6_vm4 4) (* srv6_vm5 8) (* srv6_vm6 2) (* srv6_vm7 4) (* srv6_vm8 16) (* srv6_vm9 16) (* srv6_vm10 12) ) 16))
(assert (<= (+ (* srv6_vm0 100) (* srv6_vm1 900) (* srv6_vm2 710) (* srv6_vm3 800) (* srv6_vm4 7000) (* srv6_vm5 4000) (* srv6_vm6 800) (* srv6_vm7 2500) (* srv6_vm8 450) (* srv6_vm9 3700) (* srv6_vm10 1300) ) 4000))
(assert (<= (+ (* srv7_vm0 1) (* srv7_vm1 16) (* srv7_vm2 4) (* srv7_vm3 2) (* srv7_vm4 4) (* srv7_vm5 8) (* srv7_vm6 2) (* srv7_vm7 4) (* srv7_vm8 16) (* srv7_vm9 16) (* srv7_vm10 12) ) 32))
(assert (<= (+ (* srv7_vm0 100) (* srv7_vm1 900) (* srv7_vm2 710) (* srv7_vm3 800) (* srv7_vm4 7000) (* srv7_vm5 4000) (* srv7_vm6 800) (* srv7_vm7 2500) (* srv7_vm8 450) (* srv7_vm9 3700) (* srv7_vm10 1300) ) 2000))
(assert (<= (+ (* srv8_vm0 1) (* srv8_vm1 16) (* srv8_vm2 4) (* srv8_vm3 2) (* srv8_vm4 4) (* srv8_vm5 8) (* srv8_vm6 2) (* srv8_vm7 4) (* srv8_vm8 16) (* srv8_vm9 16) (* srv8_vm10 12) ) 8))
(assert (<= (+ (* srv8_vm0 100) (* srv8_vm1 900) (* srv8_vm2 710) (* srv8_vm3 800) (* srv8_vm4 7000) (* srv8_vm5 4000) (* srv8_vm6 800) (* srv8_vm7 2500) (* srv8_vm8 450) (* srv8_vm9 3700) (* srv8_vm10 1300) ) 1000))
(assert (<= (+ (* srv9_vm0 1) (* srv9_vm1 16) (* srv9_vm2 4) (* srv9_vm3 2) (* srv9_vm4 4) (* srv9_vm5 8) (* srv9_vm6 2) (* srv9_vm7 4) (* srv9_vm8 16) (* srv9_vm9 16) (* srv9_vm10 12) ) 16))
(assert (<= (+ (* srv9_vm0 100) (* srv9_vm1 900) (* srv9_vm2 710) (* srv9_vm3 800) (* srv9_vm4 7000) (* srv9_vm5 4000) (* srv9_vm6 800) (* srv9_vm7 2500) (* srv9_vm8 450) (* srv9_vm9 3700) (* srv9_vm10 1300) ) 10000))
(assert (<= (+ (* srv10_vm0 1) (* srv10_vm1 16) (* srv10_vm2 4) (* srv10_vm3 2) (* srv10_vm4 4) (* srv10_vm5 8) (* srv10_vm6 2) (* srv10_vm7 4) (* srv10_vm8 16) (* srv10_vm9 16) (* srv10_vm10 12) ) 8))
(assert (<= (+ (* srv10_vm0 100) (* srv10_vm1 900) (* srv10_vm2 710) (* srv10_vm3 800) (* srv10_vm4 7000) (* srv10_vm5 4000) (* srv10_vm6 800) (* srv10_vm7 2500) (* srv10_vm8 450) (* srv10_vm9 3700) (* srv10_vm10 1300) ) 1000))

(assert (=> (or (= srv0_vm0 1) (= srv0_vm1 1) (= srv0_vm2 1) (= srv0_vm3 1) (= srv0_vm4 1) (= srv0_vm5 1) (= srv0_vm6 1) (= srv0_vm7 1) (= srv0_vm8 1) (= srv0_vm9 1) (= srv0_vm10 1) ) (= use_srv0 1)))
(assert (=> (not (or (= srv0_vm0 1) (= srv0_vm1 1) (= srv0_vm2 1) (= srv0_vm3 1) (= srv0_vm4 1) (= srv0_vm5 1) (= srv0_vm6 1) (= srv0_vm7 1) (= srv0_vm8 1) (= srv0_vm9 1) (= srv0_vm10 1) )) (= use_srv0 0)))
(assert (=> (or (= srv1_vm0 1) (= srv1_vm1 1) (= srv1_vm2 1) (= srv1_vm3 1) (= srv1_vm4 1) (= srv1_vm5 1) (= srv1_vm6 1) (= srv1_vm7 1) (= srv1_vm8 1) (= srv1_vm9 1) (= srv1_vm10 1) ) (= use_srv1 1)))
(assert (=> (not (or (= srv1_vm0 1) (= srv1_vm1 1) (= srv1_vm2 1) (= srv1_vm3 1) (= srv1_vm4 1) (= srv1_vm5 1) (= srv1_vm6 1) (= srv1_vm7 1) (= srv1_vm8 1) (= srv1_vm9 1) (= srv1_vm10 1) )) (= use_srv1 0)))
(assert (=> (or (= srv2_vm0 1) (= srv2_vm1 1) (= srv2_vm2 1) (= srv2_vm3 1) (= srv2_vm4 1) (= srv2_vm5 1) (= srv2_vm6 1) (= srv2_vm7 1) (= srv2_vm8 1) (= srv2_vm9 1) (= srv2_vm10 1) ) (= use_srv2 1)))
(assert (=> (not (or (= srv2_vm0 1) (= srv2_vm1 1) (= srv2_vm2 1) (= srv2_vm3 1) (= srv2_vm4 1) (= srv2_vm5 1) (= srv2_vm6 1) (= srv2_vm7 1) (= srv2_vm8 1) (= srv2_vm9 1) (= srv2_vm10 1) )) (= use_srv2 0)))
(assert (=> (or (= srv3_vm0 1) (= srv3_vm1 1) (= srv3_vm2 1) (= srv3_vm3 1) (= srv3_vm4 1) (= srv3_vm5 1) (= srv3_vm6 1) (= srv3_vm7 1) (= srv3_vm8 1) (= srv3_vm9 1) (= srv3_vm10 1) ) (= use_srv3 1)))
(assert (=> (not (or (= srv3_vm0 1) (= srv3_vm1 1) (= srv3_vm2 1) (= srv3_vm3 1) (= srv3_vm4 1) (= srv3_vm5 1) (= srv3_vm6 1) (= srv3_vm7 1) (= srv3_vm8 1) (= srv3_vm9 1) (= srv3_vm10 1) )) (= use_srv3 0)))
(assert (=> (or (= srv4_vm0 1) (= srv4_vm1 1) (= srv4_vm2 1) (= srv4_vm3 1) (= srv4_vm4 1) (= srv4_vm5 1) (= srv4_vm6 1) (= srv4_vm7 1) (= srv4_vm8 1) (= srv4_vm9 1) (= srv4_vm10 1) ) (= use_srv4 1)))
(assert (=> (not (or (= srv4_vm0 1) (= srv4_vm1 1) (= srv4_vm2 1) (= srv4_vm3 1) (= srv4_vm4 1) (= srv4_vm5 1) (= srv4_vm6 1) (= srv4_vm7 1) (= srv4_vm8 1) (= srv4_vm9 1) (= srv4_vm10 1) )) (= use_srv4 0)))
(assert (=> (or (= srv5_vm0 1) (= srv5_vm1 1) (= srv5_vm2 1) (= srv5_vm3 1) (= srv5_vm4 1) (= srv5_vm5 1) (= srv5_vm6 1) (= srv5_vm7 1) (= srv5_vm8 1) (= srv5_vm9 1) (= srv5_vm10 1) ) (= use_srv5 1)))
(assert (=> (not (or (= srv5_vm0 1) (= srv5_vm1 1) (= srv5_vm2 1) (= srv5_vm3 1) (= srv5_vm4 1) (= srv5_vm5 1) (= srv5_vm6 1) (= srv5_vm7 1) (= srv5_vm8 1) (= srv5_vm9 1) (= srv5_vm10 1) )) (= use_srv5 0)))
(assert (=> (or (= srv6_vm0 1) (= srv6_vm1 1) (= srv6_vm2 1) (= srv6_vm3 1) (= srv6_vm4 1) (= srv6_vm5 1) (= srv6_vm6 1) (= srv6_vm7 1) (= srv6_vm8 1) (= srv6_vm9 1) (= srv6_vm10 1) ) (= use_srv6 1)))
(assert (=> (not (or (= srv6_vm0 1) (= srv6_vm1 1) (= srv6_vm2 1) (= srv6_vm3 1) (= srv6_vm4 1) (= srv6_vm5 1) (= srv6_vm6 1) (= srv6_vm7 1) (= srv6_vm8 1) (= srv6_vm9 1) (= srv6_vm10 1) )) (= use_srv6 0)))
(assert (=> (or (= srv7_vm0 1) (= srv7_vm1 1) (= srv7_vm2 1) (= srv7_vm3 1) (= srv7_vm4 1) (= srv7_vm5 1) (= srv7_vm6 1) (= srv7_vm7 1) (= srv7_vm8 1) (= srv7_vm9 1) (= srv7_vm10 1) ) (= use_srv7 1)))
(assert (=> (not (or (= srv7_vm0 1) (= srv7_vm1 1) (= srv7_vm2 1) (= srv7_vm3 1) (= srv7_vm4 1) (= srv7_vm5 1) (= srv7_vm6 1) (= srv7_vm7 1) (= srv7_vm8 1) (= srv7_vm9 1) (= srv7_vm10 1) )) (= use_srv7 0)))
(assert (=> (or (= srv8_vm0 1) (= srv8_vm1 1) (= srv8_vm2 1) (= srv8_vm3 1) (= srv8_vm4 1) (= srv8_vm5 1) (= srv8_vm6 1) (= srv8_vm7 1) (= srv8_vm8 1) (= srv8_vm9 1) (= srv8_vm10 1) ) (= use_srv8 1)))
(assert (=> (not (or (= srv8_vm0 1) (= srv8_vm1 1) (= srv8_vm2 1) (= srv8_vm3 1) (= srv8_vm4 1) (= srv8_vm5 1) (= srv8_vm6 1) (= srv8_vm7 1) (= srv8_vm8 1) (= srv8_vm9 1) (= srv8_vm10 1) )) (= use_srv8 0)))
(assert (=> (or (= srv9_vm0 1) (= srv9_vm1 1) (= srv9_vm2 1) (= srv9_vm3 1) (= srv9_vm4 1) (= srv9_vm5 1) (= srv9_vm6 1) (= srv9_vm7 1) (= srv9_vm8 1) (= srv9_vm9 1) (= srv9_vm10 1) ) (= use_srv9 1)))
(assert (=> (not (or (= srv9_vm0 1) (= srv9_vm1 1) (= srv9_vm2 1) (= srv9_vm3 1) (= srv9_vm4 1) (= srv9_vm5 1) (= srv9_vm6 1) (= srv9_vm7 1) (= srv9_vm8 1) (= srv9_vm9 1) (= srv9_vm10 1) )) (= use_srv9 0)))
(assert (=> (or (= srv10_vm0 1) (= srv10_vm1 1) (= srv10_vm2 1) (= srv10_vm3 1) (= srv10_vm4 1) (= srv10_vm5 1) (= srv10_vm6 1) (= srv10_vm7 1) (= srv10_vm8 1) (= srv10_vm9 1) (= srv10_vm10 1) ) (= use_srv10 1)))
(assert (=> (not (or (= srv10_vm0 1) (= srv10_vm1 1) (= srv10_vm2 1) (= srv10_vm3 1) (= srv10_vm4 1) (= srv10_vm5 1) (= srv10_vm6 1) (= srv10_vm7 1) (= srv10_vm8 1) (= srv10_vm9 1) (= srv10_vm10 1) )) (= use_srv10 0)))
(assert (= n_servers (+ use_srv0 use_srv1 use_srv2 use_srv3 use_srv4 use_srv5 use_srv6 use_srv7 use_srv8 use_srv9 use_srv10 )))
(minimize n_servers)
(check-sat)
(get-objectives)
(get-model)
(exit)