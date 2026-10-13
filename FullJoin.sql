CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 10),
(2, 'Priya', 20),
(3, 'Rahul', 30),
(4, 'Sneha', NULL);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Department VALUES
(10, 'IT'),
(20, 'HR'),
(40, 'Finance');





SELECT
    e.emp_id,
    e.name,
    e.dept_id,
    d.dept_name
FROM Employee e
LEFT JOIN Department d
    ON e.dept_id = d.dept_id

UNION

SELECT
    e.emp_id,
    e.name,
    d.dept_id,
    d.dept_name
FROM Employee e
RIGHT JOIN Department d
    ON e.dept_id = d.dept_id;