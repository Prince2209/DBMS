--Table Schema


--Table1:MovieDetails

--Column Name Datatype Discription
--MovieID INT (Primary Key) Unique identifier for each movie.
--Title VARCHAR(100) Title of the movie.
--Genre VARCHAR(100) Genre(s) of the movie, such as Drama, Crime, Action.
--Director VARCHAR(100) Name(s) of the director(s) of the movie.
--ReleaseYear INT Year the movie was released.


--Table2: MovieFinancials

--Column
--Name Datatype Discription
--FinancialID
--INT (Primary
--Key) Unique identifier for each financial record.
--BudgetUSD DECIMAL Production budget of the movie in USD.
--BoxOfficeUSD DECIMAL Box office revenue of the movie in USD.
--MovieID
--INT (Foreign
--Key)
--References the unique identifier in the MovieDetails
--table.



--Table3: MovieRatingsDuration

--Column Name Datatype Discription
--RatingID INT (Primary Key) Unique identifier for each rating and duration record.
--DurationMin INT Duration of the movie in minutes.
--Rating DECIMAL Average rating of the movie, typically on a scale from 1 to 10.
--Language VARCHAR(100) The primary language of the movie.
--Country VARCHAR(100) The country where the movie was produced.
--MovieID INT (Foreign Key) References the unique identifier in the MovieDetails table.



--Consider above table schema and write following queries:


--1. Retrive first five distinct movies along with their title from MovieDetails table.
--2. Display the total of the BudgetUSD and BoxOfficeUSD assign the name TotalUSD from
--MovieFinancials.
--3. Insert the new row with this data (11,The Incredible Hulk, Action, Louis Leterrier,2008) in
--MovieDetails table.
--4. Set the value of the genre to 'Action' of 'Avengers:Endgame' movie from MovieDetails table.
--5. Delete the records with duration of 181 minutes from MovieRatingsDuration table.
--6. Add a new column 'Producer' into the MovieDetails table.
--7. Delete records of MovieFinancials table without removing its table structure.
--8. Retrive all the movies from MovieDetails table with title starting with 'The'.
--9. Retrive name of directors includes 'son' from MovieDetails table.
--10. Convert and display title of all movies in uppercase.
--11. Display the highest rating from the MovieRatingsDuration table.
--12. Calculate the years between current year and movies release year.
--13. Find the languages in which movies have an average rating of greater than 8.0. Display the language
--and the average rating.
--14. Retrieve the minimum, maximum, and average movie duration for each language in the
--MovieRatingsDuration table, but display only those languages where the average rating is greater
--than 7.5.
--15. Find the titles of movies whose budget is higher than the average budget of all movies.(Do not use
--JOINS)
--16. Find the titles of movies that have a box office revenue greater than the average box office revenue
--of all movies.
--17. Create a view with Rating, Language and Country columns with no data and named it MovieReview.
--18. List all movies that have the same director but different genres, displaying the director’s name, both
--movie titles, and their respective genres.
--19. Retrieve the title, director, and box office earnings for all movies that were released after 2010, along
--with their ratings.
--20. List all directors and the number of movies they have directed, but only include directors who have
--directed more than 1 movie.