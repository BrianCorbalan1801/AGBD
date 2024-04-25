/*Actividad 1*/

SELECT first_name, last_name, salary from employees
where salary < 6000

/*Actividad 2*/

SELECT first_name, last_name, department_name, city, state_province FROM employees, departments, locations

/*Actividad 3*/

SELECT e.first_name, m.first_name FROM employees e JOIN employees m ON e.employee_id = m.manager_id
ORDER BY m.manager_id 

/*Actividad 4*/



/*Actividad 5*/



/*Actividad 6*/



/*Actividad 7*/



/*Actividad 8*/



/*Actividad 9*/



/*Actividad 10*/