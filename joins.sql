
-- Q1. Display employee name and department name

SELECT e.name, d.department
FROM employee e
INNER JOIN department d
ON e.department = d.department;


-- Q2. Display employee name and department location

SELECT e.name, d.location
FROM employee e
INNER JOIN department d
ON e.department = d.department;


-- Q3. Display employees working in Pune

SELECT e.*
FROM employee e
INNER JOIN department d
ON e.department = d.department
WHERE d.location = 'Pune';


-- Q4. Display employee name, department and location

SELECT e.name, d.department, d.location
FROM employee e
INNER JOIN department d
ON e.department = d.department;


-- Q5. Display all employees and their departments
-- using LEFT JOIN

SELECT e.name, d.department
FROM employee e
LEFT JOIN department d
ON e.department = d.department;


-- Q6. Display all departments and their employees

SELECT d.department, e.name
FROM department d
LEFT JOIN employee e
ON d.department = e.department;


-- Q7. Find employees who have a matching department

SELECT e.*
FROM employee e
INNER JOIN department d
ON e.department = d.department;


-- Q8. Find employees who do not have
-- a matching department

SELECT e.*
FROM employee e
LEFT JOIN department d
ON e.department = d.department
WHERE d.department IS NULL;


-- Q9. Count employees in each department
-- using JOIN

SELECT d.department, COUNT(e.emp_id) AS employee_count
FROM department d
LEFT JOIN employee e
ON d.department = e.department
GROUP BY d.department;


-- Q10. Find the average salary of each department

SELECT d.department, AVG(e.salary) AS average_salary
FROM department d
INNER JOIN employee e
ON d.department = e.department
GROUP BY d.department;