# Population Census

select sum(CITY.POPULATION) from CITY join COUNTRY on CITY.COUNTRYCODE = COUNTRY.CODE where CONTINENT = "Asia";   --instead of join, inner join is also the same.

# African Cities

select C1.NAME from CITY C1 inner join COUNTRY C2 on C1.COUNTRYCODE = C2.CODE where CONTINENT = "Africa";

# Average Population of Each Continent

select C2.CONTINENT, floor(avg(C1.POPULATION)) from CITY C1 join COUNTRY C2 on C1.COUNTRYCODE = C2.CODE group by C2.CONTINENT;

# The Report

select case 
    when Grade>=8 then S.Name 
    else NULL 
    end as Name, Grade, Marks from Students S inner join Grades G on S.Marks between G.Min_Mark and G.Max_Mark order by G.Grade desc, S.Name, S.Marks;
