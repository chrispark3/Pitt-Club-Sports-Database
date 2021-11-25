# Pitt Club Sports Database
 
My club sports database is targeted towards the students and faculty at the University of Pittsburgh who are interested in or taking part in a club sport. Students who play club sports are usually those who genuinely are fans of a sport whether it be basketball, soccer, or baseball. In the real world, everyone can track the schedule and statistics of their favorite professional teams and players. I wanted to create something that would allow students experience what it is like to be an athlete in their point of view. My potential club sports database will be able to allow students and even faculty members to access specific information or statistics about certain club sports that are available at the University of Pittsburgh.

At the University of Pittsburgh, there are various club and intramural sports that students can sign up for and play. As a freshman, I played intramural basketball during the Fall of 2019. As a player, I was able to track our game schedule and the intramural team’s schedule through an app called “IMLeagues.” Also, the Pitt club teams’ information was on the app too. It possessed information about each player: email, gender, grade, graduation year, and birthday. However, Pitt club teams did not use this app to its fullest like Pitt intramurals. For example, the app’s ability to track statistics and the leaders among each sport was not utilized at all. My database will utilize these unused features and will possess even more attributes that will give the user an in-depth description and analysis of various sports, teams, players, and games.

MySQL was used to create a UML-Compliant ER Model to display the entities, cardinality, business rules, and write SQL scripts to create a database (tables, player data, sport data, location data, team data, game data, and queries). All the data was inputted manually to fill the newly made database with workable data. Also, 10 SQL queries were created from scratch to answer questions that gives value to the database.
These questions were:
1. Where does each club player reside? 
- SIMPLE TABLE SELECT: This query displays all the names of the players and where they live. 
This adds value because it allows people to see what communities/dorms the players are a part of. 
People might find lost items at the gyms and could return belongings knowing this information.

2. Among all sports, which teamss' gear is green?
- INNER JOIN: This query inner joins sport and team. It displays information about all the teams that are green. This adds value because it allows people to identify and receive more information about a team through their color. People might have watched a team play but only remembered the team color. The user can then search up the team through color.

3. Which sport facilities had at least 40 people spectating at a game?
- LEFT JOIN: This query left joins location and game. It shows all the locations that had at least 40 people in attendance. This adds value because it allows people to see which sports to promote more or are lacking in popularity compared to other sports. Faculty members might use this information to move certain sports to smaller facilities if the seats are not filling in larger facilities.

4. What was the maximum amount of points scored by a player with the last name 'Park'?
- AGGREGATE: This query inner joins player and game_player. It displays the highest amount of points scored for an individual: Chris Park. This adds value because it allows people look up players and see what their best games are.Other players could use this to scout other teams and see how good a certain player is on another team.

5. How much money was made in all of the home games combined?
- AGGREGATE: This query shows how much money is made in all home games in total. This adds value because it shows staff how the popularity of the school club games are doing. If the total revenue of home games do not meet the budget, staff could increase the price of tickets.

6. Among all the players' majors, what is the player frequency of these majors?
- GROUP BY: This query displays the frequency of how many players are certain majors. This adds value because this statistic shows which major shows more interest in club sports. People who run club sports can look at this data and provide more exposure to their club to students in certain majors who show lower interest.

7. Who are all the players that are at least 6 feet tall and at least 180 pounds?
- HAVING: This query displays all the players that are at least 180 pounds and at least 6 feet. This adds value because it gives players an idea of who to match up ahead of the actual game. Players of the other team could look at this data and see what type of position the opponent is more likely to play according to height and weight.

8. Which sport leagues are sponsored by Nike ordered from weaker divisions to higher divisions?
- ORDER BY: This query displays all the sport leagues that are sponsored by Nike and are shown in descending order to display the weaker divisions first. For example, "leagueName2" is a weaker division than "leagueName1". This adds value because it allows people to see what type of gear you will receive on the team. Also, if players just want the sponsorship and the gear, they could look at the easier league to try out for the club team. In this case: the PLA2.

9. Among all of the teams, which team has the least amount of wins?
- LIMIT: This query displays the team with the lowest number of wins. This adds value because it gives players an idea of who who their competition is. If a team is scheduled to play a very weak team. players could look at this data and make plans to rest their star players.

10. Among all sports, which players played on a team with at least 5 wins?
- SUBQUERY IN: This query shows a list of all the players played on a team with at least 5 wins. This adds value because it shows the players that are on teams that are above .500 win percentage. Assuming all teams that are .500 win percentage and up are projected to make the playoffs, teams can predict who they will face in the playoffs to get ready for future matchups.

#### The full analysis can be found in PittClubSports.docx and its respective SQL in PittClubSports.sql
#### Other file included is the ER Diagram (.mwb)
