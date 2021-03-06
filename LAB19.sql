/*CREATE A CURSOR TO DECREASE THE SALARY OF ALL EMPLOYEES BY 500. DISPLAY ERRORMESSAGE IF SALARY BECOMES NEGATIVE AND DOES NOT DECREASE SALARY.*/
DECLARE
    @EID INT, @SALARY DECIMAL(8,2);
DECLARE CURSOR_EMP CURSOR
FOR SELECT EID, SALARY FROM EMPLOYEE;

OPEN CURSOR_EMP; 
FETCHNEXTFROM CURSOR_EMP INTO        
    @EID, @SALARY;
WHILE@@FETCH_STATUS= 0     
BEGIN
    SET @SALARY=@SALARY-500 
    IF (@SALARY<0)
        PRINT'SALARY MUST BE GREATER THAN 0' 
    ELSE               
        UPDATE EMPLOYEE               
        SET SALARY=@SALARY               
        WHERE EID=@EID
FETCH NEXT FROM CURSOR_EMP INTO 
        @EID, @SALARY;    
END;    

CLOSE CURSOR_EMP;
DEALLOCATE CURSOR_EMP;

/*CREATE A CURSOR TO INSERT DETAILS OF STUDENTS OF COMPUTER BRANCH INTONEWSTUDENT TABLE.*/
DECLARE
    @RNO INT, @NAME VARCHAR(50),@BRANCH VARCHAR(50),@SPIDECIMAL(4,2);
DECLARE CURSOR_STUDENT CURSOR 
FOR SELECT RNO, NAME, BRANCH, SPI FROM STUDENT;

OPEN CURSOR_STUDENT; 
FETCH NEXT FROM CURSOR_STUDENT INTO
    @RNO, @NAME, @BRANCH, @SPI;
WHILE@@FETCH_STATUS= 0 
BEGIN
    IF (@BRANCH='CE')
        INSERT INTO NEWSTUDENT VALUES (@RNO, @NAME, @BRANCH, @SPI)
FETCH NEXT FROM CURSOR_STUDENT INTO @RNO, @NAME, @BRANCH, @SPI;
END;
CLOSE CURSOR_STUDENT;
DEALLOCATE CURSOR_STUDENT;

/*CREATE A CURSOR TO DECREASE SPI OF ALL STUDENTS BY 7. DISPLAY ERROR MESSAGE IF SPIBECOMES NEGATIVE AND DOES NOT DECREASE SPI.*/
DECLARE
    @RNO INT, @SPI DECIMAL(8,2);
DECLARE CURSOR_STUDENT CURSOR 
FOR SELECT RNO, SPI
FROM STUDENT;
OPEN CURSOR_STUDENT; 

FETCH NEXT FROM CURSOR_STUDENT INTO 
@RNO, @SPI; 
WHILE@@FETCH_STATUS= 0 
BEGIN         
    SET @SPI=@SPI-7         
    IF (@SPI<0)
        PRINT'SPI MUST BE GREATER THAN 0' 
    ELSE               
        UPDATE STUDENT               
        SET SPI=@SPI               
        WHERE RNO=@RNO
FETCH NEXT FROM CURSOR_STUDENT INTO 
    @RNO, @SPI;
END;

CLOSE CURSOR_STUDENT; 
DEALLOCATE CURSOR_STUDENT;