; type signature: number (listof number) -> (listof number)
; Adds a number x to every element of a list

(define add-x-to-list
  (λ (x inp_l)
    (map
     (λ (num)
       (+ x num))
     inp_l)))
