CREATE TABLE CITY
(
    CITYID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL UNIQUE,
    PINCODE INT NOT NULL,
    REMARKS VARCHAR (50) NULL
);

CREATE TABLE VILLAGE
(
    VID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    CITYID INT NOT NULL REFERENCES CITY (CITYID)
);

INSERT INTO CITY VALUES (1,'RAJKOT',360005,'GOOD')
INSERT INTO CITY VALUES (2,'SURAT',335009,'VERY GOOD')
INSERT INTO CITY VALUES (3,'BARODA',390001,'AWESOME') 
INSERT INTO CITY VALUES (4,'JAMNAGAR',361003,'SMART')
INSERT INTO CITY VALUES (5,'JUNAGADH',362229,'HISTORIC')
INSERT INTO CITY VALUES (6,'MORVI',363641,'CERAMIC CITY') 

INSERT INTO VILLAGE VALUES (101,'RAIYA',1) 
INSERT INTO VILLAGE VALUES (102,'MADHAPAR',1) 
INSERT INTO VILLAGE VALUES (103,'DODKA',3) 
INSERT INTO VILLAGE VALUES (104,'FALLA',4) 
INSERT INTO VILLAGE VALUES (105,'BHESAN',5) 
INSERT INTO VILLAGE VALUES (106,'DHORAJI',5)

SELECT VILLAGE.[NAME] FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID WHERE CITY.[NAME] ='RAJKOT'
SELECT CITY.[NAME],VILLAGE.[NAME],PINCODE FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID
SELECT CITY.[NAME],COUNT(VILLAGE.VID)AS TOTAL FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID GROUP BY CITY.[NAME]
SELECT CITY.[NAME],COUNT(VILLAGE.VID)AS TOTAL FROM CITY LEFTOUTERJOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID GROUP BY CITY.[NAME] HAVING COUNT(VILLAGE.VID)< 1
SELECT CITY.[NAME],COUNT(VILLAGE.VID)AS TOTALV FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID GROUP BY CITY.[NAME]
SELECT COUNT(*) FROM (SELECT CITY.[NAME],COUNT(VILLAGE.VID)AS TOTAL FROM CITY LEFT OUTER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID GROUP BY CITY.[NAME])AS T WHERE TOTAL > 1