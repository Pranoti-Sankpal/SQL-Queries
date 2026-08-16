-- Q1. Find the total number of employees

SELECT COUNT(*) AS total_employees
FROM employee;


-- Q2. Find the highest salary

SELECT MAX(salary) AS highest_salary
FROM employee;


-- Q3. Find the lowest salary

SELECT MIN(salary) AS lowest_salary
FROM employee;


-- Q4. Find the average salary

SELECT AVG(salary) AS average_salary
FROM employee;


-- Q5. Find the total salary paid to all employees

SELECT SUM(salary) AS total_salary
FROM employee;


-- Q6. Count employees who earn more than 70000

SELECT COUNT(*) AS employee_count
FROM employee
WHERE salary > 70000;


-- Q7. Find the average salary of employees
-- who belong to IT

SELECT AVG(salary) AS average_salary
FROM employee
WHERE department = 'IT';


-- Q8. Find the highest salary in IT

SELECT MAX(salary) AS highest_IT_salary
FROM employee
WHERE department = 'IT';


-- Q9. Find the lowest salary in Sales

SELECT MIN(salary) AS lowest_sales_salary
FROM employee
WHERE department = 'Sales';


-- Q10. Find the total salary of IT employees

SELECT SUM(salary) AS total_IT_salary
FROM employee
WHERE department = 'IT';


-- Q11. Count the number of employees in Sales

SELECT COUNT(*) AS sales_employees
FROM employee
WHERE department = 'Sales';


-- Q12. Count distinct departments

SELECT COUNT(DISTINCT department) AS total_departments
FROM employee;


-- Q13. Find the difference between highest
-- and lowest salary

SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employee;