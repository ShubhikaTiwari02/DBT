{{ config(materialized='table',schema='new_staging_schema') }}
Select CUSTOMER_ID, sum(SALES_AMOUNT) as Overall_Sales_Amount,sum(QUANTITY) as Quantity from VWE_DATABASE.X_POSTGRES_RDS_RAJSHRI.WHOLESALE2
group by(CUSTOMER_ID)