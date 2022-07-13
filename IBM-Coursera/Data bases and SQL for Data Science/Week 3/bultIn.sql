SELECT SUM(COST) from petrescue;
select SUM(COST) AS SUM_OF_COST FROM petrescue;
SELECT MAX(QUANTITY) from petrescue;
SELECT AVG(COST) FROM petrescue;
SELECT AVG(COST/QUANTITY) FROM petrescue WHERE ANIMAL="Dog";

SELECT ROUND(COST) FROM petrescue;
SELECT LENGTH(ANIMAL) FROM petrescue;
SELECT UPPER(ANIMAL) FROM petrescue;
SELECT DISTINCT(UPPER(ANIMAL)) FROM petrescue;
SELECT * FROM `petrescue` WHERE LCASE(ANIMAL)="cat";

SELECT DAY(RESCUEDATE) FROM petrescue WHERE ANIMAL="cat";
SELECT SUM(QUANTITY) from petrescue WHERE month(RESCUEDATE)="05";
SELECT SUM(QUANTITY) from petrescue WHERE day(RESCUEDATE)="14";
SELECT DATE_add(RESCUEDATE, INTERVAL 3 day) from petrescue;
SELECT datediff(CURRENT_TIMESTAMP, RESCUEDATE) from petrescue;