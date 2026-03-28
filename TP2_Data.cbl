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
       01  WS-CLIENT.
           02  WS-NUM-CLIENT   PIC 9(6)      VALUE 000000.
           02  WS-NOM          PIC A(25)     VALUE "DOE".
           02  WS-PRENOM       PIC A(20)     VALUE "JOHN".
           02  WS-SOLDE        PIC 9(8)V9(2) VALUE 0.


           02  WS-DATE-NAIS.
               03  WS-ANNEE     PIC 9(4)     VALUE 2001.
               03  WS-MOIS      PIC 9(2)     VALUE 12.
               03  WS-JOUR      PIC 9(2)     VALUE 24.


           02  WS-CATEGORIE    PIC X         VALUE 'C'.
               88 EST-ETUDIANT               VALUE 'E'.
               88 EST-EMPLOYE                VALUE 'T'.
               88 EST-RETRAITE                  VALUE 'R'.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
