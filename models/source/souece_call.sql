select
  max(ORDER_DATE) as max_loaded_at,
  convert_timezone('UTC', current_timestamp()) as snapshotted_at
from {{ source('DBT_STIWARI','UC01' )}}

where datediff('day', ORDER_DATE, current_timestamp) < 2
