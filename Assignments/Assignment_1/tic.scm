#lang racket

;;;;;;;;;;;;;;;;;;;;;;; Felix Singerman 7970742 ;;;;;;;;;;;;;;;;;;;;;;;;

; the players
(define x 'X)
(define o 'O)

; the way you can win
(define win? '((1 2 3) (4 5 6) (7 8 9) (1 5 9) (3 5 7) (1 4 7) (2 5 8) (3 6 9)))

;the board
(define the-board
  '((1 2 3)
    (4 5 6)
    (7 8 9)))

; output the board 
(define (output-the-board board)
  (begin
    (newline)
    (display (the-board))
    (newline)))

; moving the players
(define (move board player)
  ())
         

; run this command to start the game
(define (start board player)
  (begin
    (output-the-board board)
    ))

(start the-board x)