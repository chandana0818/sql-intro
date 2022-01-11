-- What are the first and last names of the players who 
-- played for the 2020 Chicago Cubs?

-- Hint: combine WHERE clauses using AND, e.g.
-- WHERE column1 = expression1
-- AND column2 = expression2

-- Expected result: 47 rows starting with
--
-- +------------+-----------+
-- | Jason      | Adam      |
-- | Albert     | Almora    |
-- | Adbert     | Alzolay   |
-- | Javier     | Baez      |
-- | David      | Bote      |
-- | Rex        | Brothers  |
-- | Kris       | Bryant    |
-- | Victor     | Caratini  |
-- | Andrew     | Chafin    |
-- | Tyler      | Chatwood  |
-- | Willson    | Contreras |
-- | Yu         | Darvish   |
-- | Matt       | Dermody   |
-- | Billy      | Hamilton  |
-- | Ian        | Happ      |


select id from teams where name = "Chicago Cubs" and year = "2020" limit 10;

select * from stats where team_id IN (select id from teams where name = "Chicago Cubs" and year = "2020") limit 10;

select distinct(player_id) from stats where team_id IN (select id from teams where name = "Chicago Cubs" and year = "2020") limit 10;

select * from players where id IN (select distinct(player_id) from stats where team_id IN 
(select id from teams where name = "Chicago Cubs" and year = "2020")) limit 10;

select first_name,last_name from players where id IN (select distinct(player_id) from stats where team_id IN 
(select id from teams where name = "Chicago Cubs" and year = "2020"));