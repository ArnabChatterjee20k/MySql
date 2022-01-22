DROP TABLE student;

SELECT * FROM student;

DESC student;
-- using constraints
-- PRIMARY KEY is both not NULL and UNIQUE
-- not null --> allows us to define that a particular COLUMN cant be null
-- unique --> means if any other record in the column having same data it will be rejected

CREATE TABLE student (
    student_id INT PRIMARY KEY , 
    name VARCHAR(20) NOT NULL, --can't be null
    major VARCHAR(20) UNIQUE-- unique
    ) ;


INSERT INTO student VALUES(1 , "Jack" , "Biology");
INSERT INTO student VALUES(2,"Kate","Sociology");
INSERT INTO student VALUES(3,"Claire","Chemistry");
INSERT INTO student VALUES(4,"Mike","Comp Sci");
INSERT INTO student VALUES(5,"Claire","Chemistry");
