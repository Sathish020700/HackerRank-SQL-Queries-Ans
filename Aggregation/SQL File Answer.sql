# Revising Aggregations - The Count Function

select count(*) from CITY where POPULATION > 100000;

# Revising Aggregations - The Sum Function

select sum(POPULATION) from CITY where DISTRICT = "California";

# Revising Aggregations - Averages

select avg(POPULATION) from CITY where DISTRICT = "California";
