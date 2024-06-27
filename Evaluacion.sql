-- Listar el nombre de todos los empleados junto al nombre de departamento que pertenece --
-- el estado o provincia, su sueldo y el nombre de su manager, ordenarlo por sueldo --

SELECT e.first_name, d.department_name, l.state_province, e.salary, e.manager_id as mananger, m.first_name as name_mananger from employees e 
LEFT JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN employees m on e.employee_id = m.manager_id
ORDER by e.salary DESC

-- Reducir el salario mínimo y máximo de cada trabajo un 25%. --

UPDATE jobs set min_salary =  min_salary - (min_salary * 0.25)
UPDATE jobs set max_salary =  max_salary - (max_salary * 0.25)

-- Eliminar aquellos trabajadores que cobren sobre el salario máximo de su tipo de trabajo. --

DELETE from employees WHERE (SELECT s.max_salary FROM employees e
                          JOIN jobs s on e.job_id = s.job_id
						  WHERE s.max_salary < e.salary )
                          
-- Crear un nuevo departamento de nombre asesores, un nuevo tipo de trabajo asesor--
-- y asociar un nuevo empleado a ese departamento y tipo de trabajo. --

INSERT INTO departments (department_name, location_id)
VALUES ('Asesores', 1700);

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('Asesor', 4000, 8000);


INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id, manager_id)
VALUES ('Juan', 'Pérez', 'juan.perez@company.com', '555-1234', '2023-06-01', (SELECT job_id FROM jobs WHERE job_title = 'Asesor'), 6000, (SELECT department_id FROM departments WHERE department_name = 'Asesores'), 100);

