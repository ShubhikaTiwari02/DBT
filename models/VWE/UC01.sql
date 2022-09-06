{{
  config(
    post_hook=[
     
      "update VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS=' Smell is good'  
        where STATUS='Happy' and RATING=1",
      

      "update VWE_DATABASE.PUBLIC.REVIEW_NEW
       set REMARKS_BY_UNHAPPY_CUSTOMERS = 'Taste is good' 
       where STATUS='Happy' and RATING=2",


       " update VWE_DATABASE.PUBLIC.REVIEW_NEW
         set REMARKS_BY_UNHAPPY_CUSTOMERS=' Safe On Time delivery' 
         where STATUS='Happy' and RATING=3",
 
        "update VWE_DATABASE.PUBLIC.REVIEW_NEW
         set REMARKS_BY_UNHAPPY_CUSTOMERS='Product quality is good' 
         where STATUS='Happy' and RATING=4",
 
        "update VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS='taste is very good' 
         where STATUS='Happy' and RATING=5",
 
 
        "update  VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS='Poor quality,bad packaging ' 
        where STATUS='Unhappy' and RATING=1",
 
        "update VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS='Received damaged product' 
        where STATUS='Unhappy' and RATING=2",
 
       "update VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS='Same product not received' 
          where STATUS='Unhappy' and RATING=3",
 
        "update VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS='Bad packaging' 
        where STATUS='Unhappy' and RATING=4",
 
        "update VWE_DATABASE.PUBLIC.REVIEW_NEW
        set REMARKS_BY_UNHAPPY_CUSTOMERS='Late delivery' 
        where STATUS='Unhappy' and RATING=5",

       "ALTER TABLE VWE_DATABASE.PUBLIC.REVIEW_NEW RENAME COLUMN REMARKS_BY_UNHAPPY_CUSTOMERS TO REMARKS"
      ],
  )
}}

select * from VWE_DATABASE.PUBLIC.REVIEW_NEW

