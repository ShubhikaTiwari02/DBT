{{ config(materialized='table') }}

with source_data as (
select * from VWE_DATABASE.PUBLIC.REVIEW_NEW
)

select *
from source_data


