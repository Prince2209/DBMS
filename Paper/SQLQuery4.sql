--Table Schema


--Books Table:

--• book_id: stores the unique ID for each book.
--• title: stores the title of the book.
--• author_id: stores the ID of the author who wrote the book (references the authors table).
--• genre: stores the genre of the book (e.g., Fiction, Non-fiction, etc.).
--• publish_year: stores the year the book was published.
--• available_copies: stores the number of copies of the book currently available in the library.


--Authors Table:

--• author_id: stores the unique ID for each author.
--• name: stores the full name of the author.
--• birth_year: stores the year the author was born.
--• nationality: stores the nationality of the author.


--Members Table:

--• member_id: stores the unique ID for each member of the library.
--• name: stores the full name of the member.
--• email: stores the email address of the member
--• phone_number: stores the contact number of the member.
--• membership_date: stores the date when the member joined the library.


--Loans Table:

--• loan_id: stores the unique ID for each loan.
--• book_id: stores the ID of the book that is being loaned (references the books table).
--• member_id: stores the ID of the member borrowing the book (references the members table).
--• loan_date: stores the date when the book was borrowed.
--• return_date: stores the date by which the book must be returned.



--Consider above table schema and write following queries:


--1. Display the top 3 percentages books order by title in descending.
--2. Display a distinct list of genres.
--3. Insert a new book into the books table. ('The Adventures of Sherlock Holmes', 2, 'Mystery', 1892,
--5)
--4. Update the number of available copies is 10 for a book whose book_id is available.
--5. Delete a member from the members table whose member_id is 4.
--6. Add a new column language varchar(20) to the books table.
--7. Truncate all data from the loans table. (Using Truncate)
--8. Find books whose title starts with ‘H’ and end with ‘L’.
--9. Find authors whose name does not ends with vowel.
--10. Find Lenth of ‘Manish Pandey’
--11. Calculate your age in year.
--12. Display the total number of books by genre.
--13. Display the minimum, maximum, and average number of available copies for each genre whose
--book_id is available.
--14. Display the title of books where the author was born before 1970.(Using Sub query)
--15. Create a view View_Member whose membership date is not available from members table
--16. Find the title of books that have been borrowed the most (the top 1 book) and the corresponding
--author name (Using sub Query)
--17. Display the loan_id ,member name ,title ,loan date whose member name is 'Raj'.
--18. List the titles of books that have been borrowed by members who registered before 2020.(using
--Sub query)
--19. Display the total number of books borrowed by each member.
--20. Display the title of books that have not been borrowed by any members.