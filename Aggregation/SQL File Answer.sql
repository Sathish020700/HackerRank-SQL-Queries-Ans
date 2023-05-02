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

