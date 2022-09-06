{{
  config(
    post_hook=[
        "CREATE OR REPLACE TABLE TRANSFORMATION.PUBLIC.usecase_4 AS
       select * from VWE_DATABASE.PUBLIC.MULTI_ATTRIBUTE",

      "select CHANNEL,Count(CLICKS) as total_clicks,Count(IMPRESSIONS)  as total_impression from  TRANSFORMATION.PUBLIC.usecase_4
      Group by(CHANNEL)",
 
      "select CAMPAIGN_TYPE,Count(CLICKS)  as total_clicks,Count(IMPRESSIONS)  as total_impression from TRANSFORMATION.PUBLIC.usecase_4
      Group by(CAMPAIGN_TYPE)",
 
     "select INSERTION_ORDER,Count(CLICKS) as total_clicks,Count(IMPRESSIONS) as total_impression from TRANSFORMATION.PUBLIC.usecase_4
      Group by(INSERTION_ORDER)",
 
      "select SOURCE,Count(SOURCE) as total_SOURCE from VWE_DATABASE.PUBLIC.SENTIMENT_ANALYSIS
       Group by(SOURCE)",
 
      "select Count(*) from VWE_DATABASE.PUBLIC.SENTIMENT_ANALYSIS where SOURCE='Facebook'"
   ],
)
}}

select * from VWE_DATABASE.PUBLIC.MULTI_ATTRIBUTE,
select * from VWE_DATABASE.PUBLIC.SENTIMENT_ANALYSIS
