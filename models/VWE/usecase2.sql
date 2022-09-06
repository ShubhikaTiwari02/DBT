/*Registrations and Subscriptions  .*/  
{{ config(materialized='table') }}
select * from VWE_DATABASE.X_POSTGRES_RDS_RAJSHRI.CONVERTED_USERS1
where SUBSCRIPTION='Yes'
 
