       IDENTIFICATION DIVISION.
       PROGRAM-ID. DUAL

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-RESULT    PIC 9(1).
       01 WS-USERNAME  PIC X(20) VALUE 'scott'.
       01 WS-PASSWORD  PIC X(20) VALUE 'tiger'.

       PROCEDURE DIVISION.
       MAIN-PARA.
           EXEC SQL
               CONNECT :WS-USERNAME IDENTIFIED BY :WS-PASSWORD
           END-EXEC.

           EXEC SQL
               SELECT 1
               INTO :WS-RESULT
               FROM DUAL
           END-EXEC.

           DISPLAY 'RESULT: ' WS-RESULT.
           STOP RUN.
