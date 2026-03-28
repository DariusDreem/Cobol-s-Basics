      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      *
      *  1. V  Lit un fichier factures.txt dont chaque ligne contient : NUM-FACTURE(6) + CLIENT(20) + MONTANT-HT(9V2)
      *  2.   Pour chaque facture, calcule le montant TTC (TVA 20%)
      *  3.   Affiche chaque facture avec son TTC
      *  4.   À la fin, affiche le nombre total de factures traitées et le total TTC global
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LECTURE-FICHIER.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FICH-FACTURES
               ASSIGN TO 'factures.txt'
               ORGANIZATION IS LINE SEQUENTIAL
               ACCESS MODE  IS SEQUENTIAL
               FILE STATUS  IS WS-STATUS.

           SELECT FICH-SORTIE
               ASSIGN TO 'sortie.txt'
               ORGANIZATION IS LINE SEQUENTIAL.


       DATA DIVISION.
       FILE SECTION.
       FD  FICH-FACTURES.
       01  ENREG-FACTURES.
           02 E-NUM-FACTURE  PIC 9(6).
           02 E-CLIENT       PIC X(20).
           02 E-MONTANT-HT   PIC 9(8)V99.

       FD  FICH-SORTIE.
       01  WS-LIGNE-SORTIE PIC X(80).

       WORKING-STORAGE SECTION.
       77  WS-STATUS       PIC XX      VALUE SPACES.
       77  WS-FIN-FICH     PIC X       VALUE 'N'.
           88 FIN-FICHIER              VALUE 'O'.
       01  WS-TVA          PIC 9(9)V99 VALUE 1.20 .
       01  WS-RESULT       PIC 9(8)V99 VALUE ZEROS.
       01  WS-TOTAL-TTC    PIC 9(9)V99 VALUE ZERO.
       01  WS-NB-FACTURES  PIC 9(3)    VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    1. Ouvrir le fichier
           OPEN INPUT FICH-FACTURES
               DISPLAY 'STATUS OPEN : ' WS-STATUS

           IF WS-STATUS NOT = '00'
               DISPLAY 'ERREUR OUVERTURE FICHIER : ' WS-STATUS
               STOP RUN
           END-IF

      *    2. Lire le premier enregistrement
           READ    FICH-FACTURES
               AT END MOVE 'O' TO WS-FIN-FICH
           END-READ

      *    3. Boucle de traitement
           PERFORM UNTIL FIN-FICHIER
               DISPLAY E-NUM-FACTURE ' | ' E-CLIENT ' | ' E-MONTANT-HT
               COMPUTE WS-RESULT = E-MONTANT-HT * WS-TVA
               DISPLAY 'Montant TTC : ' WS-RESULT
               ADD WS-RESULT TO WS-TOTAL-TTC
               READ    FICH-FACTURES
                   AT END MOVE 'O' TO WS-FIN-FICH

               END-READ
           ADD 1   TO  WS-NB-FACTURES
           END-PERFORM

      *    4. Ferme le fichier
           CLOSE FICH-FACTURES

           DISPLAY WS-NB-FACTURES
           DISPLAY WS-TOTAL-TTC

           OPEN OUTPUT FICH-SORTIE
           STRING 'TOTAL TTC : ' DELIMITED SIZE
                  WS-TOTAL-TTC   DELIMITED SIZE
                  INTO WS-LIGNE-SORTIE
               WRITE WS-LIGNE-SORTIE

           MOVE SPACES TO WS-LIGNE-SORTIE
           STRING 'NOMBRE DE LIGNE : ' DELIMITED SIZE
                   WS-NB-FACTURES DELIMITED SIZE
                  INTO WS-LIGNE-SORTIE
               WRITE WS-LIGNE-SORTIE
           CLOSE FICH-SORTIE



            STOP RUN.
       END PROGRAM LECTURE-FICHIER.
