      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.     HELLO_WORLD_TEST.
       AUTHOR.         DADA.
       DATE-WRITTEN.   2026-03-08.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. LINUX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WS-NOM       PIC X(20)   VALUE 'DADA'.
       77  WS-BONSOIR   PIC X(20)   VALUE 'nope'.
       77  WS-COMPUTER  PIC 9(3)    VALUE 0.


       PROCEDURE DIVISION.
       DEBUT.
           ACCEPT WS-NOM.
           DISPLAY 'Hello ' WS-NOM.
           STOP RUN.
