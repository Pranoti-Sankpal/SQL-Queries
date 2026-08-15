-- Q1. Find employees whose salary is greater than 70000

SELECT *
FROM employee
WHERE salary > 70000;


-- Q2. Find employees whose salary is less than 60000

SELECT *
FROM employee
WHERE salary < 60000;


-- Q3. Find employees whose salary is equal to 90000

SELECT *
FROM employee
WHERE salary = 90000;


-- Q4. Find employees who work in the IT department

SELECT *
FROM employee
WHERE department = 'IT';


-- Q5. Find employees who do not work in the IT department

SELECT *
FROM employee
WHERE department != 'IT';


-- Q6. Find employees whose salary is between 60000 and 90000

SELECT *
FROM employee
WHERE salary BETWEEN 60000 AND 90000;


-- Q7. Find employees who work in IT or HR

SELECT *
FROM employee
WHERE department IN ('IT', 'HR');


-- Q8. Find employees whose name starts with 'A'

SELECT *
FROM employee
WHERE name LIKE 'A%';


-- Q9. Find employees whose name contains 'a'

SELECT *
FROM employee
WHERE name LIKE '%a%';


-- Q10. Find employees whose salary is greater than 70000
-- and belong to IT department

SELECT *
FROM employee
WHERE salary > 70000
AND department = 'IT';


-- Q11. Find employees from IT or Sales department

SELECT *
FROM employee
WHERE department = 'IT'
OR department = 'Sales';


-- Q12. Display employees in ascending order of salary

SELECT *
FROM employee
ORDER BY salary ASC;


-- Q13. Display employees in descending order of salary

SELECT *
FROM employee
ORDER BY salary DESC;


-- Q14. Sort employees by department alphabetically

SELECT *
FROM employee
ORDER BY department ASC;


-- Q15. Sort employees by department and salary
-- Highest salary first within each department

SELECT *
FROM employee
ORDER BY department ASC, salary DESC;