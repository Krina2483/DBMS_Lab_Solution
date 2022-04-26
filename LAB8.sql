CREATE TABLE COMPUTER (
    ROLLNO INT,      
    NAME VARCHAR(20)
);

CREATE TABLE ELECTRICAL (
    ROLLNO INT,      
    NAME VARCHAR(20)
);

INSERT INTO COMPUTER VALUES(101,'AJAY') 
INSERT INTO COMPUTER VALUES(109,'HARESH') 
INSERT INTO COMPUTER VALUES(115,'MANISH')

INSERT INTO ELECTRICAL VALUES(101,'AJAY') 
INSERT INTO ELECTRICAL VALUES(107,'MAHESH') 
INSERT INTO ELECTRICAL VALUES(115,'MANISH')

SELECT NAME FROM COMPUTER UNION SELECT NAME FROM ELECTRICAL
SELECT NAME FROM COMPUTER UNION ALL SELECT NAME FROM ELECTRICAL
SELECT NAME FROM COMPUTER INTERSECT SELECT NAME FROM ELECTRICAL
SELECT NAME FROM COMPUTER EXCEPT SELECT NAME FROM ELECTRICAL
SELECT NAME FROM ELECTRICAL EXCEPT SELECT NAME FROM COMPUTER
SELECT*FROM COMPUTER UNION SELECT*FROM ELECTRICAL
SELECT*FROM COMPUTER INTERSECT SELECT*FROM ELECTRICAL