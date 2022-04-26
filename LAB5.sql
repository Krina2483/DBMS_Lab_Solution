CREATE TABLE STUDENT
(
    ENROLLMENT_NO VARCHAR(20),
    NAME VARCHAR(25),
    CPI DECIMAL(5,2),
    BIRTHDATE DATETIME
);

ALTER TABLE STUDENT ADD CITY VARCHAR(20),BACKLOG INT;
ALTER TABLE STUDENT ALTER COLUMN NAME VARCHAR(35);
ALTER TABLE STUDENT ALTER COLUMN CPI INT;
SP_RENAME 'ENROLLMENT_NO','ENO','COLUMN';
ALTER TABLE STUDENT DROP COLUMN CITY;
SP_RENAME 'STUDENT','STUDENT_MASTER';
DROP TABLE STUDENT_MASTER;