

-- Q1. Create a CTE containing employees
-- earning more than 70000

WITH HighSalaryEmployees AS (
    SELECT *
    FROM employee
    WHERE salary > 70000
)
SELECT *
FROM HighSalaryEmployees;


-- Q2. Calculate average salary using CTE

WITH SalaryData AS (
    SELECT AVG(salary) AS average_salary
    FROM employee
)
SELECT *
FROM SalaryData;


-- Q3. Find employees earning more than
-- the average salary using CTE

WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM employee
)
SELECT e.*
FROM employee e
CROSS JOIN AverageSalary a
WHERE e.salary > a.avg_salary;


-- Q4. Find department-wise average salary

WITH DepartmentSalary AS (
    SELECT department,
           AVG(salary) AS average_salary
    FROM employee
    GROUP BY department
)
SELECT *
FROM DepartmentSalary;


-- Q5. Find departments whose average salary
-- is greater than 70000

WITH DepartmentSalary AS (
    SELECT department,
           AVG(salary) AS average_salary
    FROM employee
    GROUP BY department
)
SELECT *
FROM DepartmentSalary
WHERE average_salary > 70000;


-- Q6. Find employees earning more than
-- their department average

WITH DepartmentAverage AS (
    SELECT department,
           AVG(salary) AS average_salary
    FROM employee
    GROUP BY department
)
SELECT e.*
FROM employee e
JOIN DepartmentAverage d
ON e.department = d.department
WHERE e.salary > d.average_salary;