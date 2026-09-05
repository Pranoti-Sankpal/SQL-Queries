CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);
INSERT INTO Employee (emp_id, name, dept_id, salary)
VALUES
(1, 'Amit', 10, 50000),
(2, 'Priya', 20, 60000),
(3, 'Rahul', 10, 55000),
(4, 'Neha', 30, 70000),
(5, 'Sneha', 20, 65000);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Department (dept_id, dept_name)
VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Marketing');



Q1. Write a query to display employee name and department name using NATURAL JOIN.

SELECT name, dept_name
FROM Employee
NATURAL JOIN Department;


Q2. Write a query to display all columns from both tables using NATURAL JOIN.

SELECT *
FROM Employee
NATURAL JOIN Department;


Q3. Display the names of employees who belong to the IT department.

SELECT name
FROM Employee
NATURAL JOIN Department
WHERE dept_name = 'IT';


Q4. Display employee names and department names where salary is greater than 55000.

SELECT name, dept_name
FROM Employee
NATURAL JOIN Department
WHERE salary > 55000;


Q5. Display department name and number of employees in each department.

SELECT dept_name, COUNT(*) AS employee_count
FROM Employee
NATURAL JOIN Department
GROUP BY dept_name;

Q6. Display each department and its highest salary.

SELECT dept_name, MAX(salary) AS highest_salary
FROM Employee
NATURAL JOIN Department
GROUP BY dept_name;


Q7. Display employee name, salary, and department name for employees earning more than 50000.

SELECT name, salary, dept_name
FROM Employee
NATURAL JOIN Department
WHERE salary > 50000;


Q8. Display employee name, department name, and salary in descending order of salary.

SELECT name, dept_name, salary
FROM Employee
NATURAL JOIN Department
ORDER BY salary DESC;


Q9. Display department name and average salary of employees.

SELECT dept_name, AVG(salary) AS average_salary
FROM Employee
NATURAL JOIN Department
GROUP BY dept_name;


Q10. Find the department(s) where the average employee salary is greater than 55000.

SELECT dept_name, AVG(salary) AS average_salary
FROM Employee
NATURAL JOIN Department
GROUP BY dept_name
HAVING AVG(salary) > 55000;