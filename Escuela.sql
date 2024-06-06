-- Insertar Division --

INSERT INTO division(año,curso)
	VALUES(5, "B"),
		  (5, "D");

-- Insertar Profesores --

INSERT INTO profesores(nombre,apellido)
	VALUES("Andres", "Navarro"),
		  ("Tomas", "Mayorga"),
		  ("Alejando", "Salomon"),
		  ("Jose", "Albornoz"),
		  ("Federico", "Villace"),
		  ("Enrico", "Rovaletti"),
		  ("Nahuel", "Aruni"),
		  ("Maximiliano", "Urso"),
		  ("Eduardo", "Mestrovich");
		  

-- Insertar materias --

INSERT INTO materias(nombre,año)
	VALUES("Diseño Multimedial", 5),
		  ("Programacion WEB", 5),
		  ("Administracion y gestion de base de datos", 5),
		  ("Dispositivos electronicos programables", 5),
		  ("Redes de datos", 5),
		  ("Diseño de Software", 5);

-- Insertar asignacion --

INSERT INTO asignacion(materia_id,division_id,profesor_id)
	VALUES((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño multimedial"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Rovaletti")),
	      ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño multimedial"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id  FROM profesores WHERE apellido LIKE "Rovaletti")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño multimedial"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Aruni")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño multimedial"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Aruni")),

		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Programacion WEB"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Villace")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Programacion WEB"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Villace")),
          ((SELECT materia_id FROM materias WHERE nombre LIKE "Programacion WEB"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mayorga")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Programacion WEB"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mayorga")),

		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Navarro")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Navarro")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mayorga")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mayorga")),

		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mestrovich")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mestrovich")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Urso")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Urso")),

		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Redes de datos"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Albornoz")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Redes de datos"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Albornoz")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Redes de datos"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Salomon")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Redes de datos"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Salomon")),

		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño de Software"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Navarro")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño de Software"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Navarro")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño de Software"), (SELECT division_id FROM division WHERE curso LIKE "D" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mayorga")),
		  ((SELECT materia_id FROM materias WHERE nombre LIKE "Diseño de Software"), (SELECT division_id FROM division WHERE curso LIKE "B" AND año LIKE 5),(SELECT profesor_id FROM profesores WHERE apellido LIKE "Mayorga"));
		  
		  
--Actualizar los valores ya ingresados--


--Insertar ambos profesores--

INSERT INTO profesores(nombre,apellido)
	VALUES("Adrian", "Corvalan"),
		  ("Guillermo", "Cuneo");

--Actualizar a Adrian solo para el B--
	
UPDATE asignacion SET profesor_id = 10 
WHERE division_id = 1 AND profesor_id = 4

UPDATE asignacion SET profesor_id = 10 
WHERE (SELECT curso FROM division WHERE curso like "B") AND (SELECT apellido FROM profesores WHERE apellido like "Albornoz")

--Actualizar a Guillermo con ambos cursos--

UPDATE asignacion set profesor_id = 11
where materia_id = 3 and profesor_id = 1

UPDATE asignacion SET profesor_id = 11
WHERE materia_id = (SELECT materia_id FROM materias WHERE nombre LIKE "Administracion y gestion de base de datos") AND profesor_id = (SELECT profesor_id FROM profesores WHERE apellido like "Navarro")