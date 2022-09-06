 
/*Conversions from each Campaign happened in the year 2021 using the Multi Attribution Channel table.*/
 select INSERTION_ORDER,Count(TOTAL_CONVERSIONS) as count_TOTAL_CONVERSIONS from VWE_DATABASE.X_POSTGRES_RDS_RAJSHRI.MULTI_ATTRIBUTION_DATASET 
 where YEAR=2021
group by(INSERTION_ORDER)