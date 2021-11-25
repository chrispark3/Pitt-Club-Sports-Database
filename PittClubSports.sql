CREATE DATABASE IF NOT EXISTS club_sports;
USE club_sports;

/* Creating player table */
CREATE TABLE IF NOT EXISTS player
(
	player_id INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(45) NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    housing VARCHAR(45) NOT NULL, 
    grad_year INT NOT NULL,
    height DOUBLE NOT NULL,
    weight INT NOT NULL,
    major VARCHAR(45) NOT NULL
);

/* Creating team table */
CREATE TABLE IF NOT EXISTS team
(
	team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    wins INT NOT NULL,
    losses INT NOT NULL,
    timeout INT NOT NULL,
    fk_sport_id INT NOT NULL
);

/* Creating game table */
CREATE TABLE IF NOT EXISTS game
(
	game_id INT PRIMARY KEY AUTO_INCREMENT,
    game_type VARCHAR(45) NOT NULL,
    score VARCHAR(45) NOT NULL,
    revenue DOUBLE NOT NULL,
    attendance INT NOT NULL,
    fk_location_id INT NOT NULL
);

/* Creating sport table */
CREATE TABLE IF NOT EXISTS sport
(
	sport_id INT PRIMARY KEY AUTO_INCREMENT,
    sport_name VARCHAR(45) NOT NULL,
    league_name VARCHAR(45) NOT NULL,
    sponsorship VARCHAR(45) NOT NULL
);

/* Creating location table */
CREATE TABLE IF NOT EXISTS location
(
	location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(45) NOT NULL,
    address VARCHAR(45) NOT NULL,
    population_capacity INT NOT NULL
);

/* Creating team_player table */
CREATE TABLE IF NOT EXISTS team_player
(
	team_player_id INT PRIMARY KEY AUTO_INCREMENT,
    substitutions INT NOT NULL,
    suspensions INT NOT NULL,
    fouls INT NOT NULL,
    fk_player_id INT NOT NULL,
    fk_team_id INT NOT NULL
);

/* Creating game_player table */
CREATE TABLE IF NOT EXISTS game_player
(
	game_player_id INT PRIMARY KEY AUTO_INCREMENT,
    points INT NOT NULL,
    fk_game_id INT NOT NULL,
    fk_player_id INT NOT NULL
);

/* Adding foreign key into team */

ALTER TABLE team
	ADD FOREIGN KEY (fk_sport_id)
    REFERENCES sport (sport_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
/* Adding foreign key into game */
ALTER TABLE game
	ADD FOREIGN KEY (fk_location_id)
    REFERENCES location (location_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
/* Adding foreign key into team_player */
ALTER TABLE team_player
	ADD FOREIGN KEY (fk_player_id)
    REFERENCES player (player_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
/* Adding foreign key into team_player */
ALTER TABLE team_player
	ADD FOREIGN KEY (fk_team_id)
    REFERENCES team (team_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
/* Adding foreign key into game_player */
ALTER TABLE game_player
	ADD FOREIGN KEY (fk_game_id)
    REFERENCES game (game_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
/* Adding foreign key into game_player */
ALTER TABLE game_player
	ADD FOREIGN KEY (fk_player_id)
    REFERENCES player (player_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
/* Inserting player data */
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Park', 'Chris', 'Sutherland', 2022, 5.58, 145, 'Information Science');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Zhang', 'Kevin', 'Holland', 2023, 6.16, 185, 'Statistics');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Lee', 'Andrew', 'Nordenberg', 2020, 6.08, 195, 'Architecture');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Park', 'Tim', 'Nordenberg', 2021, 6.00, 190, 'Math');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Yeo', 'Noah', 'Tower A', 2021, 5.83, 165, 'Computer Science');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Sharma', 'Sagar', 'Tower B', 2022, 6.00, 180, 'Chemistry');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Pablo', 'Julian', 'Sutherland', 2023, 5.83, 175, 'Neuroscience');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Lee', 'Jennifer', 'Tower A', 2021, 5.04, 115, 'Information Science');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Kwon', 'Yebin', 'Bruce', 2022, 5.33, 115, 'Nursing');
INSERT INTO player (last_name, first_name, housing, grad_year, height, weight, major)
	VALUES ('Kim', 'DaSol', 'Tower B', 2020, 5.67, 190, 'Business');
    
/* Inserting sport data */
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('basketball', 'PBA1', 'Nike');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('volleyball', 'PVA1', 'Nike');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('soccer', 'PFA1', 'Adidas');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('lacrosse', 'PLA1', 'Under Armour');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('basketball', 'PBA2', 'New Balance');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('volleyball', 'PVA2', 'Adidas');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('soccer', 'PFA2', 'Lululemon');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('lacrosse', 'PLA2', 'Nike');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('swimming', 'PSA1', 'Under Armour');
INSERT INTO sport (sport_name, league_name, sponsorship)
	VALUES ('field hockey', 'PFA1', 'Lululemon');
    
/* Inserting location data */
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Bellefield Gym', '340 S Bellefield Ave', 50);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Trees Gym', '140 Allequippa St', 100);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Peterson Gym', '3719 Terrace St', 250);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Cost Center', '350 Robinson St', 200);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Sports Dome', '3719 Terrace St', 150);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Weigand Gym', '5032 Forbes Ave', 50);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Skibo Gym', '5098 Tech St', 75);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Trees Pool', '140 Allequippa St', 50);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Fitzgerald Field', '3526 Allequippa St', 100);
INSERT INTO location (location_name, address, population_capacity)
	VALUES ('Baierl Center', '3719 Terrace St', 75);
    
