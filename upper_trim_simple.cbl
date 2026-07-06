       IDENTIFICATION DIVISION.
       PROGRAM-ID. UPPER-TRIM

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-INPUT     PIC X(20) VALUE '  hello  '.
       01 WS-RESULT    PIC X(20).
       01 WS-USERNAME  PIC X(20) VALUE 'scott'.
       01 WS-PASSWORD  PIC X(20) VALUE 'tiger'.

       PROCEDURE DIVISION.
       MAIN-PARA.
           EXEC SQL
               CONNECT :WS-USERNAME IDENTIFIED BY :WS-PASSWORD
           END-EXEC.

           EXEC SQL
               SELECT DISTINCT UPPER(TRIM(:WS-INPUT))
               INTO :WS-RESULT
               FROM DUAL
           END-EXEC.

           DISPLAY 'RESULT: ' WS-RESULT.
           STOP RUN.
