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
250 READ A$
260 L(I) = ASC(A$)
270 NEXT I
280 RANDOMIZE
290 FOR J = 1 TO 52
300 LET P = INT(52 * RND + 1)
310 SWAP L(J), L(P)
320 NEXT J
330 LET P = 1
340 LET A = 0
350 LET B = 0
360 LET M1 = L(P)
370 LET P = P + 1
380 LET M2 = L(P)
390 PRINT
400 PRINT "YOU: "; MID$(CHR$(M1), INSTR(CHR$(M1), "-") + 1); " COMPUTER: "; MID$(CHR$(M2), INSTR(CHR$(M2), "-") + 1)
410 LET N1 = INT((M1 - 53) / 4)
420 LET N2 = INT((M2 - 53) / 4)
430 IF N1 > N2 THEN 460
440 IF N1 < N2 THEN 500
450 PRINT "TIE, NO SCORE CHANGE."
460 LET A = A + 1
470 PRINT "YOU WIN. YOU HAVE "; A; " POINT(S). COMPUTER HAS "; B
480 GOTO 540
500 LET B = B + 1
510 PRINT "COMPUTER WINS. YOU HAVE "; A; " POINT(S). COMPUTER HAS "; B
520 GOTO 540
530 PRINT "TIE, NO SCORE CHANGE."
540 IF P < 52 THEN 550
550 PRINT "DO YOU WANT TO CONTINUE";
560 INPUT V$
570 IF V$ = "YES" THEN 360
580 IF V$ = "NO" THEN 610
590 PRINT "YES OR NO, PLEASE."
600 GOTO 550
610 PRINT "YOU HAVE RUN OUT OF CARDS. FINAL SCORE: YOU -- "; A
620 PRINT "COMPUTER -- "; B
630 PRINT "THANKS FOR PLAYING."
640 END
650 DATA S-2, H-2, C-2, D-2, S-3, H-3, C-3, D-3
660 DATA S-4, H-4, C-4, D-4, S-5, H-5, C-5, D-5
670 DATA S-6, H-6, C-6, D-6, S-7, H-7, C-7, D-7
680 DATA S-8, H-8, C-8, D-8, S-9, H-9, C-9, D-9
690 DATA S-10, H-10, C-10, D-10, S-J, H-J, C-J, D-J
700 DATA S-Q, H-Q, C-Q, D-Q, S-K, H-K, C-K, D-K
710 DATA S-A, H-A, C-A, D-A
