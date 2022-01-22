-- here we have declared PRIMARY KEY while making the columns only
CREATE TABLE student (
    student_id INT PRIMARY KEY , 
    name VARCHAR(20) , 
    major VARCHAR(20)
    ) ;



-- using PRIMARY KEY as a FUNCTION
CREATE TABLE practice (
    student_id INT  , 
    name VARCHAR(20) , 
    major VARCHAR(20),
    PRIMARY KEY(student_id)
    ) ;

-- getting structure of the table
DESC student;


-- dropping the table practice
DROP TABLE  practice;


-- altering the table by adding a column gpa
ALTER TABLE student ADD gpa DECIMAL(3,2);


-- deleting a column
ALTER TABLE student DROP COLUMN gpa;