      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      * Consigne 1 :
      *         Écris un programme complet qui :
      *         Déclare WS-PRIX-HT (7 chiffres, 2 décimales) et WS-PRIX-TTC (même type)
      *         Demande à l'utilisateur de saisir un prix HT
      *         Calcule le prix TTC avec une TVA de 20%
      *         Affiche : PRIX TTC : [valeur]
      *
      *
      * Consigne 2 :
      *         Déclare deux variables numériques WS-A et WS-B. L'utilisateur saisit leurs valeurs.
      *         Échange leur contenu et affiche le résultat. (Comme en tout langage, il faut une variable temporaire !)
      *
      *******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.



       01  WS-PRIX-HT  PIC 9(7)V9(2).
       01  WS-PRIX-TTC PIC 9(7)V9(2).
       01  WS-A        PIC 9(1).
       01  WS-B        PIC 9(1).
       01  WS-TEMPO    PIC 9(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT      WS-PRIX-HT.
           COMPUTE     WS-PRIX-TTC = WS-PRIX-HT * 1.20.
           DISPLAY     WS-PRIX-TTC.
           ACCEPT      WS-A.
           ACCEPT      WS-B.
           MOVE    WS-A     TO  WS-TEMPO.
           MOVE    WS-B     TO  WS-A.
           MOVE    WS-TEMPO TO  WS-B.
           DISPLAY WS-A.
           DISPLAY WS-B.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
