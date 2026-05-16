--Astronauts:

-- astronaut_id:, Auto Increment– Unique identifier for each astronaut.
-- astronaut_name: Full name of the astronaut.
-- age: Current age of the astronaut.
-- nationality: Nationality of the astronaut.
-- total_space_missions: The number of space missions they have participated in.


--Missions:

-- mission_id: Auto Increment– Unique identifier for each space mission.
-- mission_name: Name of the space mission.
-- launch_date: The date of the mission's launch.
-- duration_days: Total duration of the mission in days.
-- mission_type: The type of mission (e.g., research, exploration).


--Spacecrafts:

-- spacecraft_id: Auto Increment– Unique identifier for each spacecraft.
-- spacecraft_name: Name of the spacecraft.
-- capacity: Number of astronauts the spacecraft can carry.
-- manufacturer: The company or country that manufactured the spacecraft.


--Participation:

-- astronaut_id: Foreign Key – Links to the Astronauts table.
-- mission_id: Foreign Key – Links to the Missions table.
-- spacecraft_id: Foreign Key – Links to the Spacecrafts table.
-- role: The role of the astronaut in the mission (e.g., commander, engineer)




--1. Retrieve the distinct mission names where the mission lasted more than 30 days.
--2. Retrieve the top 3 astronauts who participated in the most missions, ensuring no duplicates.
--3. Insert a new space mission called "Jupiter Exploration" that is scheduled to launch on '2024-11-
--01', lasting 365 days, and classified as an exploration mission.
--4. Update the total space missions count for astronaut with ID = 5, increasing it by 1.
--5. Delete participation record for astronaut ID 3 in mission ID 2.
--6. Add a new column experience_level (VARCHAR(50)) to the Astronauts table to store the
--astronaut's experience level.
--7. Clear all the data from the Participation table.(Truncate)
--8. Retrieve all mission names where the mission type contains 'exploration'.
--9. Retrieve all missions that contain the word "Mars" and lasted more than 100 days.
--10. Retrieve the square root of the total number of missions for astronaut ID 102
--11. Retrieve the first 3 characters of each astronaut's name.
--12. Retrieve the astronauts who participated in missions launched in the current year.
--13. Count the number of astronauts from each nationality who have participated in more than 2
--space missions.
--14. Retrieve the total number of missions and the average mission duration for each mission type,
--but only include mission types that have been involved in more than 3 missions.
--15. Find the number of missions commanded by astronauts for each nationality where more than 5
--missions were commanded
--16. Retrieve the name of the spacecraft used in the mission "Apollo 11" (Use sub Query)
--17. Create a view that shows all active missions (those that launched after 2020).
--18. List all astronauts and their respective spacecraft for each mission they participated in.
--19. Retrieve the names of astronauts who participated in missions using spacecrafts manufactured by
--"SpaceX", along with the names of those missions and the duration of each mission. Include only
--astronauts who have participated in more than 2 missions.
--20. Retrieve the names of astronauts, the names of missions they participated in, the names of
--spacecraft used in those missions, and the manufacturers of those spacecraft, for missions where
--the mission duration is greater than the average duration of all missions conducted by astronauts
--from the "USA".