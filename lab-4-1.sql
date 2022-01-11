-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select * from players where first_name = "Barry" and last_name= "Bonds";
select sum(hits) from stats where player_id = 1678;

select sum(hits) from stats where player_id IN (select id from players where first_name = "Barry" and last_name= "Bonds");

 select sum(stats.hits) from stats inner join players 
 on stats.player_id = players.id where players.first_name = "Barry" and players.last_name="Bonds";