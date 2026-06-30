USE practice_sql;
DROP TABLE dept;
DROP TABLE Emp;
CREATE TABLE dept(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50));
DESC dept;
INSERT INTO dept VALUES
(101,'Sales'),
(102,'HR'),
(103,'IT'),
(105,'Marketing');
SELECT * FROM dept;
CREATE TABLE Emp(
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    dept_id INT,
    salary INT);
DESC Emp;
INSERT INTO Emp VALUES
(1,'A',101,45000),
(2,'B',102,52000),
(3,'C',101,47000),
(4,'D',103,39000),
(5,'E',NULL,41000),
(6,'F',104,55000);
SELECT * FROM Emp;
SHOW COLUMNS FROM dept;
SELECT e.Emp_name,
       d.dept_name,
       e.salary
FROM Emp e INNER JOIN dept d ON e.dept_id = d.dept_id;
SELECT e.Emp_name,
       d.dept_name,
       e.salary
FROM Emp e LEFT JOIN dept d ON e.dept_id = d.dept_id;
SELECT e.Emp_name,
       d.dept_name FROM Emp e RIGHT JOIN dept d ON e.dept_id = d.dept_id;
SELECT e.Emp_name,
       d.dept_name
FROM Emp e LEFT JOIN dept d ON e.dept_id=d.dept_id; 
SELECT e.Emp_name,
       d.dept_name
FROM Emp e RIGHT JOIN dept d ON e.dept_id =d.dept_id; 
SELECT e.* FROM Emp e LEFT JOIN dept d
ON e.dept_id=d.dept_id
WHERE d.dept_id IS NULL;
SELECT d.* FROM Emp e
RIGHT JOIN dept d ON e.dept_id =d.dept_id
WHERE e.Emp_id IS NULL;
/* Alternative
      method */   
SELECT e.Emp_name,
       d.dept_name,
       e.salary
FROM Emp e,dept d WHERE e.dept_id =d.dept_id;  
SELECT e.Emp_name,
       d.dept_name FROM dept d RIGHT JOIN Emp e ON d.dept_id=e.dept_id;
/*Rewritten
as LEFT JOIN */
SELECT e.Emp_name,
       d.dept_name
FROM dept d LEFT JOIN Emp e ON d.dept_id =e.dept_id; 
SELECT e.Emp_name,
       d.dept_name
FROM Emp e CROSS JOIN dept d;    
ALTER TABLE Emp ADD ManagerID INT;



