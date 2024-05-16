-- 1) Mostrar todos los tipos de crimenes
-- reportados en la ciudad 'SQL City'.
-- Los tipos de crimen deben estar en orden 
-- alfabético y no debe haber repetidos

SELECT * from crime_scene_report 
WHERE type = "murder" and city = "SQL City";
ORDER BY type ASC