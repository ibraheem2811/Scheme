#lang racket
(require (planet dyoo/simply-scheme:2:2))


(define (add-three number)
  (+ number 3))


(define (add-three-to-each sent)
  (every (lambda (number) (+ number 3)) sent))

(define (make-adder num)
(lambda (x) (+ x num)))

(define (same-arg-twice fn)
(lambda (arg) (fn arg arg)))


(define (flip fn)
(lambda (a b) (fn b a)))


;Lesson 

;1. (every (lambda (wd) (se (first wd) wd (last wd))) 
;           ’(only a northern song))
; (o only y a a a n northern n s song g)


;2. (keep (lambda (n) (member? 9 n)) '(4 81 909 781 1969 1776))
;'(909 1969)

;3. (accumulate (lambda (this that)
;          (if (> (count this) (count that)) this that))
;         '(wild honey pie))
;        Honey

;4.  (keep (lambda (person) (member? person '(john paul george ringo)))
;'(mick smokey paul diana bill geddy john yoko keith reparata))
; (paul john)

;5.(keep (lambda (person) (member? 'e person))
;'(mick smokey paul diana bill geddy john yoko keith reparata))
;'(smokey geddy keith reparata)


;6. ((make-adder 4) 7)
;   11


;Exercise


;1.((same-arg-twice word) ’hello)
; hellohello


;2  ((same-arg-twice *) 4)
;   16

;3. ((flip -) 5 8)
;   3

;4. ((flip se) ’goodbye ’hello)
; (HELLO GOODBYE)







