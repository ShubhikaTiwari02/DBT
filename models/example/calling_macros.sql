select CUSTOMER_NAME ,ORDER_ID,{{Avrage('RATING')}} as Ratings from VWE_DATABASE.PUBLIC.REVIEW_NEW