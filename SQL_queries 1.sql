SELECT first_name, last_name, department_id FROM employees WHERE salary <= 10000;

SELECT first_name, last_name, job_id, commission_pct FROM employees WHERE commission_pct IS NULL;

SELECT first_name, last_name, department_id FROM employees WHERE first_name LIKE 'John';

SELECT first_name, last_name FROM employees WHERE department_id = 80 AND salary < 1000;

SELECT first_name, last_name FROM employees WHERE department_id IN (80, 110) AND salary BETWEEN 10000 AND 17000; 

SELECT first_name, last_name FROM employees WHERE department_id IN (80, 110) AND commission_pct IS NOT NULL AND salary BETWEEN 10000 AND 17000;

SELECT first_name, last_name FROM employees WHERE first_name LIKE 'D%' AND manager_id = 108;

SELECT * FROM employees WHERE manager_id IN (100, 108, 124);

SELECT * FROM employees WHERE commission_pct is null AND salary < 10000 ORDER BY salary DESC;

SELECT CONCAT (first_name, CONCAT (' ', last_name)) AS List_of_employees_for_review, salary FROM employees WHERE commission_pct IS NULL AND salary < 10000 ORDER BY salary DESC;
SELECT first_name || ' ' || last_name AS List_of_employees_for_review, salary FROM employees WHERE commission_pct IS NULL AND salary < 10000 ORDER BY salary DESC;