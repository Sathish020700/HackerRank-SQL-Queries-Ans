# Type of Triangle

select case when A+B<=C or B+C<=A or C+A<=B then "Not A Triangle"
            when A=B and B=C then "Equilateral"
            when A=B or B=C or A=C then "Isosceles"           
            else "Scalene"
            end from TRIANGLES;
