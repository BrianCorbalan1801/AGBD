-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir

SELECT gender, min(age), max(age), avg(age) as promedio from drivers_license
where gender = "male"