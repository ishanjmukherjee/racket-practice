; type signature: (listof number) -> number
; Sums the elements of a list

(define sum-list
  (λ (inp-list)
    (if (empty? inp-list)
        0
        (+ (first inp-list)
           (sum-list (rest inp-list))))))
