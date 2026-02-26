-- Total Fare by Month

SELECT
  d.year,
  d.month,
  SUM(f.fare_amount) AS monthly_fare
FROM `deportfolio-486507.taxi_marts.fact_trips` f
JOIN `deportfolio-486507.taxi_marts.dim_date` d
  ON f.dropoff_date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;



-- Fare by company 

SELECT 
  c.company_id,
  c.company_name,
  SUM(f.fare_amount) AS total_revenue
FROM `deportfolio-486507.taxi_marts.fact_trips` f
JOIN `deportfolio-486507.taxi_marts.dim_company` c
  ON f.company_id = c.company_id
GROUP BY c.company_id, c.company_name
ORDER BY total_revenue DESC;

 
-- Peak hours

SELECT
  EXTRACT(HOUR FROM TIMESTAMP(Trip_Start)) AS pickup_hour,
  COUNT(*) AS total_trips
FROM `deportfolio-486507.taxi_staging.taxi_clean`
GROUP BY pickup_hour
ORDER BY total_trips DESC;