CREATE OR REPLACE TABLE taxi_marts.dim_date AS
SELECT DISTINCT
  CAST(FORMAT_DATE('%Y%m%d', DATE(Trip_Start)) AS INT64) AS date_id,
  DATE(Trip_Start) AS full_date,
  EXTRACT(YEAR FROM DATE(Trip_Start)) AS year,
  EXTRACT(MONTH FROM DATE(Trip_Start)) AS month,
  EXTRACT(DAY FROM DATE(Trip_Start)) AS day,
  EXTRACT(DAYOFWEEK FROM DATE(Trip_Start)) AS day_of_week,
  FORMAT_DATE('%A', DATE(Trip_Start)) AS weekday_name,
  EXTRACT(WEEK FROM DATE(Trip_Start)) AS week
FROM taxi_staging.taxi_clean;