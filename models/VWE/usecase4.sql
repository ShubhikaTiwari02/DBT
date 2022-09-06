-- //Total count of clicks and impressions using the Multi Attribution Channel table.
select CHANNEL,Count(CLICKS) as total_clicks,Count(IMPRESSIONS) as total_impressions from VWE_DATABASE.PUBLIC.MULTI_ATTRIBUTE
Group by(CHANNEL) 