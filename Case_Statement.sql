
-- Q1. Categorize employees based on salary

SELECT name, salary,
       CASE
           WHEN salary >= 90000 THEN 'High Salary'
           WHEN salary >= 70000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_category
FROM employee;


-- Q2. Display department type

SELECT name, department,
       CASE
           WHEN department = 'IT' THEN 'Technical'
           WHEN department = 'Sales' THEN 'Business'
           WHEN department = 'HR' THEN 'Human Resources'
           ELSE 'Other'
       END AS department_type
FROM employee;


-- Q3. Categorize employees as senior or junior

SELECT name, salary,
       CASE
           WHEN salary >= 80000 THEN 'Senior'
           ELSE 'Junior'
       END AS employee_level
FROM employee;


-- Q4. Give a 10% bonus to employees earning
-- less than 70000

SELECT name, salary,
       CASE
           WHEN salary < 70000 THEN salary * 0.10
           ELSE 0
       END AS bonus
FROM employee;


-- Q5. Calculate salary after bonus

SELECT name, salary,
       CASE
           WHEN salary < 70000 THEN salary * 1.10
           ELSE salary * 1.05
       END AS salary_after_bonus
FROM employee;


-- Q6. Display salary status

SELECT name, salary,
       CASE
           WHEN salary >= 90000 THEN 'Excellent'
           WHEN salary >= 70000 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS salary_status
FROM employee;