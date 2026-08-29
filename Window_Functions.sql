
-- Q1. Assign a row number to every employee

SELECT name, department, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employee;


-- Q2. Rank employees based on salary

SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;


-- Q3. Rank employees based on salary
-- without skipping ranks for duplicate salaries

SELECT name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;


-- Q4. Rank employees within each department

SELECT name, department, salary,
       RANK() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS department_rank
FROM employee;


-- Q5. Find the highest-paid employee in each department

SELECT *
FROM (
    SELECT name, department, salary,
           RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rnk
    FROM employee
) AS ranked_employees
WHERE rnk = 1;


-- Q6. Find the second-highest salary
-- in each department

SELECT *
FROM (
    SELECT name, department, salary,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rnk
    FROM employee
) AS ranked_employees
WHERE rnk = 2;


-- Q7. Find the third-highest salary
-- in the company

SELECT *
FROM (
    SELECT name, salary,
           DENSE_RANK() OVER (
               ORDER BY salary DESC
           ) AS rnk
    FROM employee
) AS ranked_employees
WHERE rnk = 3;


-- Q8. Display employee salary and
-- department average salary

SELECT name, department, salary,
       AVG(salary) OVER (
           PARTITION BY department
       ) AS department_average
FROM employee;


-- Q9. Display employee salary and
-- maximum salary in their department

SELECT name, department, salary,
       MAX(salary) OVER (
           PARTITION BY department
       ) AS department_max_salary
FROM employee;


-- Q10. Display running total of salaries

SELECT name, salary,
       SUM(salary) OVER (
           ORDER BY emp_id
       ) AS running_total
FROM employee;


-- Q11. Display previous employee's salary

SELECT name, salary,
       LAG(salary) OVER (
           ORDER BY emp_id
       ) AS previous_salary
FROM employee;


-- Q12. Display next employee's salary

SELECT name, salary,
       LEAD(salary) OVER (
           ORDER BY emp_id
       ) AS next_salary
FROM employee;