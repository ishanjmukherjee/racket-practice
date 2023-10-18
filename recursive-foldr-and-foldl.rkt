; type signature: (X X -> X) (listof X) -> X
; Implementing foldl and foldr using recursion

(define recursive-foldr
  (λ (func start inp-list)
    (if (empty? inp-list)
        start
        (func (first inp-list)
              (recursive-foldr func
                               start
                               (rest inp-list))))))

(define recursive-foldl
  (λ (func start inp-list)
    (if (empty? inp-list)
        start
        (func (recursive-foldl func
                               start
                               (rest inp-list))
              (first inp-list)))))
