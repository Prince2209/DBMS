--Table Schema


--Team Table:

--o team_id: stores the unique ID for each team.
--o team_name: stores the name of the cricket team.
--o team_coach: stores the name of the team's coach.
--o team_wins: stores the total number of matches the team has won.
--o team_total_matches: stores the total number of matches the team has played.
--o home_stadium_id: stores the ID of the team's home stadium (references stadium_id in the
--Stadium table).


--Player Table:

--o player_id: stores the unique ID for each player.
--o player_first_name: stores the player's first name.
--o player_last_name: stores the player's last name.
--o team_id: stores the ID of the team the player belongs to (references the team_id in the Team
--table).
--o player_role: stores the player's role, such as Batsman, Bowler, or All-rounder.
--o player_jersey_number: stores the player's jersey number.
--o player_matches_played: stores the total number of matches the player has played.


--Stadium Table:

--o stadium_id: stores the unique ID for each stadium.
--o stadium_name: stores the name of the stadium.
--o stadium_city: stores the city where the stadium is located.
--o stadium_capacity: stores the seating capacity of the stadium.




--Consider above table schema and write following queries:


--1. Retrieve Unique Roles of Players.
--2. Calculate the winning percentage of each team.
--3. Insert a new record to Stadium Table. (2, Wankhede Stadium, Mumbai,33000)
--4. Update Team Coach Name of Team RCB to Ashish Nehra.
--5. Delete All the Records of Player Shikhar Dhawan.
--6. Change the size of stadium_name column from VARCHAR (100) to VARCHAR (15).
--7. Remove Player Table.
--8. Display Top 30 Players Whose First Name Starts with Vowel.
--9. Display City Whose Stadium Name does not Ends with ‘M’.
--10. Generate Random Number between 0 to 100.
--11. Display 4th to 9th Character of ‘Virat Kohli’.
--12. Display The Day of week on 01-01-2005.
--13. Display City Wise Maximum Stadium Capacity.
--14. Display City Whose Average Stadium Capacity is Above 20000.
--15. Display All Players Full Name, Jersey No and Role Who is Playing for Mumbai Indians. (Using Sub
--query).
--16. Display Team Name Having Home Stadium Capacity Over 50000. (Using Sub query ).
--17. Create a View Players_Above_100_Matches of Players Who have Played More than 100 Matches.
--18. Get the Player name, Team name, and their Jersey number who have played Between than 50 to
--100 matches.
--19. Produce Output Like: <PlayerFirstName> Plays For <TeamName> and Has Played <PlayerMatches>
--matches. (In single column)
--20. Display Stadium Capacity of Team CSK.