CREATE TABLE `deportfolio-486507.taxi_marts.dim_date` AS

SELECT 
Trip_Start,
Trip_End,
(Trip_End - Trip_Start) AS diff_time,
EXTRACT(DAY FROM Trip_Start AT TIME ZONE 'UTC') AS Day,
EXTRACT(MONTH FROM Trip_Start AT TIME ZONE 'UTC') AS MONTH,
EXTRACT(YEAR FROM Trip_Start AT TIME ZONE 'UTC') AS YEAR,
EXTRACT(WEEK FROM Trip_Start AT TIME ZONE 'UTC') AS WEEK,
FORMAT_DATE('%A', Trip_Start)  AS DayName
FROM `deportfolio-486507.taxi_staging.taxi_clean`