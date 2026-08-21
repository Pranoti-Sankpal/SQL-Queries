-- Q1. Display employee name and manager name

SELECT e.name AS employee_name,
       m.name AS manager_name
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;


-- Q2. Display employees who have a manager

SELECT e.name AS employee_name,
       m.name AS manager_name
FROM employee e
INNER JOIN employee m
ON e.manager_id = m.emp_id;


-- Q3. Find employees who do not have a manager

SELECT e.name AS employee_name
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id
WHERE e.manager_id IS NULL;


-- Q4. Find employees whose salary is greater
-- than their manager's salary

SELECT e.name AS employee_name,
       e.salary AS employee_salary,
       m.name AS manager_name,
       m.salary AS manager_salary
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;


-- Q5. Find employees whose salary is less
-- than their manager's salary

SELECT e.name AS employee_name,
       e.salary AS employee_salary,
       m.name AS manager_name,
       m.salary AS manager_salary
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id
WHERE e.salary < m.salary;


-- Q6. Display employee and manager department

SELECT e.name AS employee_name,
       e.department AS employee_department,
       m.name AS manager_name,
       m.department AS manager_department
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id;


-- Q7. Find employees who have the same salary
-- as their manager

SELECT e.name AS employee_name,
       m.name AS manager_name,
       e.salary
FROM employee e
JOIN employee m
ON e.manager_id = m.emp_id
WHERE e.salary = m.salary;