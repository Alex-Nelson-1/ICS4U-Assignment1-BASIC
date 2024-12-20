100 PRINT "THIS IS THE CARD GAME OF WAR. EACH CARD IS GIVEN BY SUIT-S"
110 PRINT "AS S-7 FOR SPADE 7."
120 PRINT "DO YOU WANT DIRECTIONS";
130 INPUT B$
140 IF B$ = "NO" THEN 210
150 IF B$ = "YES" THEN 180
160 PRINT "YES OR NO, PLEASE."
170 GOTO 120
180 PRINT "THE COMPUTER GIVES YOU AND IT A 'CARD'. THE HIGHER 'CARD'"
190 PRINT "(NUMERICALLY) WINS. THE GAME ENDS WHEN YOU CHOOSE NOT"
200 PRINT "TO CONTINUE OR WHEN YOU HAVE FINISHED THE PACK."
210 PRINT
220 PRINT
230 DIM L(52), SUITS$(4)
240 FOR I = 1 TO 52
250 READ N
260 L(I) = N
270 NEXT I
280 FOR I = 1 TO 4
290 READ SUITS$(I)
300 NEXT I
310 RANDOMIZE
320 FOR J = 1 TO 52
330 LET P = INT(52 * RND) + 1
340 SWAP L(J), L(P)
350 NEXT J
360 LET P = 1
370 LET A = 0
380 LET B = 0

' Game loop begins here
390 IF P > 51 THEN 650 ' End game if we've gone through all cards
400 LET M1 = L(P)
410 LET S1$ = SUITS$(INT(4 * RND) + 1) ' Randomly select a suit for the player card
420 LET P = P + 1
430 LET M2 = L(P)
440 LET S2$ = SUITS$(INT(4 * RND) + 1) ' Randomly select a suit for the computer card
450 LET P = P + 1

460 PRINT
470 PRINT "YOU: "; S1$; "-"; M1; " COMPUTER: "; S2$; "-"; M2
480 IF M1 > M2 THEN 510
490 IF M1 < M2 THEN 550
500 PRINT "TIE, NO SCORE CHANGE."
505 GOTO 590 ' Skip incrementing scores on a tie
510 LET A = A + 1
520 PRINT "YOU WIN. YOU HAVE "; A; " POINT(S). COMPUTER HAS "; B
530 GOTO 590
550 LET B = B + 1
560 PRINT "COMPUTER WINS. YOU HAVE "; A; " POINT(S). COMPUTER HAS "; B

590 PRINT "DO YOU WANT TO CONTINUE";
600 INPUT V$
610 IF V$ = "YES" THEN 390
620 IF V$ = "NO" THEN 650
630 PRINT "YES OR NO, PLEASE."
640 GOTO 600

650 PRINT "YOU HAVE RUN OUT OF CARDS. FINAL SCORE: YOU -- "; A
660 PRINT "COMPUTER -- "; B
670 PRINT "THANKS FOR PLAYING."
680 END

' Cards represented by numeric values
690 DATA 2, 2, 2, 2, 3, 3, 3, 3
700 DATA 4, 4, 4, 4, 5, 5, 5, 5
710 DATA 6, 6, 6, 6, 7, 7, 7, 7
720 DATA 8, 8, 8, 8, 9, 9, 9, 9
730 DATA 10, 10, 10, 10, 11, 11, 11, 11
740 DATA 12, 12, 12, 12, 13, 13, 13, 13
750 DATA 14, 14, 14, 14

' Suits data set
760 DATA "S", "H", "C", "D"

