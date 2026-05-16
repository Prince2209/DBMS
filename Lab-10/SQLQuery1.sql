USE DATABASE CSE_3B_365

--Implement SQL View


CREATE TABLE STUDENT_INFO(
	RNo INT,
	Name VARCHAR(50),
	Branch VARCHAR(50),
	SPI DECIMAL(3,2),
	Bklog INT
);

INSERT INTO STUDENT_INFO VALUES (101,'Raju','CE',8.80,0),
								(102,'Amit','CE',2.20,3),
								(103,'Sanjay','ME',1.50,6),
								(104,'Neha','EC',7.65,1),
								(105,'Meera','EE',5.52,2),
								(106,'Mahesh','EC',4.50,3)

SELECT * FROM STUDENT_INFO


--Part – A: Views (First create a view then display all views)

--1. Create a view Personal with all columns.

	CREATE VIEW Personal 
	AS
	SELECT * FROM STUDENT_INFO

	SELECT * FROM Personal

--2. Create a view Student_Details having columns Name, Branch & SPI.

	CREATE VIEW Student_Details 
	AS
	SELECT Name,Branch,SPI FROM STUDENT_INFO

	SELECT * FROM Student_Details

--3. Create a view AcademicData having columns RNo, Name, Branch.

	CREATE VIEW AcademicData 
	AS
	SELECT RNo, Name, Branch FROM STUDENT_INFO

	SELECT * FROM AcademicData

--4. Create a view Student_bklog having all columns but students whose bklog more than 2.

	CREATE VIEW Student_bklog 
	AS
	SELECT * FROM STUDENT_INFO WHERE Bklog > 2

	SELECT * FROM Student_bklog

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four
--letters.

	CREATE VIEW Student_Pattern 
	AS
	SELECT RNo, Name , Branch FROM STUDENT_INFO WHERE Name LIKE '____'

	SELECT * FROM Student_Pattern

--6. Insert a new record to AcademicData view. (107, Meet, ME)

	INSERT INTO AcademicData VALUES (107,'Meet','ME')

	SELECT * FROM AcademicData

--7. Update the branch of Amit from CE to ME in Student_Details view.

	UPDATE Student_Details
	SET Branch = 'ME' WHERE Name = 'AMIT'

	SELECT * FROM Student_Details

--8. Delete a student whose roll number is 104 from AcademicData view.

	DELETE FROM AcademicData
	WHERE RNO = 104

	SELECT * FROM AcademicData

--9. Create view for the student whose name starts with M and ends with a, having SPI more than 6 and
--backlog less than 2.

	CREATE VIEW Student_NEW
	AS
	SELECT * FROM STUDENT_INFO WHERE Name LIKE 'M%A' AND SPI > 6 AND Bklog < 2

	SELECT * FROM Student_NEW

--10. Create the view for the students whose name contains vowel.

	CREATE VIEW STUDENTS_NEW1
	AS
	SELECT * FROM STUDENT_DATA WHERE Name LIKE '%[A,E,I,O,U]%'

	SELECT * FROM STUDENTS_NEW1

--Part – B:

--1. Create a view that displays information of all students whose SPI is above 8.5

CREATE VIEW VW_STUDENT_SPI
AS
SELECT *
FROM STUDENT_INFO
WHERE SPI > 8.5

SELECT * FROM VW_STUDENT_SPI

--2. Create a view that displays 0 backlog students.

CREATE VIEW VW_STUDENT_0_BKLOG
AS
SELECT *
FROM STUDENT_INFO
WHERE BKLOG = 0

SELECT * FROM VW_STUDENT_0_BKLOG
--3. Create a view Computerview that displays CE branch data only.

CREATE VIEW VW_COMPUTER_VIEW
AS
SELECT *
FROM STUDENT_INFO
WHERE BRANCH = 'CE'

SELECT * FROM VW_COMPUTER_VIEW

--Part – C:
--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.

CREATE VIEW VW_RESULT_EC
AS
SELECT NAME,SPI
FROM STUDENT_INFO
WHERE SPI < 5 AND BRANCH = 'EC'

SELECT * FROM VW_RESULT_EC

--2. Update the result of student MAHESH to 4.90 in Result_EC view.

UPDATE VW_RESULT_EC
SET SPI=4.90
WHERE NAME = 'MAHESH'

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having
--bklogs more than 5.

CREATE VIEW VW_STU_BKLOG
AS
SELECT RNO,NAME,BKLOG
FROM STUDENT_INFO
WHERE NAME LIKE 'M%' AND BKLOG > 5

SELECT * FROM VW_STU_BKLOG


--4. Drop Computerview form the database.

DROP VIEW VW_COMPUTER_VIEW