/* Inserting team data */
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Splashers', 'gold', 8, 2, 4, 1);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Philly Boys', 'green', 7, 3, 3, 8);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Globetrotters', 'purple', 4, 6, 4, 3);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('FOGO', 'red', 5, 5, 2, 4);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Slashers', 'blue', 6, 4, 1, 5);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Spikers', 'blue', 5, 5, 2, 2);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Setters', 'orange', 7, 3, 1, 6);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Worm Burners', 'white', 8, 2, 3, 7);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Nemos', 'black', 2, 8, 3, 9);
INSERT INTO team (team_name, color, wins, losses, timeout, fk_sport_id)
	VALUES ('Beauty Benders', 'green', 9, 1, 4, 10);
    
/* Inserting game data */
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('home', '54-45', 400.00, 34, 2);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('home', '62-42', 350.00, 19, 1);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('home', '4-3', 400.00, 45, 9);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('away', '15-12', 550.00, 109, 5);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('home', '111.6-68.3', 500.00, 23, 8);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('away', '17-4', 300.00, 106, 4);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('home', '6-1', 450.00, 201, 3);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('home', '12-6', 550.00, 34, 10);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('away', '8-4', 600.00, 42, 6);
INSERT INTO game (game_type, score, revenue, attendance, fk_location_id)
	VALUES ('away', '13-8', 350.00, 42, 7);
    
/* Inserting team_player data */
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (3, 0, 6, 1, 1);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (4, 0, 4, 2, 3);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (1, 1, 3, 3, 7);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (2, 0, 2, 4, 5);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (3, 2, 5, 5, 8);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (4, 3, 3, 6, 4);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (3, 1, 2, 7, 9);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (2, 0, 1, 8, 10);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (4, 0, 3, 9, 6);
INSERT INTO team_player (substitutions, suspensions, fouls, fk_player_id, fk_team_id)
	VALUES (1, 0, 5, 10, 2);
    
/* Inserting game_player data */
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (2, 1, 10);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (2, 2, 9);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (3, 3, 8);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (50, 4, 7);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (4, 5, 6);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (1, 6, 5);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (25, 7, 4);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (6, 8, 3);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (4, 9, 2);
INSERT INTO game_player (points, fk_game_id, fk_player_id)
	VALUES (20, 10, 1);

/* 10 SQL Queries to answer questions */

/* 1) "Where does each club player reside?" 
SIMPLE TABLE SELECT: This query displays all the names of the players and where they live. 
This adds value because it allows people to see what communities/dorms the players are a part of. 
People might find lost items at the gyms and could return belongings knowing this information. */
SELECT CONCAT(player.last_name, ', ', player.first_name) AS FullName, housing 
FROM club_sports.player;   

/* 2) "Among all sports, which teams' gear is green?"
INNER JOIN: This query inner joins sport and team. It displays information about all the teams that are green.
This adds value because it allows people to identify and receive more information about a team through their color.
People might have watched a team play but only remembered the team color. The user can then search up the team through color. */
SELECT sport.sport_name, sport.league_name, team.team_name, team.color
FROM club_sports.sport INNER JOIN club_sports.team
ON sport.sport_id = team.fk_sport_id
WHERE color = 'green';

