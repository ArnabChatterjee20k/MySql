SELECT * FROM student;

--Updating records. But u have keep in mind about SCHEMA while updating data otherwise error will come.
UPDATE student
SET major = "Bio"
WHERE major = "Biology";

-- UPDATE data at once if same data has to be rplicated. Here all rows will affected
-- UPDATE student
-- set major = "Bio";


-- Deleting records
DELETE FROM student 
WHERE student_id = 5;

DELETE FROM student 
WHERE student_id in (6,7);

-- deleting everyhting in the TABLE
-- DELETE FROM student;