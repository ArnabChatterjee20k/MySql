DESC student;

-- print data from the table student
SELECT * FROM student;

-- inserting data
INSERT INTO student VALUES(2 , "Kate" , "Sociology");

-- inserting by using column NAME
INSERT INTO student (student_id , name) VALUES (3,"Claire");

-- this value we cant create as we are making a DUPLICATE PRIMARY KEY which is not possible.
-- INSERT INTO student (student_id , name) VALUES (3,"Claire");

INSERT INTO student (student_id , name) VALUES (4,"Claire");
INSERT INTO student  VALUES (5,"Jack","Biology");
INSERT INTO student  VALUES (6,"MIke","Computer Science");