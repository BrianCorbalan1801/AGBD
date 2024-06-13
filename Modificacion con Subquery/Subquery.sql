--Agregar 2 regiones. Africa / Midlle East--

INSERT INTO regions (region_name)
	VALUES ("Africa"),
		   ("Midlle East")

--Modificar para pasar los paises a las nuevas regiones--

UPDATE countries set region_id = (SELECT region_id FROM regions WHERE region_name like "Africa")
WHERE country_name in ("Egypt","Zambia","Zimbabwe","Nigeria")

UPDATE countries set region_id = (SELECT region_id FROM regions WHERE region_name like "Midlle East")
WHERE country_name in ("Israel","Kuwait")

--Borrar la region combinada--

DELETE FROM regions WHERE region_name = "Middle East and Africa"

--Agregar 2 paises mas a cada una de las nuevas regiones--

INSERT INTO countries(country_id,country_name, region_id)
	VALUES("QA","Qatar", (SELECT region_id FROM regions WHERE region_name like "Midlle East")),
		  ("SA","Arabia Saudita", (SELECT region_id FROM regions WHERE region_name like "Midlle East")),
		  ("AO","Angola", (SELECT region_id FROM regions WHERE region_name like "Africa")),
		  ("TD","Chad", (SELECT region_id FROM regions WHERE region_name like "Africa"));
		  