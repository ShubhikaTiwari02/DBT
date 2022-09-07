{{ config(materialized='table') }}

with source_data as (
select * from VWE_DATABASE.PUBLIC.REVIEWs
)

select *
from source_data