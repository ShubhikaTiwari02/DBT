
select CUSTOMER_NAME ,GENDER, {{cents_to_dollars('RATING') }} as Ratings from VWE_DATABASE.PUBLIC.REVIEW_NEW 