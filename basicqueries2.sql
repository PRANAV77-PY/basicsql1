CREATE DATABASE Basic_Queries2;


USE Basic_Queries2;

CREATE TABLE students(
	name VARCHAR(50),
    age INT,
    marks INT,
    city VARCHAR(50)
);

SELECT * from students;


INSERT INTO students(name,age,marks,city) VALUES
('Rahul',18,78,'Delhi');

INSERT INTO students(name,age,marks,city)VALUES
('Priya',19,85,'Mumbai');

INSERT INTO students(name,age,marks,city)VALUES
('Ankit',18,90,'Delhi');

INSERT INTO students(name,age,marks,city)VALUES
('Sneha',20,65,'Chennai');

INSERT INTO students(name,age,marks,city)VALUES
('Amit',17,50,'KolKata');

INSERT INTO students(name,age,marks,city)VALUES
('Rita',19,95,'Mumbai');


-- Get students ordered by marks in descending order
SELECT * from students
ORDER BY marks DESC;


-- Increase marks by 5 for students in Delhi
UPDATE students
SET marks = marks + 5
WHERE city = 'Delhi' 
