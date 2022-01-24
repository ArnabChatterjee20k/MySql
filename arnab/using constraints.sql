DROP TABLE student;

SELECT * FROM student;

DESC student;
-- using constraints
-- PRIMARY KEY is both not NULL and UNIQUE
-- not null --> allows us to define that a particular COLUMN cant be null
-- unique --> means if any other record in the column having same data it will be rejected
-- default --> to give default value
-- AUTO_INCREMENT --> to increase value automatically. Useful in PRIMARY KEY

CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT , 
    name VARCHAR(20) NOT NULL, --can't be null
    major VARCHAR(20) UNIQUE DEFAULT "undecided"-- unique and DEFAULT
    ) ;


INSERT INTO student(name,major) VALUES("Jack" , "Biology");
INSERT INTO student(name,major) VALUES("Kate","Sociology");
INSERT INTO student(name,major) VALUES("Claire","Chemistry");
INSERT INTO student(name,major) VALUES("Mike","Comp Sci");
INSERT INTO student(name,major) VALUES("Claire","Physics");
INSERT INTO student(name) VALUES ("aa"); -- here we not providing major as we are using default constraint


-- Deleting table
DROP Table student;