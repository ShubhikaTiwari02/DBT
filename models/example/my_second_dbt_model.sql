
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_test') }}
and 
