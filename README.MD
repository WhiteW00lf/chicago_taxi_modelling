# 🚕 Chicago Taxi Data Warehouse (BigQuery)

## 📌 Overview

Built a dimensional data warehouse in **Google BigQuery** using the Chicago Taxi dataset.

Architecture follows:

Raw → Staging → Marts (Star Schema)

Implements:
- Star schema modelling
- Surrogate keys
- SCD Type 2 (dim_company)
- Business-ready analytics queries

---

## 🏗 Architecture

CSV (Kaggle)  
↓  
BigQuery – taxi_raw  
↓  
BigQuery – taxi_staging  
↓  
BigQuery – taxi_marts (Star Schema)  
↓  
Analytics Queries  

---

## ⭐ Data Model

### fact_trips  
**Grain:** One completed trip per row  

- trip_id  
- pickup_ts  
- dropoff_ts  
- pickup_date_id (FK)  
- dropoff_date_id (FK)  
- company_id (FK)  
- trip_distance  
- trip_duration_minutes  
- fare_amount  
- tip_amount  
- tolls_amount  
- total_amount  

### dim_date  
- date_id (PK – YYYYMMDD)  
- full_date  
- year  
- month  
- weekday_name  
- quarter  

### dim_company (SCD Type 2)  
- company_id (PK – surrogate key)  
- company_name  
- effective_start_date  
- effective_end_date  
- is_current  

---

## 📊 Sample Analytics

- Monthly Revenue  
- Revenue by Company  
- Peak Pickup Hours  

---

## 🧠 Concepts Applied

- Dimensional modelling (Kimball)
- Fact vs Dimension separation
- Surrogate keys
- Smart date keys
- Slowly Changing Dimensions (SCD2)
- Null handling strategy

---

## 🚀 Future Improvements

- Add dim_location  
- Partition & cluster fact table  
- Incremental loads  
- dbt automation  

---

## 🛠 Tech Stack

- Google BigQuery  
- SQL  
- Kaggle Dataset  

---

**Author:** Surya Poojary  
Data Engineering Portfolio Project