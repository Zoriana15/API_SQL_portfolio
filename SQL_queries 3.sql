--Task 1 
SELECT employee_id, hire_date, null as end_date FROM employees
UNION ALL
SELECT employee_id, start_date, end_date FROM job_history;




--Task 2 
SELECT COUNT(employee_id), 'current_employees' AS Status
FROM employees
UNION
SELECT COUNT(employee_id), 'fired_employees' AS Status
FROM job_history;




--Task 3 
SELECT COUNT(employee_id), 'current_employees' AS Status, job_id
FROM employees
GROUP BY job_id
UNION
SELECT COUNT(employee_id), 'fired_employees' AS Status, job_id
FROM job_history
GROUP BY job_id;





--Task 4 
SELECT COUNT (employee_id), department_id
FROM job_history
WHERE department_id IN 
      (SELECT DISTINCT department_id FROM job_history)
HAVING COUNT (employee_id)>1
GROUP BY department_id
ORDER BY DEPARTMENT_ID DESC;





--Task 5 
SELECT employee_id, first_name, last_name
FROM employees
WHERE department_id IN 
      (SELECT department_id FROM job_history
       WHERE end_date - start_date < 365);






--Task 6 
SELECT COUNT (employee_id), department_id
FROM job_history
WHERE employee_id IN (SELECT DISTINCT employee_id FROM job_history
                      WHERE end_date-start_date > 365)
GROUP BY department_id
ORDER BY COUNT (employee_id) DESC;





--Task 7
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL,PHONE_NUMBER,
            HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID,
            DEPARTMENT_ID)
VALUES (215, 'Zoriana', 'Olianych', 'zoli@gmail.com', '48256452658', SYSDATE,
       'SA_MAN', 25000, null, 205, 110);
       
       
     
      
       

--Task 8 
UPDATE employees
SET department_id = 90, salary = 30000
WHERE employee_id = 215;





