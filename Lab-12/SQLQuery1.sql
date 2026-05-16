select * from person
--Part – A:
--1. Combine information from Person and Department table using cross join or Cartesian product.

	select * 
	from person cross join dept;

--2. Find all persons with their department name

	select DepartmentName,PersonName
	from person join  dept
	on dept.DepartmentID = person.DepartmentID 

	

--3. Find all persons with their department name & code.

	select PersonName,DepartmentName,DepartmentCode
	from person join  dept
	on dept.DepartmentID = person.DepartmentID 
--4. Find all persons with their department code and location.

	select PersonName,DepartmentCode,Location
	from person join  dept
	on dept.DepartmentID = person.DepartmentID 
--5. Find the detail of the person who belongs to Mechanical department.

	select *
	from person join  dept
	on dept.DepartmentID = person.DepartmentID
	where DepartmentCode = 'ME'
--6. Final person’s name, department code and salary who lives in Ahmedabad city.

	select PersonName,DepartmentCode,Salary
	from person join  dept
	on dept.DepartmentID = person.DepartmentID
	where City = 'Ahmedabad'
--7. Find the person's name whose department is in C-Block.

	select PersonName
	from person join  dept
	on dept.DepartmentID = person.DepartmentID
	where Location = 'C-Block'
--8. Retrieve person name, salary & department name who belongs to Jamnagar city.

	select PersonName,Salary,DepartmentName
	from person join  dept
	on dept.DepartmentID = person.DepartmentID
	where City = 'Jamnagar'
--9. Retrieve person’s detail who joined the Civil department after 1-Aug-2001.

	select *
	from person join  dept
	on dept.DepartmentID = person.DepartmentID
	where DepartmentName='Civil' and JoiningDate > '2001-8-1'
--10. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.

	select PersonName,DepartmentName
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	where DATEDIFF(day,JoiningDate,GETDATE())>365
	
--11. Find department wise person counts.

	select DepartmentName ,count(PersonName)
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	group by DepartmentName

	
--12. Give department wise maximum & minimum salary with department name.

	select DepartmentName ,min(salary),max(salary)
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	group by DepartmentName

--13. Find city wise total, average, maximum and minimum salary.

	select City ,sum(salary),avg(salary),min(salary),max(salary)
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	group by City
--14. Find the average salary of a person who belongs to Ahmedabad city.\

	select City ,avg(salary)
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	where city = 'Ahmedabad'
	group by City

--15. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)

	select PersonName + 'lives in'+ City +'and works in' + DepartmentName +  'Department.'
	from person join dept
	on dept.DepartmentID = person.DepartmentID

--	Part – B:
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In
--single column)

	select PersonName + 'earns'+ cast(Salary as varchar) +'from' + DepartmentName +  'department monthly.'
	from person join dept
	on dept.DepartmentID = person.DepartmentID
--2. Find city & department wise total, average & maximum salaries.

	select City,DepartmentName,sum(salary),AVG(salary),max(salary)
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	group by City,DepartmentName
--3. Find all persons who do not belong to any department.

	select *
	from person
	where person.DepartmentID is NULL

--4. Find all departments whose total salary is exceeding 100000
	
	select DepartmentName,SUM(salary) 
	from person join dept
	on dept.DepartmentID = person.DepartmentID
	group by DepartmentName
	having  SUM(salary)>100000