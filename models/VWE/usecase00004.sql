select SOURCE,Count(SOURCE) as total_source from  VWE_DATABASE.PUBLIC.SENTIMENT_ANALYSIS
Group by(SOURCE)