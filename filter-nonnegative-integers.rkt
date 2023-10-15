; type signature: (listof number) -> (listof number)
; Filter all nonnegative integers from a list

(define filter-nonnegative-integers
  (λ (inp_list)
    (filter (λ (num)
              (and (integer? num) (>= num 0)))
            inp_list)))

(check-expect (filter-nonnegative-integers (list 1 100 0 -1 9.4))
              (list 1 100 0))
