       IDENTIFICATION DIVISION.
       PROGRAM-ID. ORA-FOR-UPDATE

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-DATUM-N    PIC 9(1).
       01 WS-USERNAME  PIC X(20) VALUE 'scott'.
       01 WS-PASSWORD  PIC X(20) VALUE 'tiger'.

       PROCEDURE DIVISION.
       MAIN-PARA.
           EXEC SQL
               CONNECT :WS-USERNAME IDENTIFIED BY :WS-PASSWORD
           END-EXEC.

           EXEC SQL
               SELECT 1
               INTO :W-DATUM-N  FROM DUAL
               FOR UPDATE WAIT 3
           END-EXEC.

           DISPLAY 'RESULT: ' W-DATUM-N.
           STOP RUN.
