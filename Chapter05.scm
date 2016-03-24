#lang racket
(require (planet dyoo/simply-scheme:2:2))

(define (greet name)
    (if (equal? (first name) 'professor)
        (se '( i hope i am not bothering you) 'professor (last name))
        (se '(good to see you) (first name))))


(define (vowel? letter)
  (member? letter 'aeiou))


(define (buzz num)
  (if (or (divisible? num 7) (member? 7 num))
      'buzz
      num))

(define (divisible? big little)
  (= (remainder big little) 0))
  
(define (plural wd)
  (if (equal? (last wd) 'y)
      (word (bl wd) 'ies)
      (word wd 's)))


(define (roman-value letter)
(cond ((equal? letter ’i) 1)
((equal? letter ’v) 5)
((equal? letter ’x) 10)
((equal? letter ’l) 50)
((equal? letter ’c) 100)
((equal? letter ’d) 500)
((equal? letter ’m) 1000)
(else ’huh?)))



;Lesson


; (greet '(matt wright))
;'(good to see you matt)
; (greet '(professor harold abelson))
;'(i hope i am not bothering you professor abelson)
; (if #t (+ 4 5) (* 2 7))
;9
; (member? 'mick '(dave dee dozy beaky mick and tich))
;#t
; (member? 'mick '(john paul george ringo))
;#f
; (member? 'e 'truly)
;#f
; (member? 'y 'truly)
;#t


;Exercise

;1. (+ 3 4)
;7
;2. (= 67 67)
;#t
;3. (? 98 97)
 ;cannot reference an identifier before its definition
;4. (> 98 97)
;#t
;5.(before? 'zorn 'coleman)
;#f
;6. (before? 'pete 'ringo)
;#t
;7. (empty? '(abbey road))
;#f
;8. (empty? '())
;#t
; 9.(empty? 'hi)
;#f
;10. (empty? (bf (bf 'hi)))
;#t
; (empty? "")
;#t
;11. (number? 'three)
;#f
;12. (number? 74)
;#t
;13. (boolean? #f)
;#t
;14. (boolean? '(the beatles))
;#f
;15. (boolean? 235)
;#f
;16. (boolean? #t)
;#t
;17. (word? 'flying)
;#t
;18. (word '(dig it))

;19. (word? '(dig it))
;#f
;20. (word? 87)
;#t
;21. (sentence? 'wait)
;#f
;22. (sentence? '(what goes on))
;#t


