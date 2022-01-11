-- Who hit the most home runs in 2019, and what team did he play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

select * from stats where team_id IN (select id from teams where year = 2019) order by home_runs desc limit 1;

select stats.player_id, stats.team_id from stats inner join teams 
where teams.year=2019 order by stats.home_runs desc limit 1;

select  teams.name, players.first_name, players.last_name, max(stats.home_runs) from stats 
inner join teams on stats.team_id= teams.id 
inner join players on players.id = stats.player_id where teams.year=2019;