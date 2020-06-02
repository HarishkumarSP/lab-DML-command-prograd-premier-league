--1. Insert skill
INSERT INTO skill
(ID,NAME)
VALUES
(1,'Striker');

SELECT * FROM skill;

--2. Insert city
INSERT INTO city
(ID,CITYNAME)
VALUES
(1,'Madurai');

INSERT INTO city
(ID,CITYNAME)
VALUES
(2,'banglore');

SELECT * FROM city;
--3. Insert venue
INSERT INTO venue (venueid,name,city_id)
VALUES (2,'temple',1); 
INSERT INTO venue (venueid,name,city_id)
VALUES (3,'malls',2);

SELECT * FROM venue;
--4. Insert team
INSERT  INTO team (id,name,coach,home_city_id,teamleader) VALUES (1, 'harish', 'sachin',1,10);
INSERT INTO team (id,name,coach,home_city_id,teamleader) VALUES (2, 'amarthya', 'kholi',1,14);
INSERT INTO team (id,name,coach,home_city_id,teamleader) VALUES (3, 'ajay', 'dhoni',2,7);
INSERT INTO team (id,name,coach,home_city_id,teamleader) VALUES (4, 'aditya', 'rohit',2,4);

SELECT * FROM team;

--5. Insert player
INSERT INTO player (id,name,country,skill_id,team_id) VALUES (1,'sachin','ind',10,10);
INSERT INTO player (id,name,country,skill_id,team_id) VALUES (2,'pollard','westind',5,5);
SELECT * FROM player;
--6. Insert outcome
   
INSERT INTO outcome (id,winner_team_id,wik,runs,player_of_match) VALUES (1,1,5,100,10);  
INSERT INTO outcome (id,winner_team_id,wik,runs,player_of_match) VALUES (2,1,2,80,5);
INSERT INTO outcome (id,winner_team_id,wik,runs,player_of_match) VALUES (3,1,7,50,2);

SELECT * FROM outcome;
--7. Insert innings
INSERT ALL
INTO innings(id,innings_count,batting_team_id) VALUES(1,1,1)
INTO innings(id,innings_count,batting_team_id) VALUES(2,2,2)
INTO innings(id,innings_count,batting_team_id) VALUES(3,3,1)
INTO innings(id,innings_count,batting_team_id) VALUES(4,4,2)
SELECT * FROM dual;
SELECT * FROM innings;
--8. Insert game
INSERT ALL
INTO game(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,first_innings_id,second_innings_id) VALUES(1,TO_DATE('2010-06-18','YYYY-MM-DD'),1,2,1,2,1,2)
INTO game(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,first_innings_id,second_innings_id) VALUES(2,TO_DATE('2005-12-07','YYYY-MM-DD'),2,1,2,1,2,1)
SELECT * FROM dual;
SELECT * FROM game;
--9. Insert umpire
INSERT ALL
INTO umpire(id,name) VALUES(1,'simon')
INTO umpire(id,name) VALUES(2,'toghel')
INTO umpire(id,name) VALUES(3,'tucker')
SELECT * FROM dual;
SELECT * FROM umpire;
--10. Insert umpire_type
INSERT ALL
INTO umpire_type(id,name) VALUES(1,'cool')
INTO umpire_type(id,name) VALUES(2,'sarcastic')
SELECT * FROM dual;
SELECT * FROM umpire_type;
--11. Insert game_umpire_type
INSERT ALL
INTO game_umpire_type(id,game_id,umpire_id,umpire_type_id) VALUES(1,2,3,4)
INTO game_umpire_type(id,game_id,umpire_id,umpire_type_id) VALUES(4,3,2,1)
INTO game_umpire_type(id,game_id,umpire_id,umpire_type_id) VALUES(4,3,2,1)
SELECT * FROM dual;
SELECT * FROM game_umpire_type;
--12. Insert wicket_type
INSERT ALL
INTO wicket_type(id,name) VALUES(1,'bowled')
INTO wicket_type(id,name) VALUES(2,'caught')
INTO wicket_type(id,name) VALUES(3,'bowled')
SELECT * FROM dual;
SELECT * FROM wicket_type;
--13. Insert delivery
INSERT ALL
INTO delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs)VALUES(1,3,2,4,1,1,1,50)
INTO delivery(id,innings_id,over,ball,batsman_id,bowler_id,non_striker_id,runs)VALUES(2,4,3,3,2,4,3,20)
SELECT * FROM dual;
SELECT * FROM delivery;
--14. Insert wicket
INSERT ALL
INTO wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)VALUES(2,2,1,3,3)
INTO wicket(id,delivery_id,wicket_type_id,player_id,fielder_id)VALUES(3,2,1,4,2)
SELECT * FROM dual;
SELECT * FROM wicket;
--15. Insert extratype

INSERT ALL
INTO extratype(id,name) VALUES(1,'wide')
INTO extratype(id,name) VALUES(2,'no ball')
select* from dual;
select * from extratype;
--16. Insert extradelivery
INSERT ALL
INTO extradelivery(id,delivery_id,extra_type_id,runs)VALUES(1,6,5,10)
INTO extradelivery(id,delivery_id,extra_type_id,runs)VALUES(2,3,4,20)
SELECT * FROM dual;
SELECT * FROM extradelivery;
--17. Update venue
UPDATE venue
SET name='england'
WHERE venueid=2;
SELECT * FROM venue;
--18. Update team
UPDATE team
SET name='Ricky',coach='pointing'
WHERE id=4;
SELECT * FROM team;
--19. Update player
UPDATE player
SET name='ponting'
WHERE id=1;
UPDATE player 
SET country='Aus'
WHERE id=2;
SELECT * FROM player;
--20. Delete player
DELETE FROM player WHERE id>1;
SELECT * FROM player;
