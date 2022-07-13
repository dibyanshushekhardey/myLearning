--Course 1

select name from people;

select 'DataCamp <3 SQL'
AS result;

SELECT 'SQL is'
AS result;

SELECT 'SQL is cool'
AS result;

SELECT title from films

SELECT title, release_year
FROM films;

SELECT title, release_year, country
FROM films;

SELECT *
FROM films;

SELECT distinct country from films;

SELECT distinct certification from films;

SELECT distinct role from roles;

select count(*) from reviews;

SELECT count(id) from people;

SELECT COUNT(birthdate)
FROM people;

SELECT COUNT(distinct birthdate)
FROM people;

select count(distinct language) from films;

SELECT count(distinct country) from films;

select * from films
where release_year = '2016'

select count(title)
from films 
where release_year < '2000'

select title, release_year
from films
where release_year > '2000'

select * from films
where language = 'French'

select name, birthdate
from people
where birthdate = '1974-11-11'

select count(title)
from films
where language = 'Hindi'

select * from films 
where certification = 'R'

select title, release_year
from films
where language = 'Spanish'
and release_year < 2000

select * from films
where language = 'Spanish' and release_year > 2000

select * from films
where language = 'Spanish' and release_year > 2000 and release_year < 2010

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
and (language = 'French' or language = 'Spanish')

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
and (gross > 2000000)

select title, release_year
from films
where release_year between 1990 and 2000

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
and (budget > 100000000)

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
and language = 'Spanish'

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND (language = 'Spanish' or language = 'French');

select title, release_year
from films
where release_year in (1990, 2000)
and duration > 120

select title, language
from films
where language in ('English', 'Spanish', 'French')

select title, certification from films
where certification in ('NC-17', 'R')

select name from people
where deathdate is null

select title from films
where budget is null

select count(title)
from films
where language is null

select name from people
where name like 'B%' 

select name from people
where name like '_r%'

select name 
from people
where name not like 'A%'

select sum(duration) from films

select avg(duration) from films

select min(duration) from films

select max(duration) from films

select sum(gross) from films

select avg(gross) from films

select min(gross) from films

select max(gross) from films

select sum(gross)
from films
where release_year >= 2000

select avg(gross) 
from films
where title like 'A%'

select min(gross)
from films
where release_year = '1994'

select max(gross)
from films
where release_year between 2000 and 2012

select(10 / 3)

select title, (gross - budget) as net_profit
from films

select title, (duration / 60.0) as duration_hours
from films

select avg(duration) / 60.0 as avg_duration_hours from films

SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
FROM people;

select (max(release_year) - min(release_year)) as difference from films

select (max(release_year) - min(release_year))/ 10.0 number_of_decades from films

select name from people order by name asc

select name from people order by birthdate asc

select birthdate, name from people order by birthdate asc

select title from films where release_year in (2000, 2012) order by release_year asc

select * from films where release_year not in (2015) order by duration asc

select title, gross from films where title like 'M%' order by title asc

select imdb_score, film_id from reviews order by imdb_score desc

select title from films order by title desc

select title, duration from films order by duration desc

select birthdate, name from people order by birthdate, name asc;

select release_year, duration, title from films order by release_year, duration

select certification, release_year, title from films order by certification asc, release_year

select name, birthdate from people order by name, birthdate

select release_year, count(title) from films group by release_year

select release_year, avg(duration) from films group by release_year

select release_year, max(budget) from films group by release_year

select imdb_score, count(*) from reviews group by imdb_score

select release_year, min(gross) from films group by release_year order by release_year asc

select language, sum(gross) from films group by language order by language

select country, sum(budget) from films group by country order by country

select release_year, country, max(budget) from films 
group by release_year, country order by release_year, country

select country, release_year, min(gross) from films group by release_year, country order by country, release_year

SELECT release_year
FROM films
WHERE release_year > 1990;

SELECT release_year
FROM films
WHERE release_year > 1990
group by release_year

SELECT release_year, avg(budget) as avg_budget, avg(gross) as avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990 
GROUP BY release_year
having avg(budget) > 60000000

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
order by avg_gross desc

-- select country, average budget, 
--     and average gross
select country, avg(budget) as avg_budget, avg(gross) as avg_gross
-- from the films table
from films
-- group by country 
group by country
-- where the country has more than 10 titles
having count(title) >  10
-- order by country
order by country asc
-- limit to only show 5 results
limit 5

SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';
