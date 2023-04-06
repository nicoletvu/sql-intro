-- Which three teams had the losingest seasons?

-- Expected result:
--
-- +------+----------------------+------+--------+
-- | 1899 | Cleveland Spiders    | 20   | 134    |
-- | 1962 | New York Mets.       | 40   | 120    |
-- | 2003 | Detroit Tigers       | 43   | 119    |
-- +------+----------------------+------+--------+

-- ALTER TABLE teams
-- ADD COLUMN losses/(wins+losses) REAL AS pct_loss;

SELECT
    year,
    name,
    wins,
    losses
FROM teams
ORDER BY losses DESC
LIMIT 10;