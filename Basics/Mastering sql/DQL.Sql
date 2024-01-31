--selecting all columns from Employees table
SELECT * FROM Employees; --FROM: identifies the tables from which we retrieve data

--selecting first name and department column from employees table
SELECT FirstName, Department FROM Employees;

--selecting only the first name of HR department employee
SELECT FirstName FROM Employees
WHERE Department='HR';

--Here orderby returns the salary in descending order, by default order by gives ascending order 
SELECT FirstName, LastName, Salary 
FROM Employees 
ORDER BY Salary DESC;

--Groupby group by the department, for example: HR group will be created with average salary
SELECT Department, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY Department;

--having is used after group by clause, gives condition to filter out the grouppped department
SELECT Department, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY Department 
HAVING AVG(Salary) > 60000;

--returns all the unique department from the employees table
SELECT DISTINCT Department FROM Employees;

--Top 2 returns only the first 2 rows from the column
SELECT TOP 2 FirstName, LastName, Salary FROM Employees;

--skip 1st row and return next 2 rows
SELECT FirstName, LastName, Salary 
FROM Employees 
ORDER BY Salary 
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY;