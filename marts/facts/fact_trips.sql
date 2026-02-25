CREATE OR REPLACE TABLE `deportfolio-486507.taxi_marts.fact_trips` AS 

SELECT 
s.Trip_ID,
CAST(FORMAT_DATE('%Y%m%d', DATE(s.Trip_Start)) AS INT64) AS pickup_date_id,
CAST(FORMAT_DATE('%Y%m%d', DATE(s.Trip_End)) AS INT64) AS dropoff_date_id,
dc.company_id,
s.Fare AS fare_amount,
COALESCE (s.Trip_Total,0) AS trip_total,
COALESCE (s.Tips,0) AS tips,
COALESCE(s.Tolls,0) AS tolls

from `deportfolio-486507.taxi_staging.taxi_clean` s
LEFT JOIN `deportfolio-486507.taxi_marts.dim_company` dc
ON TRIM(dc.company_name) = TRIM(s.Company)

