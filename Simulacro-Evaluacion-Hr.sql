--Actividad 1--

SELECT department_name from departments
order by department_name ASC

--Actividad 2--

SELECT DISTINCT salary from employees
ORDER by salary DESC

--Actividad 3--

SELECT job_title, min_salary, max_salary FROM jobs
WHERE job_title like '%Manager'
ORDER by min_salary DESC

--Actividad 4--

SELECT r.region_name, country_name FROM countries c
JOIN  regions r on c.region_id = r.region_id
ORDER by region_name ASC 

--Actividad 5--

SELECT e.first_name, e.last_name, d.department_name, e.salary FROM employees e
JOIN departments d on e.department_id = d.department_id
WHERE salary BETWEEN 9000 and 17000
ORDER by salary ASC

--Actividad 6--



--Actividad 7--