ALTER TABLE `deportfolio-486507.taxi_marts.dim_company` 
ADD COLUMN effective_start_date DATE;

ALTER TABLE `deportfolio-486507.taxi_marts.dim_company` 
ADD COLUMN effective_end_date DATE;

ALTER TABLE `deportfolio-486507.taxi_marts.dim_company` 
ADD COLUMN is_current BOOL;


UPDATE `deportfolio-486507.taxi_marts.dim_company`
SET
  effective_start_date = DATE '2000-01-01',
  effective_end_date = NULL,
  is_current = TRUE;