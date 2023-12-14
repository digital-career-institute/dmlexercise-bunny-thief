# dmlexercise
DROP DATABASE exercise_student_list;

CREATE DATABASE exercise_student_list;
use exercise_student_list;

CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
grade FLOAT(3,1),
address VARCHAR(50)
); 

DESCRIBE students;

INSERT INTO students(id, name, age, grade, address)
values(1, 'John Doe', 20, 85.5, '123 Main St'),
(2, 'Jane Smith', 22, 92.0, '456 Oak Ave'),
(3, 'Bob Johnson', 21, 78.5, '789 Pine Rd'),
(4, 'Tina Turner', 25, 71.0, '45 Columbia St');

SELECT * FROM students;

SET SQL_SAFE_UPDATES = 0;

UPDATE students SET grade = 95.0 WHERE name = 'Jane Smith';

SELECT * FROM students WHERE name = 'Jane Smith';

DELETE FROM students WHERE id = 3;

SELECT * FROM students;

SELECT name, age FROM students;

SELECT name, grade FROM students WHERE grade >= 80 ORDER BY grade DESC;