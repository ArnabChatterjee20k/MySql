-- getting all data
SELECT * 
FROM student;

-- getting specific column fromt the DATABASE
SELECT name
FROM student;

-- aliasing column
SELECT name as students_name 
FROM student;

-- selecting by using dot(.) and prepending table name 
SELECT student.name , student.major 
FROM student;


-- ordering the information 

-- in asecending order(default)
SELECT student.name , student.major 
FROM student
ORDER BY name;

-- in descending order -- DESC
SELECT * 
FROM student
ORDER BY student_id DESC;

-- in ascending order -- ASC
SELECT * 
FROM student
ORDER BY student_id ASC;


-- orderby using different subcoloumn. Both the column will be considered
SELECT * 
FROM student
ORDER BY major,student_id;
-- Here first the ordering done by using major then the ordering done by using the student_id.

-- limiting the number of results
SELECT * 
FROM student
LIMIT 2;


-- Using combination of order_by and limit. Limit should be always present at last
SELECT * 
FROM student
ORDER BY student_id DESC
LIMIT 2;


-- filtering results using WHERE
-- we can use comparison operators < , > , <= , >= , <> ,AND,OR with where to filter results accordinly
SELECT name 
FROM student
WHERE major="Biology" OR major="Chemistry";


-- Using IN operator.
SELECT * 
FROM student
WHERE name IN("kate","Mike");