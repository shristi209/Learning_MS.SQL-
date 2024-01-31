--inserting these values in rows on the table we created before
--not inserting id because we already made it auto-increment
INSERT INTO Employees
VALUES 
    ('John', 'Doe', 'IT'),
    ('Jane', 'Smith', 'HR'),
    ('Michael', 'Johnson', 'Finance');

--this will return all employees department as HR
UPDATE Employees
SET Department = 'HR'

--But this will only change the department of employee who's id is 3
UPDATE Employees
SET Department = 'HR'
WHERE id = '3';  --where showing the condition

--deleting the row which contains lastName as Doe
DELETE FROM Employees
WHERE LastName = 'Doe';