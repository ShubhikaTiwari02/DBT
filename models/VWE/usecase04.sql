 
select CAMPAIGN_TYPE,Count(CLICKS) as total_clicks,Count(IMPRESSIONS) as total_impressions from VWE_DATABASE.PUBLIC.MULTI_ATTRIBUTE
Group by(CAMPAIGN_TYPE)