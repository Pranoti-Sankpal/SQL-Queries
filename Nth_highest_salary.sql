-- Q1. Find the highest salary

SELECT MAX(salary) AS highest_salary
FROM employee;


-- Q2. Find the second-highest distinct salary

SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);


-- Q3. Find the third-highest distinct salary

SELECT MAX(salary) AS third_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM employee
    )
);


-- Q4. Find the second-highest salary using LIMIT

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;


-- Q5. Find the third-highest salary using LIMIT

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;


-- Q6. Find employees having the second-highest salary

SELECT *
FROM employee
WHERE salary = (
    SELECT DISTINCT salary
    FROM employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);


-- Q7. Find employees having the third-highest salary

SELECT *
FROM employee
WHERE salary = (
    SELECT DISTINCT salary
    FROM employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 2
);
