select
 CUSTOMER_NAME,
 ORDER_ID,
 CUSTOMER_ID,
 PRODUCT_NAME
from {{ source('public', 'ORDERS_NEW') }}
left join {{ source('public', 'ORDERTABLE') }} using (CUSTOMER_ID)
