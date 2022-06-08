-- here I have done joins by using 2 ways of each
use school_practice;

-- cross join or cartesian product (formula n(A)*n(b). Here 4 data in each table so 16 records)
SELECT * from marks , adress;
SELECT * from marks CROSS JOIN adress;


/*
    Full join
    MYSQL does not support full join
    In mysql we have to use left,right join and union
    It is not cartesion product rather all the data from both the tables
    Those columns which exist in only one table will contain NULL in the opposite table.
*/
SELECT * from marks as m 
LEFT JOIN adress as a 
on m.id = a.id
UNION
SELECT * from marks as m 
RIGHT JOIN adress as a 
on m.id = a.id;

/*
    Left or Left outer join 
    data of left table and common data between left and right table.
    if some data is not present in right table or intersection of left and right table then it will show null
*/

SELECT * from marks as m 
LEFT JOIN adress as a --marks is left and adress is right table
on m.id = a.id;

-- getting only left table data not the intersection of left and right
-- here we are dicarding that part where no mapping is done means where the adress.id is null
SELECT * from marks as m 
LEFT JOIN adress as a 
on m.id = a.id
WHERE a.id IS NOT NULL;


/*
    right or right outer join 
    data of right table and common data between left and right table.
    if some data is not present in left table or intersection of left and right table then it will show null
*/
SELECT * from marks as m 
RIGHT JOIN adress as a
on m.id = a.id;


-- getting only right table data not the intersection of left and right
-- here we are dicarding that part where no mapping is done means where the marks.id is null
SELECT * from marks as m 
RIGHT JOIN adress as a 
on m.id = a.id
WHERE m.id IS NOT NULL;


/*
    inner JOIN or intersection or common data
    It will be used when we need common data between two tables.
    Left join we will not use as it also gives us left table data
*/
SELECT * from marks as m 
INNER JOIN adress as a 
on m.id = a.id;


/*
    Natural join a special type of inner join where the join is done automatically 
    if we have common attribute in both the tables
*/
SELECT * from marks as m 
NATURAL JOIN adress as a;


/*
    Self JOIN 
    using the above join operation in a single table.
    Aliasing is required 2 times
*/
SELECT * from adress as a 
LEFT JOIN adress as b
on a.id=b.id;