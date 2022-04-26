/*MATH FUNCTION*/
SELECT 5*30 AS COLUMN;
SELECT ABS(-25) AS COLUMN 2, ABS(-25) AS COLUMN 2,ABS(-50) AS COLUMN 2, ABS(50) AS CO  LUMN2;
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2);
SELECT 5%2,5%3;
SELECT POWER(3,2),POWER(4,3);
SELECT SQRT(25),SQRT(30),SQRT(50);
SELECT PI();
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2);
SELECT EXP(2),EXP(3);
SELECT LOG(10),LOG(2);
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415);
SELECT SIGN(-25),SIGN(0),SIGN(25);
SELECT RAND(),RAND(9),RAND(3),RAND(5);

/*STRING FUNCTION*/
SELECT LEN(NULL),LEN('  HELLO  '),LEN('');
SELECT LOWER('WRITEYOURNAME') AS 'SMALL LETTER',UPPER('WRITEYOURNAME') AS 'CAPITAL LETTER';
SELECT SUBSTRING('WRITEYOURNAME',1,3);
SELECT SUBSTRING('WRITEYOURNAME',3,10);
SELECT REPLACE('ABC123EFG',123,'XYZ'),REPLACE('ABCABCABC','C',5);
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9);
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57);
SELECT LTRIM('   HELLO WORLD        ') "LTRIM"
SELECT RTRIM('   HELLO WORLD        ') "RTRIM"
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)
SELECT CAST('1234.56'ASFLOAT) "CAST",CONVERT(FLOAT,'1234.56') "CONVERT"
SELECT CAST(10.58 ASINT) "CAST",CONVERT(INT,10.58) "CONVERT"
SELECT SPACE(10)+'WRITEYOURNAME'
SELECT('HELLO'+' WORLD')AS "USING +" ,CONCAT('HELLO',' WORLD')AS "USING FUNCTION"
SELECT REVERSE('DARSHAN')AS REVERSE
SELECT REPLICATE('NAME',3)

/*DATE FUNCTION*/
SELECT GETDATE()AS TODAY_DATE
SELECT GETDATE()+365
SELECT CONVERT(VARCHAR,GETDATE())
SELECT CONVERT(VARCHAR,GETDATE(),106)
SELECT CONVERT(VARCHAR,GETDATE(),7)
SELECT DATEDIFF(MONTH,'31/DEC/08','31/MAR/09')
SELECT DATEDIFF(YEAR,'25/JAN/12','14/SEP/10')
SELECT DATEDIFF(HOUR,'25/JAN/12 7:00','26/JAN/12 10:30')
SELECT DAY('12/MAY/16')AS DAY,MONTH('12/MAY/16')AS MONTH,YEAR('12/MAY/16')AS YEAR
SELECT DATEADD(YEAR,5,GETDATE())
SELECT DATEADD(MONTH,-2,GETDATE())
SELECT DATENAME(MONTH,GETDATE()),DATEPART(MONTH,GETDATE())
SELECT EOMONTH(GETDATE())
SELECT DATEDIFF(YEAR,'1/1/90',GETDATE())AS'AGE IN YEARS',DATEDIFF(MONTH,'1/1/90',GETDATE())AS 'AGE IN MONTHS'