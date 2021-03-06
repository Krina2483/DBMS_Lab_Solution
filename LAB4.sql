CREATE TABLE EMPLOYEE 
( EMPNO INT, 
  EMPNAME VARCHAR(25), 
  JOININGDATE DATETIME,
  SALARY DECIMAL(8,2),
  CITY VARCHAR(20)
);
 
INSERT INTO EMPLOYEE 
VALUES (101, 'KEYUR', '05-JAN-02', 12000.00, 'RAJKOT'),
       (102, 'HARDIK', '15-FEB-04', 14000.00, 'AHEMDABAD'),
	   (103, 'KAJAL', '14-MAR-06', 15000.00, 'BARODA'),
	   (104, 'BHOOMI', '23-JUN-05', 12500.00, 'AHEMDABAD'),
	   (102, 'HARMIT', '15-FEB-04', 14000.00, 'RAJKOT');

DELETE FROM EMPLOYEE WHERE SALARY>=14000;
DELETE FROM EMPLOYEE WHERE CITY='RAJKOT';
DELETE FROM EMPLOYEE WHERE JOININGDATE>'1-JAN-2007';
TRUNCATE TABLE EMPLOYEE;
DROP TABLE EMPLOYEE;
