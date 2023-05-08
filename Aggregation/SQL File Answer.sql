# Revising Aggregations - The Count Function

select count(*) from CITY where POPULATION > 100000;

# Revising Aggregations - The Sum Function

select sum(POPULATION) from CITY where DISTRICT = "California";

# Revising Aggregations - Averages

select avg(POPULATION) from CITY where DISTRICT = "California";

# Average Population

select floor(avg(POPULATION)) from CITY;
                     (or)
select round(avg(POPULATION)) from CITY;

# Japan Population

select sum(POPULATION) from CITY where COUNTRYCODE = "JPN";

# Population Density Difference

select (max(POPULATION)-min(POPULATION)) from CITY;

# The Blunder

select ceil(avg(Salary)- avg(replace(Salary,'0',''))) from EMPLOYEES;

# Top Earners

select salary*months as maximum_salary, count(*) from Employee group by salary*months order by maximum_salary desc limit 1;

# Weather Observation Station 2

select round(sum(LAT_N),2), round(sum(LONG_W),2) from STATION;

# Weather Observation Station 13

select round(sum(LAT_N),4) from STATION where round(LAT_N,4) between 38.7880 and 137.2345;

# Weather Observation Station 14

select max(round(LAT_N,4)) from STATION where round(LAT_N,4) < 137.2345;

# Weather Observation Station 15

select round(LONG_W,4) from STATION where LAT_N = (select max(LAT_N) from STATION where LAT_N < 137.2345);
                                              (or)
select round(LONG_W,4) from STATION where LAT_N < 137.2345 order by LAT_N desc limit 1;

# Weather Observation Station 16

select round(LAT_N,4) from STATION where LAT_N > 38.7780 order by LAT_N asc limit 1;
                                           (or)
select round(min(LAT_N),4) from STATION where LAT_N > 38.7780;

# Weather Observation Station 17

select round(LONG_W,4) from STATION where LAT_N >38.7780 order by LAT_N asc limit 1; -- also can be written using sub query as in case of # Weather Observation Station 15

# Weather Observation Station 18

with cte as (
    select min(LAT_N) as a, min(LONG_W) as b, max(LAT_N) as c, max(LONG_W) as d from STATION
) select round(abs(a-c) + abs(b-d),4) from cte;
                                        (or)
select round((max(LAT_N)-min(LAT_N))+(max(LONG_W) - min(LONG_W)),4) from STATION;

# Weather Observation Station 19

with cte as (
    select min(LAT_N) as a, max(LAT_N) as b, min(LONG_W) as c, max(LONG_W) as d from STATION
) select round(sqrt(power((b-a),2) + power((d-c),2)),4) from cte;
                                        (or)
select round(sqrt(power((max(LONG_W)-min(LONG_W)),2) + power((max(LAT_N)-min(LAT_N)),2)),4) from STATION;

# Weather Observation Station 20

select round(LAT_N,4) from 
(select LAT_N, row_number() over(order by LAT_N) as rn from STATION) as s where rn in 
(select round(count(LAT_N)/2) from STATION);
                                        
