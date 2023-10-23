(define count-down
  (λ (num)
    (if (= num 0)
        '()
        (cons num
              (count-down (- num 1))))))
