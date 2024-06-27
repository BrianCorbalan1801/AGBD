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



-- El encargado del departamento de ventas nos informó que detecto que hay algunos empleados que no poseen 
-- un número de teléfono cargado, nos solicitó que le pasemos la lista de aquellos empleados que no tienen 
-- cargado un número de teléfono, esta lista debe estar confeccionada por id de empleado, nombre, apellido, 
-- correo electrónico, número de teléfono y id de departamento. Y que por favor le carguemos momentáneamente 
-- el numero de la empresa (303.404.505) para evitar tener valores null en esos campos.



-- Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 35% el salario de todos 
-- los empleados que cobren menos de 8000 y que trabajen de programadores o empleados de contador (Accountant).



-- Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre 
-- consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle y y un nuevo tipo de 
-- trabajo de nombre ‘consultant’. adicionalmente nos envió la información de estos 3 consultores que deben
-- cargarse perteneciendo a este nuevo departamento y tipo de trabajo: 



-- Nos informa que la empresa dejara de prestar operaciones en Canada, por lo que nos solicitan que 
-- eliminemos todos los empleados, departamentos y locaciones pertenecientes a Canada junto con el pais.



-- Como último requerimiento nos solicitan eliminar todos los trabajos que no posean empleados asociados, 
-- la query tiene que tener la capacidad de eliminar todos los jobs que no posean empleados en una sola 
-- ejecución sin indicar de manera manual el numero los jobs_id a eliminar.