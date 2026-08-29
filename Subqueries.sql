

-- Q1. Find employees earning more than
-- the average salary

SELECT *
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);


-- Q2. Find the employee with the highest salary

SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);


-- Q3. Find employees earning the lowest salary

SELECT *
FROM employee
WHERE salary = (
    SELECT MIN(salary)
    FROM employee
);


-- Q4. Find employees earning more than
-- the highest Sales employee

SELECT *
FROM employee
WHERE salary > (
    SELECT MAX(salary)
    FROM employee
    WHERE department = 'Sales'
);


-- Q5. Find employees earning more than
-- the average IT salary

SELECT *
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
    WHERE department = 'IT'
);


-- Q6. Find employees belonging to departments
-- having more than 2 employees

SELECT *
FROM employee
WHERE department IN (
    SELECT department
    FROM employee
    GROUP BY department
    HAVING COUNT(*) > 2
);


-- Q7. Find the second-highest distinct salary

SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);


-- Q8. Find employees whose salary is greater
-- than their department average

SELECT *
FROM employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
    WHERE department = e.department
);


-- Q9. Find employees who work in the same
-- department as 'Aarav'

SELECT *
FROM employee
WHERE department = (
    SELECT department
    FROM employee
    WHERE name = 'Aarav'
);


-- Q10. Find employees who earn more than 'Meera'

SELECT *
FROM employee
WHERE salary > (
    SELECT salary
    FROM employee
    WHERE name = 'Meera'
);