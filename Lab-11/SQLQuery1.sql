USE DATABASE CSE_3B_365

--Implement SQL Joins

CREATE TABLE STU_INFO(
	RNO INT,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50)
);

INSERT INTO STU_INFO VALUES (101,'Raju','CE'), 
							(102,'Amit','CE'), 
							(103,'Sanjay','ME'), 
							(104,'Neha','EC'), 
							(105,'Meera','EE'), 
							(106,'Mahesh','ME')

SELECT * FROM STU_INFO


CREATE TABLE RESULT(
	RNO INT,
	SPI DECIMAL(2,1)
);

INSERT INTO RESULT VALUES (101,8.8),
						  (102,9.2),
						  (103,7.6),
						  (104,8.2),
						  (105,7.0),
						  (107,8.9)

SELECT * FROM RESULT

CREATE TABLE EMPLOYEE_MASTER(
	EMPLOYEENO VARCHAR(20),
	NAME VARCHAR(20),
	MANAGERNO VARCHAR(20)
);
	
INSERT INTO EMPLOYEE_MASTER VALUES ('E01','Tarun',NULL),
								   ('E02','Rohan','E02'),
								   ('E03','Priya','E01'),
								   ('E04','Milan','E03'),
								   ('E05','Jay','E01'),
								   ('E06','Anjana','E04')

SELECT * FROM EMPLOYEE_MASTER

--Part – A:

--1. Combine information from student and result table using cross join or Cartesian product.

	SELECT * 
	FROM STU_INFO CROSS JOIN RESULT

--2. Perform inner join on Student and Result tables.

	SELECT * 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO

--3. Perform the left outer join on Student and Result tables.

	SELECT * 
	FROM STU_INFO LEFT JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO

--4. Perform the right outer join on Student and Result tables.

	SELECT * 
	FROM STU_INFO RIGHT JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO

--5. Perform the full outer join on Student and Result tables.

	SELECT * 
	FROM STU_INFO FULL JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO

--6. Display Rno, Name, Branch and SPI of all students.

	SELECT STU_INFO.RNO,NAME,BRANCH,SPI 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.

	SELECT STU_INFO.RNO,NAME,BRANCH,SPI 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	WHERE BRANCH = 'CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.

	SELECT STU_INFO.RNO,NAME,BRANCH,SPI 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	WHERE BRANCH != 'EC'

--9. Display average result of each branch.
	
	SELECT BRANCH,AVG(SPI) AS AVG_RESULT 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	GROUP BY BRANCH

--10. Display average result of CE and ME branch.

	SELECT BRANCH,AVG(SPI) AS AVG_RESULT 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	WHERE BRANCH = 'CE' OR BRANCH = 'ME'
	GROUP BY BRANCH

--11. Display Maximum and Minimum SPI of each branch.

	SELECT BRANCH,MAX(SPI) AS MAX_RESULT,MIN(SPI) AS MIN_RESULT 
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	GROUP BY BRANCH

--12. Display branch wise student’s count in descending order.

	SELECT BRANCH,COUNT(*) AS COUNT_STU
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	GROUP BY BRANCH
	ORDER BY COUNT(*) DESC

--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.

	SELECT BRANCH,AVG(SPI) AS AVG_RESULT
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	GROUP BY BRANCH
	ORDER BY AVG(SPI)

--2. Display highest SPI from each branch and sort them in descending order.

	SELECT BRANCH,MAX(SPI) AS MAX_RESULT
	FROM STU_INFO JOIN RESULT
	ON STU_INFO.RNO = RESULT.RNO
	GROUP BY BRANCH
	ORDER BY AVG(SPI) DESC

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.

	SELECT E.NAME,M.NAME
	FROM EMPLOYEE_MASTER E JOIN EMPLOYEE_MASTER M
	ON E.MANAGERNO = M.MANAGERNO
