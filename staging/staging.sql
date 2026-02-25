CREATE TABLE IF NOT EXISTS `taxi_staging.taxi_clean` AS

SELECT 
Trip_ID,
Taxi_ID,
SAFE.Parse_Timestamp('%m/%d/%Y %I:%M:%S %p',Trip_Start) AS Trip_Start,
SAFE.Parse_Timestamp('%m/%d/%Y %I:%M:%S %p',Trip_End) AS Trip_End,
SAFE_CAST(Trip_Seconds AS Numeric) AS Trip_Seconds,
SAFE_CAST(Trip_Miles AS NUMERIC) AS Trip_Miles,
SAFE_CAST(Fare AS NUMERIC) AS Fare,
SAFE_CAST(Tips AS NUMERIC) AS Tips,
SAFE_CAST(Tolls AS NUMERIC) AS Tolls,
SAFE_CAST(Extras AS NUMERIC) AS Extras,
SAFE_CAST(Trip_Total AS NUMERIC ) AS Trip_Total,
Company

FROM `taxi_raw.taxi_native`
WHERE Trip_Start IS NOT NULL AND 
Trip_End IS NOT NULL
