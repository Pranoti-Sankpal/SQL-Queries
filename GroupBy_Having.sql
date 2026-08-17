
-- Q1. Count employees in each department

SELECT department, COUNT(*) AS employee_count
FROM employee
GROUP BY department;


-- Q2. Find the average salary of each department

SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department;


-- Q3. Find the highest salary in each department

SELECT department, MAX(salary) AS highest_salary
FROM employee
GROUP BY department;


-- Q4. Find the lowest salary in each department

SELECT department, MIN(salary) AS lowest_salary
FROM employee
GROUP BY department;


-- Q5. Find total salary paid by each department

SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;


-- Q6. Find departments having more than 2 employees

SELECT department, COUNT(*) AS employee_count
FROM employee
GROUP BY department
HAVING COUNT(*) > 2;


-- Q7. Find departments having an average salary
-- greater than 70000

SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 70000;


-- Q8. Find departments where the highest salary
-- is greater than 90000

SELECT department, MAX(salary) AS highest_salary
FROM employee
GROUP BY department
HAVING MAX(salary) > 90000;


-- Q9. Find departments where total salary
-- is greater than 200000

SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department
HAVING SUM(salary) > 200000;


-- Q10. Find duplicate salaries

SELECT salary, COUNT(*) AS salary_count
FROM employee
GROUP BY salary
HAVING COUNT(*) > 1;