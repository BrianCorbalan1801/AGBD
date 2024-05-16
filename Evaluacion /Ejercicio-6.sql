
-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos

SELECT car_make, COUNT(*) AS cantidad_autos
FROM drivers_license
GROUP BY car_make
HAVING COUNT(*) >= 100
ORDER BY COUNT(*) DESC;