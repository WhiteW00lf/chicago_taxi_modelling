SELECT
  trip_id,
  COUNT(*) AS cnt
FROM taxi_staging.taxi_clean
GROUP BY trip_id
HAVING COUNT(*) > 1;