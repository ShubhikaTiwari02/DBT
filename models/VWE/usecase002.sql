/*Conversions from each Event happened in the year 2021 using the Latest Conversions table..*/
 select  EVENTS,Count(CONVERSION_STATUS) as Total_CONVERSION_STATUS from VWE_DATABASE.X_POSTGRES_RDS_RAJSHRI.LATEST_CONVERSION 
 where EVENT_YEAR=2021
group by(EVENTS) 




