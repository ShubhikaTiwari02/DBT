{{
  config(
    materialized='incremental',
    unique_key='ORDER_ID',
    incremental_strategy='delete+insert'
    
  )
}}


select * from VWE_DATABASE.PUBLIC.REVIEW_NEW