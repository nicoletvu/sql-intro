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

-- Get team ID: 2931
SELECT
    id,
    name,
    player_id
FROM teams
WHERE name = 'Chicago Cubs'
   AND year = 2020;

SELECT
    stats.id,
    team_id,
    player_id,
    first_name,
    last_name
FROM stats AS stats
LEFT JOIN
    (SELECT
     id,
     first_name,
     last_name
     FROM players) AS players
     ON stats.player_id = players.id
WHERE team_id = 2931;

