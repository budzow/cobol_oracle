       IDENTIFICATION DIVISION.
       PROGRAM-ID. UPPER-TRIM

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-INPUT     PIC X(20) VALUE '  hello  '.
       01 WS-RESULT    PIC X(20).

       PROCEDURE DIVISION.
       MAIN-PARA.
           EXEC SQL
               SELECT TRIM(:WS-INPUT)
               INTO :WS-RESULT
               FROM DUAL
           END-EXEC.

           DISPLAY 'RESULT: ' WS-RESULT.
           STOP RUN.