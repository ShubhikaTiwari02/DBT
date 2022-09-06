/*Registrations and Subscriptions  .*/  
{{ config(materialized='table') }}
select * from VWE_DATABASE.PUBLIC.CONVERTED_USERS
where SUBSCRIPTION='Yes'
 
