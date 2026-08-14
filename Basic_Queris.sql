

-- =========================================================
-- TABLE CREATION
-- =========================================================

-- Create the employee table

CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);


-- =========================================================
-- INSERT SAMPLE DATA
-- =========================================================

-- Insert sample employee records

INSERT INTO employee VALUES
(101, 'Aarav', 'IT', 95000),
(102, 'Meera', 'IT', 72000),
(103, 'Kabir', 'Sales', 65000),
(104, 'Isha', 'Sales', 92000),
(105, 'Rohan', 'IT', 90000),
(106, 'Neha', 'Sales', 88000),
(107, 'Priya', 'HR', 55000),
(108, 'Amit', 'HR', 60000);


-- =========================================================
-- BASIC SELECT QUERIES
-- =========================================================


-- Q1. Display all employees

SELECT *
FROM employee;


-- Q2. Display only employee names

SELECT name
FROM employee;


-- Q3. Display employee names and salaries

SELECT name, salary
FROM employee;


-- Q4. Display employee names, departments, and salaries

SELECT name, department, salary
FROM employee;


-- Q5. Display unique departments

SELECT DISTINCT department
FROM employee;


-- =========================================================
-- WHERE CLAUSE
-- =========================================================


-- Q6. Find employees whose salary is greater than 70000

SELECT *
FROM employee
WHERE salary > 70000;


-- Q7. Find employees whose salary is less than 60000

SELECT *
FROM employee
WHERE salary < 60000;


-- Q8. Find employees whose salary is exactly 90000

SELECT *
FROM employee
WHERE salary = 90000;


-- Q9. Find employees who work in the IT department

SELECT *
FROM employee
WHERE department = 'IT';


-- Q10. Find employees who do not work in the IT department

SELECT *
FROM employee
WHERE department != 'IT';


-- =========================================================
-- BETWEEN, IN AND LIKE
-- =========================================================


-- Q11. Find employees whose salary is between 60000 and 90000

SELECT *
FROM employee
WHERE salary BETWEEN 60000 AND 90000;


-- Q12. Find employees who work in either IT or HR

SELECT *
FROM employee
WHERE department IN ('IT', 'HR');


-- Q13. Find employees whose name starts with 'A'

SELECT *
FROM employee
WHERE name LIKE 'A%';


-- Q14. Find employees whose name ends with 'a'

SELECT *
FROM employee
WHERE name LIKE '%a';


-- Q15. Find employees whose name contains the letter 'a'

SELECT *
FROM employee
WHERE name LIKE '%a%';


-- =========================================================
-- ORDER BY
-- =========================================================


-- Q16. Display employees in ascending order of salary

SELECT *
FROM employee
ORDER BY salary ASC;


-- Q17. Display employees in descending order of salary

SELECT *
FROM employee
ORDER BY salary DESC;


-- Q18. Sort employees by department alphabetically
-- and salary from highest to lowest

SELECT *
FROM employee
ORDER BY department ASC, salary DESC;


-- =========================================================
-- AGGREGATE FUNCTIONS
-- =========================================================


-- Q19. Find the highest salary

SELECT MAX(salary) AS highest_salary
FROM employee;


-- Q20. Find the lowest salary

SELECT MIN(salary) AS lowest_salary
FROM employee;


-- Q21. Find the average salary

SELECT AVG(salary) AS average_salary
FROM employee;


-- Q22. Find the total salary of all employees

SELECT SUM(salary) AS total_salary
FROM employee;


-- Q23. Count the total number of employees

SELECT COUNT(*) AS total_employees
FROM employee;


-- =========================================================
-- ADDITIONAL BASIC QUERIES
-- =========================================================


-- Q24. Count employees whose salary is greater than 70000

SELECT COUNT(*) AS employee_count
FROM employee
WHERE salary > 70000;


-- Q25. Display employee names with a custom column name

SELECT name AS employee_name
FROM employee;

