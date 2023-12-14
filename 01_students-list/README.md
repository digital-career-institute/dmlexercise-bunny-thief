# Student List

## Create a new database
Create a new database for this exercise.
```
CREATE DATABASE exercise_student_list
use exercise_student_list
```

## Create the student table
Create a table named **students** with the following columns:  
```
id (integer, primary key)  
name (varchar, maximum length 50)  
age (integer)  
grade (float)  
```

> CREATE TABLE students(  
id INT PRIMARY KEY,  
name VARCHAR(50),  
age INT,  
grade FLOAT(3,1)  
);

## Insert and Modify Data
### 1. Insert Data
Insert these records into the students table with the following data:
```
(1, 'John Doe', 20, 85.5, '123 Main St')
(2, 'Jane Smith', 22, 92.0, '456 Oak Ave')
(3, 'Bob Johnson', 21, 78.5, '789 Pine Rd')
(4, 'Tina Turner', 25, 71.0, '45 Columbia St')
```

> INSERT INTO students(id, name, age, grade, address)  
values(1, 'John Doe', 20, 85.5, '123 Main St'),  
(2, 'Jane Smith', 22, 92.0, '456 Oak Ave'),  
(3, 'Bob Johnson', 21, 78.5, '789 Pine Rd'),  
(4, 'Tina Turner', 25, 71.0, '45 Columbia St');    

### Update Data
Update the grade of 'Jane Smith' to 95.0.

> UPDATE students  
SET grade = 95.0  
WHERE name = 'Jane Smith';

### Delete Data
Delete the record of the student with id 3 from the students table.

> DELETE FROM students  
WHERE id = 3;

### Select Data
Write a query to retrieve the names and ages of all students.  

> SELECT name, age  
FROM students;

### Bonus: Select the best students
Write a query to retrieve the names and grade of all students with a grade higher than 80.

> SELECT name, grade  
FROM students  
WHERE grade >= 80  
ORDER BY grade DESC;

