(define ormap
  (λ (p inp-list)
    (if (empty? inp-list)
        false
        (cond [(p (first inp-list))
               true]
              [else
               (ormap p (rest inp-list))]))))

(define andmap
  (λ (p inp-list)
    (if (empty? inp-list)
        true
        (cond [(not (p (first inp-list)))
               false]
              [else
               (andmap p (rest inp-list))]))))