/* 3) "Which sport facilities had at least 40 people spectating at a game?"
LEFT JOIN: This query left joins location and game. It shows all the locations that had at least 40 people in attendance.
This adds value because it allows people to see which sports to promote more or are lacking in popularity compared to other sports.
Faculty members might use this information to move certain sports to smaller facilities if the seats are not filling in larger facilities. */
SELECT location.location_name, location.population_capacity, game.game_type, game.attendance
FROM club_sports.location LEFT JOIN club_sports.game
ON location.location_id = game.fk_location_id
WHERE attendance >= 40;

/* 4) "What was the maximum amount of points scored by a player with the last name 'Park'?"
AGGREGATE: This query inner joins player and game_player. It displays the highest amount of points scored for an individual: Chris Park.
This adds value because it allows people look up players and see what their best games are.
Other players could use this to scout other teams and see how good a certain player is on another team. */
SELECT CONCAT(player.last_name, ', ', player.first_name) AS FullName, MAX(game_player.points) AS MAXPoints
FROM club_sports.player INNER JOIN club_sports.game_player
ON player.player_id = game_player.fk_player_id
WHERE last_name = 'Park'
GROUP BY FullName
;

/* 5) "How much money was made in all of the home games combined?"
AGGREGATE: This query shows how much money is made in all home games in total.
This adds value because it shows staff how the popularity of the school club games are doing.
If the total revenue of home games do not meet the budget, staff could increase the price of tickets. */
SELECT game.game_type AS GameType, SUM(game.revenue) AS TotalRevenue
FROM club_sports.game
WHERE game_type = 'home';

/* 6) "Among all the players' majors, what is the player frequency of these majors?"
GROUP BY: This query displays the frequency of how many players are certain majors.
This adds value because this statistic shows which major shows more interest in club sports.
People who run club sports can look at this data and provide more exposure to their club to students in certain majors who show lower interest. */
SELECT player.major AS Major, COUNT(player.major) AS FREQ
FROM club_sports.player
GROUP BY Major;

/* 7) "Who are all the players that are at least 6 feet tall and at least 180 pounds?"
HAVING: This query displays all the players that are at least 180 pounds and at least 6 feet.
This adds value because it gives players an idea of who to match up ahead of the actual game.
Players of the other team could look at this data and see what type of position the opponent is more likely to play according to height and weight. */
SELECT CONCAT(player.last_name, ', ', player.first_name) AS FullName, player.height AS Height, player.weight AS Weight
FROM club_sports.player
GROUP BY FullName, Height, Weight
HAVING Weight >= 180 AND Height >= 6.0; 

/* 8) "Which sport leagues are sponsored by Nike ordered from weaker divisions to higher divisions?" 
ORDER BY: This query displays all the sport leagues that are sponsored by Nike and are shown in descending order to display the weaker divisions first.
For example, "leagueName2" is a weaker division than "leagueName1". This adds value because it allows people to see what type of gear you will receive on the team.
Also, if players just want the sponsorship and the gear, they could look at the easier league to try out for the club team. In this case: the PLA2. */
SELECT sport.sport_id, sport.league_name, sport.sponsorship 
FROM club_sports.sport
WHERE sport.sponsorship = 'Nike' 
ORDER BY sport_id DESC;

/* 9) "Among all of the teams, which team has the least amount of wins?"
LIMIT: This query displays the team with the lowest number of wins.
This adds value because it gives players an idea of who who their competition is.
If a team is scheduled to play a very weak team. players could look at this data and make plans to rest their star players. */
SELECT team.team_name AS TeamName, MIN(team.wins) AS MinWins
FROM club_sports.team
GROUP BY TeamName
ORDER BY MinWins
LIMIT 1; 

/* "Among all sports, which players played on a team with at least 5 wins?"
SUBQUERY IN: This query shows a list of all the players played on a team with at least 5 wins.
This adds value because it shows the players that are on teams that are above .500 win percentage.
Assuming all teams that are .500 win percentage and up are projected to make the playoffs,
teams can predict who they will face in the playoffs to get ready for future matchups. */
SELECT player.last_name AS LastName, player.first_name AS FirstName
FROM club_sports.player
WHERE player.player_id
IN 
(SELECT team_player.fk_player_id
FROM club_sports.team_player
WHERE team_player.fk_team_id
IN 
(SELECT team.team_id
FROM club_sports.team
WHERE team.wins >= 5) );SELECT player.last_name AS LastName, player.first_name AS FirstName FROM club_sports.player WHERE player.player_id IN  (SELECT team_player.fk_player_id FROM club_sports.team_player WHERE team_player.fk_team_id IN  (SELECT team.team_id FROM club_sports.team WHERE team.wins >= 5) ) LIMIT 0, 1000
