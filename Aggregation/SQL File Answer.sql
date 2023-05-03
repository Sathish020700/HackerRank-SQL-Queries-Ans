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

