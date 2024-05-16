1- SELECT * from crime_scene_report
    where type = "murder"

2- SELECT * from crime_scene_report 
    WHERE type = "murder" and city = "SQL City";

3- SELECT * from person    
    WHERE name like "Annabel%" and address_street_name = "Franklin Ave";

4- SELECT * from person 
    WHERE address_street_name = "Northwestern Dr"
    order by address_number desc

5- select * from interview 
    where person_id = 16371 or person_id = 14887

6- select * from get_fit_now_member
	where membership_status = "gold" and id like "48Z%"

7- select * from drivers_license d
    join person p on d.id = p.license_id
    where plate_number like "%H42W%"

-- sospechosos con auto

--1- Escuché un disparo y luego vi a un hombre salir corriendo. Tenía una bolsa de "Get Fit Now Gym". 
--   El número de membresía en la bolsa comenzaba con "48Z". Sólo los miembros de oro tienen esas bolsas. 
--   El hombre se subió a un coche con una placa que decía "H42W".
--2- Vi ocurrir el asesinato y reconocí al asesino en mi gimnasio cuando estaba haciendo ejercicio la semana pasada, el 9 de enero.

8-  select p.name, g.person_id from get_fit_now_member g
	join person p on g.person_id = p.id
	join drivers_license d on d.id = p.license_id
	where membership_status = "gold" and g.id like "48Z%" and plate_number like "%H42W%"

-- Jeremy Bowers
-- Encontre al sospechoso con el auto de la placa "H42W" 

9- select * from interview 
   where person_id = 67318

-- Interrogamos al principal sospechoso
-- Admitio el crimen de homicidio pero fue contratado para realizarlo
-- Descripcion del empleador: Me contrató una mujer con mucho dinero. No sé su nombre,
-- pero sé que mide alrededor de 5'5" (165.1)(65") o 5'7" (170.18)(67").
-- Tiene el pelo rojo y conduce un Tesla Model S. Sé que asistió al Concierto Sinfónico SQL tres veces en diciembre de 2017. 

10- select f.person_id, p.name, count(*) as veces from drivers_license d
    join person p on p.license_id = d.id
    join facebook_event_checkin f on p.id = f.person_id
    where height between 65 and 67 and hair_color = "red" and car_model = "Model S" 
    and car_make like "Tesla" and f.event_name = "SQL Symphony Concert"
    and date like "201712%"
    group by p.id
    having veces = 3

-- Sospechosas de organizar el asesinato 
-- Regina George 
-- Miranda Priestly (99716)
-- Red Korb 

-- Miranda es la unica sospechosa que asistio 3 veces al concierto SQL en el mes de diciembre de 2017 pero al parecer.
-- nunca fue entrevistada por lo tanto escapo 

-- si hubiera sido entrevistada este seria el codigo a utilizar

-- SELECT * FROM interview i
-- JOIN person p ON p.id = i.person_id
-- WHERE p.name = "Miranda Priestly"
