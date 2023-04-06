-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT
    team_id,
    name,
    player_id,
    first_name,
    last_name,
    MAX(home_runs) AS most_home_runs
FROM stats AS stats
LEFT JOIN
    (SELECT
     id,
     year,
     name
     FROM teams) AS teams
     ON stats.team_id = teams.id
LEFT JOIN
    (SELECT
     id,
     first_name,
     last_name
     FROM players) AS players
     ON stats.player_id = players.id
WHERE year = 2019;