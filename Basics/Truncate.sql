CREATE TABLE p3
(
roll int,
name varchar(20),
birth int
);

INSERT INTO p3
VALUES(1,’Shristi’,21,’shri@gmail.com’),
(2,’ank’,18,’ank@gmail.com’),
(3,’pren’,20,’pren@gmail.com’),
(4,’ansk’,21,’ansk@gmail.com’),
(5,’jeb’,20,’jeb@gmail.com’),
(6,’ted’,22,’ted@gmail.com’);

ALTER TABLE p3
ADD email varchar(100);

TRUNCATE TABLE p3;

ALTER TABLE p3
ADD phone_no varchar(100);

ALTER TABLE p3
ADD Address varchar(100);

Select * from p3
DROP TABLE p3

