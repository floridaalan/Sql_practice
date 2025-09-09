Weather Observation Station 14:
select round(LAT_N,4) from STATION where LAT_N < 137.2345 order by LAT_N desc limit 1;

The Blunder:
 select ceil(avg(salary)-avg(replace(salary,"0",""))) from EMPLOYEES ;
