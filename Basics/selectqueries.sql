
CREATE TABLE T1(
id INT IDENTITY(1,1) PRIMARY KEY,
name VARCHAR(255),
email VARCHAR(255),
phone_number VARCHAR(255),
dateofbirth DATE,
salary INT
);

INSERT INTO T1 
VALUES('SHE', 'SHHG@GMil.com',9817003977, '2002', 25000),
('SHEELA', 'SHEELS@GMil.com',981301120, '2001', 35000),
('HIMA', 'HIMA@GMil.com',9817098765, '1990', 90000),
('SHE', 'SHHG@GMil.com',9817039577, '2020', 25000),
('abc', 'ABC@gmail.com', 96098765432, '2000', 33000);

SELECT * FROM t1;

SELECT DISTINCT name FROM t1;

SELECT * FROM t1
order by id desc;

-- we cannot use top and offset together
SELECT TOP 1 * FROM T1
ORDER BY id
OFFSET 1 ROWS;


SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY id) AS row_num
    FROM T1
) AS sub
WHERE sub.row_num > 1
ORDER BY sub.row_num;

SELECT * FROM t1
ORDER BY id
OFFSET 1 ROWS;

SELECT MAX(ID) FROM t1;

SELECT * FROM t1 WHERE email like 'a%';

SELECT * FROM t1 WHERE email not like 'a%';

SELECT * FROM t1 WHERE SALARY > 25000 AND SALARY < 35000;


CREATE TABLE T2(
department_id INT IDENTITY(1,1) PRIMARY KEY,
id INT,
--FOREIGN KEY(id) REFERENCES T1(id), 
department VARCHAR(255)
);

INSERT INTO T2 VALUES(3, 'TEACHER'),
(4,'DATA ENGINEER'),
(2,'WEB DEVELOPER'),
(6,'Designer');

SELECT * FROM T2;

--JOINING TABLE
--INNER JOIN, FULL JOIN, LEFT JION, RIGHT JOIN
SELECT t.id, t.name, t.salary, d.department FROM T1 t
inner join t2 d
ON t.id=d.id
order by id;

SELECT t.id, t.name, t.salary, d.department FROM T1 t
join t2 d
ON t.id=d.id
order by id;

SELECT t.id, t.name, t.salary, d.department FROM T1 t
left join t2 d
ON t.id=d.id
order by id;

SELECT t.id, t.name, t.salary, d.department FROM T1 t
right join t2 d
ON t.id=d.id
order by id;

SELECT t.id, t.name, t.salary, d.department FROM T1 t
full join t2 d
ON t.id=d.id
order by id;

--UPDATE
UPDATE T1 
SET name='preety'; --this makes all the column of name as preety
select * from t1;

UPDATE T1 
SET name='preety' where id=3;
select * from t1;


--DDELETING THE ENTITE TABLE USING DROP

DROP TABLE T1;
DROP TABLE T2;