-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

-- Get Barry Bonds' ID: 1678

-- SELECT
--     id,
--     first_name,
--     last_name
-- FROM players
-- WHERE first_name = 'Barry'
--   AND last_name = 'Bonds';

SELECT
    players.id,
    first_name,
    last_name,
    total_hits
FROM players
LEFT JOIN
    (SELECT
        id,
        SUM(hits) AS total_hits
    FROM stats
    GROUP BY 1)
    USING (id)
WHERE players.id = 1678;