 with customer_order as 
   (
     select
        CUSTOMER_ID,
        min(ORDER_DATE) as first_order_date,
        max(ORDER_DATE) as most_recent_order_date,
        count(ORDER_ID) as number_of_orders

      from VWE_DATABASE.PUBLIC.ORDERS_NEW
      group by 1
   )

    select
     VWE_DATABASE.PUBLIC.ORDERTABLE.CUSTOMER_ID,
     VWE_DATABASE.PUBLIC.ORDERTABLE.CUSTOMER_NAME,
     VWE_DATABASE.PUBLIC.ORDERTABLE.PRODUCT_NAME,
     VWE_DATABASE.PUBLIC.ORDERTABLE.ORDER_DATE,
     VWE_DATABASE.PUBLIC.ORDERTABLE.PRODUCT_ID,
     coalesce(customer_order.number_of_orders, 0) as number_of_orders

     from VWE_DATABASE.PUBLIC.ORDERTABLE
     left join customer_order using (CUSTOMER_ID)
