use school_practice;

-- creating adress table;
CREATE TABLE adress (
    id INTEGER(10) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    adress TEXT
);
DESC adress;

-- adding data
INSERT INTO adress VALUES 
(1 , "Arnab" , "pandaveswar"),
(2 , "Bittu" , "gobindapur"),
(3 , "Jden" , "dgp"),
(4 , "JK" , "asansol");

-- viewing the data
SELECT * from adress;