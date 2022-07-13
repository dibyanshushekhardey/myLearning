UPDATE student
set major= 'Bio'
WHERE major = 'Biology'

UPDATE student set major = 'Comp Sci' WHERE major = 'Computer Science'
UPDATE student set major = 'Socio' WHERE major = 'Sociology';

UPDATE student set major = 'Phy' WHERE student_id = 3

UPDATE `student` SET `major` = 'Bio' WHERE `student`.`student_id` = 1;

UPDATE student set name = 'Tom', major = 'undecided' where student_id = 1

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student WHERE name = 'Tom' and major = 'undecided';

SELECT student.name, student.major FROM student ORDER BY name;

SELECT student.name, student.major FROM student ORDER BY student_id DESC;

SELECT * FROM student ORDER BY major, student_id;

SELECT * FROM student LIMIT 2;

SELECT * FROM student WHERE major = 'Chemistry';

SELECT * FROM student WHERE major <> 'Chemistry';

SELECT * FROM student WHERE name IN ('Rachel', 'Chandler', 'Monica');


