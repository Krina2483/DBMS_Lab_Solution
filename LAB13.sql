CREATE TABLE STUDENT 
(
    RNO INT PRIMARY KEY,
    NAME VARCHAR(50),
    BRANCH VARCHAR(20) DEFAULT 'General',
    SPI DECIMAL(4,2) CHECK(SPI BETWEEN 0 AND 10), 
    BKLOG INT CHECK (BKLOG>=0)
)