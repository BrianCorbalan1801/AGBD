-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 

SELECT name, car_model, car_make, plate_number FROM drivers_license d
JOIN person p ON d.id = p.license_id
ORDER BY name ASC