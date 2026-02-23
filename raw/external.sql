CREATE OR REPLACE EXTERNAL TABLE taxi_raw.taxi_ext  (
Trip_ID STRING,
Taxi_ID STRING,
Trip_Start STRING,
Trip_End STRING,
Trip_Seconds STRING,
Trip_Miles STRING,
Pickup_Census_Tract STRING,
Dropoff_Census_Tract STRING,
Pickup_Community_Area STRING,
Dropoff_Community_Area STRING,
Fare STRING,
Tips STRING,
Tolls STRING,
Extras STRING,
Trip_Total STRING,
Payment_type STRING,
Company STRING,
Pickup_Centroid_Latitude STRING,
Pickup_Centroid_Longitude STRING,
Pickup_Centroid_Location STRING,
Dropff_Centroid_Latitude STRING,
Dropoff_Centroid_Longitude STRING,
Dropoff_Centroid_Location STRING,


)

OPTIONS (
  format = 'CSV',
  uris = ['gs://chicago_taxi_raw/Taxi_trips.csv'],
  skip_leading_rows = 1,
  quote='"' ,
  field_delimiter=',',
  allow_quoted_newlines = TRUE
);