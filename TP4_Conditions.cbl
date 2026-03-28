      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      *Programme qui saisit une note (0-20) et affiche la mention :
      *
      *>= 16 : Très Bien
      *14-15 : Bien
      *12-13 : Assez Bien
      *10-11 : Passable
      *Moins de 10 : Insuffisant
      *Utilise EVALUATE ... THRU.
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WS-NOTE PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WS-NOTE.
           EVALUATE WS-NOTE
               WHEN 16 THRU 20     DISPLAY 'Tres Bien'
               WHEN 12 THRU 15     DISPLAY 'Bien'
               WHEN 10 THRU 11     DISPLAY 'Passable'
               WHEN 0  THRU 9      DISPLAY 'Insuffisant'
               WHEN    OTHER       DISPLAY 'Triche'

            DISPLAY "Caca prout"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
