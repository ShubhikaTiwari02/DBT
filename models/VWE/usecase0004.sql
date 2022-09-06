select INSERTION_ORDER,Count(CLICKS) as total_clicks ,Count(IMPRESSIONS) as total_impressions from VWE_DATABASE.PUBLIC.MULTI_ATTRIBUTE
Group by(INSERTION_ORDER)