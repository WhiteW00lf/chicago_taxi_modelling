CREATE OR REPLACE TABLE `deportfolio-486507.taxi_marts.dim_company` AS

SELECT 
ROW_NUMBER() over(ORDER BY company_name) AS company_id,
company_name

FROM (
  SELECT DISTINCT company AS company_name
  
  FROM `deportfolio-486507.taxi_staging.taxi_clean` 
  WHERE company is NOT NULL
)

