-- Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta en salarios, 
-- para esto nos solicita que creemos un listado de tres columnas donde indiquemos el nombre del tipo de trabajor, 
-- la cantidad de empleados y el gasto total en sueldos de empleados por tipo de trabajo y necesita tenerla ordenada 
-- por cantidad de empleados. --

SELECT job_title, COUNT(employee_id) AS num_employees, SUM(salary) AS total_salary
FROM employees
JOIN jobs ON employees.job_id = jobs.job_id
GROUP BY job_title
ORDER BY num_employees DESC;

-- Nos solicita un listado que contenga nombre, apellido, tipo de trabajo y departamento todos los empleados.

SELECT employees.first_name, employees.last_name, jobs.job_title, departments.department_name FROM employees
JOIN jobs ON employees.job_id = jobs.job_id
JOIN departments ON employees.department_id = departments.department_id;


-- El encargado del departamento de ventas nos informó que detecto que hay algunos empleados que no poseen 
-- un número de teléfono cargado, nos solicitó que le pasemos la lista de aquellos empleados que no tienen 
-- cargado un número de teléfono, esta lista debe estar confeccionada por id de empleado, nombre, apellido, 
-- correo electrónico, número de teléfono y id de departamento. Y que por favor le carguemos momentáneamente 
-- el numero de la empresa (303.404.505) para evitar tener valores null en esos campos.

SELECT employee_id, first_name, last_name, email, phone_number, department_id FROM employees
WHERE phone_number IS NULL

UPDATE employees SET phone_number = '303.404.505'
WHERE phone_number IS NULL

-- Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 35% el salario de todos 
-- los empleados que cobren menos de 8000 y que trabajen de programadores o empleados de contador (Accountant).

UPDATE employees SET salary = salary * 0.35
WHERE salary < 8000 AND job_id IN (SELECT job_id FROM jobs WHERE job_title IN ('Programmer', 'Accountant'));


-- Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre 
-- consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle y y un nuevo tipo de 
-- trabajo de nombre ‘consultant’. adicionalmente nos envió la información de estos 3 consultores que deben
-- cargarse perteneciendo a este nuevo departamento y tipo de trabajo: 

INSERT INTO departments (department_name, location_id)
	VALUES ('Consultants', (SELECT location_id FROM locations WHERE city = 'Seattle'))
	
INSERT INTO locations (street_address, city, country_id)
	VALUES ('2004 Charade Rd','Seattle', (SELECT country_id FROM countries WHERE country_name = 'United States of America'))
	
INSERT INTO jobs (job_title, min_salary, max_salary)
	 VALUES ('Consultant', 411, 912)
	 
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, manager_id, job_id, department_id)
	VALUES ('Raul','Lopez','rlopez@gmail.com','1.231.231.122','2024-06-27',5000,100,(SELECT job_id FROM jobs WHERE job_title = 'Consultant'),(SELECT department_id FROM departments WHERE department_name = 'Consultants')),
		   ('Andres','Gonzalez','agonzalez@gmail.com','1.231.231.122','2024-06-27',5000,100,(SELECT job_id FROM jobs WHERE job_title = 'Consultant'),(SELECT department_id FROM departments WHERE department_name = 'Consultants')),
		   ('Laura','Fernandez','lfernandez@gmail.com','1.231.231.122','2024-06-27',5000,100,(SELECT job_id FROM jobs WHERE job_title = 'Consultant'),(SELECT department_id FROM departments WHERE department_name = 'Consultants'))

-- Nos informa que la empresa dejara de prestar operaciones en Canada, por lo que nos solicitan que 
-- eliminemos todos los empleados, departamentos y locaciones pertenecientes a Canada junto con el pais.


DELETE FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id IN ( SELECT location_id FROM locations WHERE country_id = ( SELECT country_id FROM countries WHERE country_name = 'Canada')));

DELETE FROM departments
WHERE location_id IN (SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada'));

DELETE FROM locations
WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada');


DELETE FROM countries
WHERE country_name = 'Canada';


-- Como último requerimiento nos solicitan eliminar todos los trabajos que no posean empleados asociados, 
-- la query tiene que tener la capacidad de eliminar todos los jobs que no posean empleados en una sola 
-- ejecución sin indicar de manera manual el numero los jobs_id a eliminar.