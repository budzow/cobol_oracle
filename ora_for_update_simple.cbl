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
               SELECT STOCK_COUNT
               INTO :WS-STOCK-COUNT
               FROM INVENTORY
               WHERE ITEM_ID = 101
               FOR UPDATE
               WAIT 3
           END-EXEC.