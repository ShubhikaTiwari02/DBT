SELECT A.CUSTOMER_ID,A.CUSTOMER_NAME,A.STATUS,A.RATING,A.REMARKS_BY_UNHAPPY_CUSTOMERS AS REMARKS FROM  
{{ref('review_new')}} as A
INNER JOIN {{ref('review')}} as B ON A.CUSTOMER_ID = B.CUSTOMER_ID

