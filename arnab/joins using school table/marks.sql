-- @block
CREATE DATABASE school_practice;

use school_practice;


-- making a marks table;
show tables;
CREATE TABLE marks(id INTEGER PRIMARY KEY ,
                    name VARCHAR(20),
                    marks INTEGER DEFAULT "0"
                    );
desc marks;

-- inserting the data
INSERT into marks VALUES 
(1 , "Arnab" , 30),
(2 , "Bittu" , 30),
(3 , "Jden" , 30),
(4 , "JK" , 40);

-- viewing the DATA in marks table;
SELECT * from marks;