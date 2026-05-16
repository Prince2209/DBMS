--Part – A:

--1. List all books with their authors.

	Select Title,AuthorName
	From Author join Book
	On Author.AuthorID = Book.AuthorID
	
--2. List all books with their publishers.

	Select Title,PublisherName
	From Publisher join Book
	On Publisher.PublisherID = Book.PublisherID

--3. List all books with their authors and publishers.

	Select Title,AuthorName,PublisherName
	From Author join Book
	On Author.AuthorID = Book.AuthorID
	   join Publisher
	   On Publisher.PublisherID = Book.PublisherID

--4. List all books published after 2010 with their authors and publisher and price.

	Select Title,AuthorName,PublisherName,Price
	From Author join Book
	On Author.AuthorID = Book.AuthorID
	   join Publisher
	   On Publisher.PublisherID = Book.PublisherID
	   Where PublicationYear > 2010

--5. List all authors and the number of books they have written.

	Select AuthorName,Count(Title)
	From Author join Book
	On Author.AuthorID = Book.AuthorID
	Group By AuthorName

--6. List all publishers and the total price of books they have published.

	Select PublisherName,Sum(Price)
	From Publisher join Book
	On Publisher.PublisherID = Book.PublisherID
	Group By PublisherName

--7. List authors who have not written any books.

	Select AuthorName
	From Author left join Book
	On Author.AuthorID = Book.AuthorID
	Group By AuthorName
	Having Count(Title) = 0

--8. Display total number of Books and Average Price of every Author.

	Select AuthorName,Count(Title) as Count_Price,Avg(Price) as Avg_Price
	From Author left join Book
	On Author.AuthorID = Book.AuthorID
	Group By AuthorName

--9. lists each publisher along with the total number of books they have published, sorted from highest to
--lowest.

	Select PublisherName,Count(Title)
	From Publisher join Book
	On Publisher.PublisherID = Book.PublisherID
	Group By PublisherName
	Order by Count(Title) DESC

--10. Display number of books published each year.

	Select PublicationYear,Count(Title)
	From Book
	Group By PublicationYear


--Part – B:

--1. List the publishers whose total book prices exceed 500, ordered by the total price.

	Select PublisherName,Sum(Price)
	From Publisher join Book
	On Publisher.PublisherID = Book.PublisherID
	Group By PublisherName
	Having Sum(Price) > 500
	Order by Sum(Price)

--2. List most expensive book for each author, sort it with the highest price.

	Select AuthorName,Title,Price
	From Author join Book
	On Author.AuthorID = Book.AuthorID
	Where Price In(
		Select Max(Price)
		From Book
		Group By AuthorId
	)
	Order By Price Desc 



--Part – C: Create table as per following schema with proper validation and try to insert data which violate your
--validation.

--1. Emp_info(Eid, Ename, Did, Cid, Salary, Experience)
--Dept_info(Did, Dname)
--City_info(Cid, Cname, Did))
--District(Did, Dname, Sid)
--State(Sid, Sname, Cid)
--Country(Cid, Cname)
--2. Insert 5 records in each table.
--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all
--employees.