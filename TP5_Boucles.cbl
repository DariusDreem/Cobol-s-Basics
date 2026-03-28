      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WS-CALCUL-VALUE   PIC 9(1).
       01  WS-MULTIPLY-VALUE PIC 9(1).
       01  WS-CALCUL-RESULT  PIC 9(3)V99.
       01  WS-MULTIPLICATOR  PIC 9(1) VALUE 1.
       01  WS-TAILLE-MAX     PIC 9(1) VALUE 5.
       01 WS-NOTES.
           02 WS-NOTE PIC 9(2) OCCURS 1 TO 100 TIMES
                                       DEPENDING ON WS-TAILLE-MAX.
       01  WS-I              PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'Start procedure'.
            PERFORM 5 TIMES
               COMPUTE WS-CALCUL-RESULT = WS-MULTIPLICATOR * 3
               DISPLAY WS-CALCUL-RESULT
               COMPUTE WS-MULTIPLICATOR = WS-MULTIPLICATOR + 1
            END-PERFORM.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
               ACCEPT WS-NOTE(WS-I)
               DISPLAY 'Note ' WS-I ' : ' WS-NOTE(WS-I)
           END-PERFORM.
           MOVE ZERO TO WS-CALCUL-RESULT
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-TAILLE-MAX
               COMPUTE WS-CALCUL-RESULT =
                           WS-NOTE(WS-I) + WS-CALCUL-RESULT
           END-PERFORM.

               DISPLAY 'all result : ' WS-CALCUL-RESULT
               COMPUTE WS-CALCUL-RESULT =
                           WS-CALCUL-RESULT / WS-TAILLE-MAX
               DISPLAY 'Average '  WS-CALCUL-RESULT.

       END PROGRAM YOUR-PROGRAM-NAME.
      *      PERFORM CALCUL.
      *      STOP RUN.

      *  DISPLAY_VALUE.
      *      DISPLAY '*'.

      * GET-CALCUL-VALUE.
      *     DISPLAY 'Getting values'.
      *     ACCEPT WS-CALCUL-VALUE.
      *     ACCEPT WS-MULTIPLY-VALUE.

      * SHOW-RESULT.
      *     DISPLAY 'Calcul result : '.
      *     DISPLAY WS-CALCUL-RESULT.

      * CALCUL.
      *     DISPLAY 'CALCUL'.
      *     PERFORM GET-CALCUL-VALUE.
      *     COMPUTE WS-CALCUL-RESULT = WS-CALCUL-VALUE*WS-MULTIPLY-VALUE.
      *     PERFORM SHOW-RESULT.
