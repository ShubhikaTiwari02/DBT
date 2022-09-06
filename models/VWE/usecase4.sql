-- //Total count of clicks and impressions using the Multi Attribution Channel table.
select CHANNEL,Count(CLICKS) as total_clicks,Count(IMPRESSIONS) as total_impressions from  VWE_DATABASE.X_POSTGRES_RDS_RAJSHRI.MULTI_ATTRIBUTION_DATASET
Group by(CHANNEL) 