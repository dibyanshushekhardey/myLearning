/*Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with all sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle*/
Select 
CASE
when A + B <= C or A + C <= B or B + C <= A then "Not A Triangle"
when A = B and B = C then "Equilateral"
when A = B or A = C or B = C then "Isosceles"
else "Scalene"
end as triangle_sides
from TRIANGLES

/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.*/
select sum(city.population) from country left join city on country.code = city.countrycode where country.continent = 'Asia'

/*Query a count of the number of cities in CITY having a Population larger than 100000.*/
select count(name) from city where city.population >100000

/*Query the total population of all cities in CITY where District is California*/
select sum(city.population) from city where city.district = 'California'

/*Query the average population of all cities in CITY where District is California*/
select avg(city.population) from city where city.district = 'California'

/*Query the average population for all cities in CITY, rounded down to the nearest integer.*/
select floor(avg(city.population)) from city 

/*Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.*/
select round(sum(lat_n), 4) from station where station.lat_n > 38.7880 and station.lat_n < 137.2345

/*Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.*/
select round(max(station.lat_n), 4) from station where station.lat_n < 137.2345

/*Write a query to print the sum of LAT_N and LONG_W up to 2 decimal places separated by space.*/
SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2)
FROM STATION;

/*Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places*/
select round(long_w, 4) from station
where lat_n = (select max(lat_n) from station where lat_n < 137.2345)

/*Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places*/
select round(min(lat_n), 4) from station where lat_n > 38.7780

/*Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.*/
select round(long_w, 4) from station where lat_n = (select min(lat_n) from station where lat_n > 38.7780)

/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.*/
select city.name from city join country on city.countrycode = country.code where country.continent = 'Africa'
