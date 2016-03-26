#lang racket
(require (planet dyoo/simply-scheme:2:2))


(define (make-conjugator prefix ending)
(lambda (verb) (sentence prefix (word verb ending))))

(define third-person (make-conjugator 'she 's))

(define third-person-plural-past (make-conjugator 'they 'ed))

(define second-person-future-perfect
  (make-conjugator '(you will have) 'ed))

(define (two-firsts sent)
  (se (first (first sent))
      (first (last sent))))

(define (three-firsts sent)
(se (first (first sent))
(first (first (bf sent)))
(first (last sent))))

(define (plural noun)
(if (equal? (last noun) 'y)
(word (bl noun) 'ies)
(word noun 's)))

(define (sent-of-first-two wd)
(se (first wd) (first (bf wd))))


> (define (g wd)
(se (word 'with wd) 'you))




;Lesson

;(third-person 'program)
;'(she programs)


;(third-person-plural-past 'play)
;'(they played)


;(second-person-future-perfect 'laugh)
;'(you will have laughed)

;(two-firsts '(john lennon))
;'(j l)

;(two-firsts '(george harrison))
;'(g h)

;(every last '(while my guitar gently weeps))
;'(e y r y s)

;(every - '(4 5 7 8 9))
;'(-4 -5 -7 -8 -9)

;(three-firsts '(james paul mccartney))
;'(j p m)

;(every plural '(beatle turtle holly kink zombie))
;'(beatles turtles hollies kinks zombies)


;Execise

;1.(every sent-of-first-two '(the inner light))
  ;'(t h i n l i)


;2.(every sent-of-first-two '(tell me what you see))
;'(t e m e w h y o s e)


;3.(every g '(in out))
;'(within you without you)


;4.(keep even? '(1 2 3 4 5))
;'(2 4)


;5.(keep number? 'zonk23hey9)
;  239


;6.(accumulate max '(128 32 134 136))
; 136




