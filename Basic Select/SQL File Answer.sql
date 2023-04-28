# Revising the Select Query I

select * from CITY where POPULATION > 100000 and COUNTRYCODE = "USA";

# Revising the Select Query II

select NAME from CITY where POPULATION > 120000 and COUNTRYCODE = "USA";

# Select All

select * from CITY;

# Select By ID

select * from CITY where ID = 1661;

# Japanese Cities' Attributes

select * from CITY where COUNTRYCODE = "JPN";

# Japanese Cities' Names

select NAME from CITY where COUNTRYCODE = "JPN";

# Weather Observation Station 1

select CITY, STATE from STATION;

# Weather Observation Station 3

select distinct CITY from STATION where ID%2 = 0;

# Weather Observation Station 4

select count(*) - count(distinct CITY) from STATION;

# Weather Observation Station 5

(select CITY, length(CITY) from STATION order by length(CITY) desc,CITY  limit 1)
union
(select CITY, length(CITY) from STATION order by length(CITY) asc,CITY  limit 1);

# Weather Observation Station 6

select distinct CITY from STATION where CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like 'O%' or CITY like 'U%';
                                                      (or)
select distinct CITY from STATION where lower(substr(CITY,1,1)) in ('a','e','i','o','u');

# Weather Observation Station 7

select distinct CITY from STATION where CITY like '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u';
                                                      (or)
select distinct CITY from STATION where lower(substr(CITY,-1,1)) in ("a","e","i","o","u");

# Weather Observation Station 8

select distinct CITY from STATION where substr(CITY,1,1) in ('A','E','I','O','U') and substr(CITY,-1,1) in ('a','e','i','o','u');;

# Weather Observation Station 9

select distinct(CITY) from STATION where left(CITY,1) not in ('A', 'E', 'I','O','U'); --also many other possible ways as in previous cases

# Weather Observation Station 10

select distinct(CITY) from STATION where right(CITY,1) not in ('a','e','i','o','u'); --also many other possible ways as in previous cases

# Weather Observation Station 11

select distinct(CITY) from STATION where left(CITY,1) not in ('A', 'E', 'I','O','U')
or substr(CITY,-1,1) not in ('a','e','i','o','u');  --also many other possible ways as in previous cases

# Weather Observation Station 12

select distinct(CITY) from STATION where substr(CITY,1,1) not in ('A', 'E', 'I','O','U')
and right(CITY,1) not in ('a', 'e', 'i','o','u');  --also many other possible ways as in previous cases

# Higher Than 75 Marks

select Name from STUDENTS where Marks>75 order by substr(Name,-3,3),ID;
                                                      (or)
select Name from STUDENTS where Marks>75 order by right(Name,3),ID;

# Employee Names

select name from Employee order by name asc;






