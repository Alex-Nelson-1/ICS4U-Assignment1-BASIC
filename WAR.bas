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
230 DIM L(52)
240 FOR I = 1 TO 52
250 READ N
260 L(I) = N
270 NEXT I
280 RANDOMIZE
290 FOR J = 1 TO 52
300 LET P = INT(52 * RND) + 1
310 SWAP L(J), L(P)
320 NEXT J
330 LET P = 1
340 LET A = 0
350 LET B = 0

' Game loop begins here
360 IF P > 51 THEN 610 ' End game if we've gone through all cards
370 LET M1 = L(P)
380 LET P = P + 1
390 LET M2 = L(P)
400 LET P = P + 1

410 PRINT
420 PRINT "YOU: "; M1; " COMPUTER: "; M2
430 IF M1 > M2 THEN 460
440 IF M1 < M2 THEN 500
450 PRINT "TIE, NO SCORE CHANGE."
460 LET A = A + 1
470 PRINT "YOU WIN. YOU HAVE "; A; " POINT(S). COMPUTER HAS "; B
480 GOTO 540
500 LET B = B + 1
510 PRINT "COMPUTER WINS. YOU HAVE "; A; " POINT(S). COMPUTER HAS "; B
520 GOTO 540
530 PRINT "TIE, NO SCORE CHANGE."

540 PRINT "DO YOU WANT TO CONTINUE";
550 INPUT V$
560 IF V$ = "YES" THEN 360
570 IF V$ = "NO" THEN 610
580 PRINT "YES OR NO, PLEASE."
590 GOTO 550

610 PRINT "YOU HAVE RUN OUT OF CARDS. FINAL SCORE: YOU -- "; A
620 PRINT "COMPUTER -- "; B
630 PRINT "THANKS FOR PLAYING."
640 END

' Cards represented by numeric values for simplicity
650 DATA 2, 2, 2, 2, 3, 3, 3, 3
660 DATA 4, 4, 4, 4, 5, 5, 5, 5
670 DATA 6, 6, 6, 6, 7, 7, 7, 7
680 DATA 8, 8, 8, 8, 9, 9, 9, 9
690 DATA 10, 10, 10, 10, 11, 11, 11, 11
700 DATA 12, 12, 12, 12, 13, 13, 13, 13
710 DATA 14, 14, 14, 14

