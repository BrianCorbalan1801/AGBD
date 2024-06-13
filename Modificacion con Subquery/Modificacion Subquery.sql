--Creacion Base de datos--

CREATE TABLE user (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE post (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES user (id)
);


--Inserts de usuario y post (2 usuarios con 3 posts cada uno)--

INSERT INTO user(username, password)
	VALUES ("Adan", 87654321),
	       ("Brian", 11111111);
		   
INSERT INTO post(author_id,title,body)
	VALUES((SELECT id FROM user WHERE username like "Adan"), "Minecraft", "Como matar al dragon"),
	      ((SELECT id FROM user WHERE username like "Adan"), "Minecraft Tecnico", "Granja de mobs"),
		  ((SELECT id FROM user WHERE username like "Adan"), "Survival", "Empezando el mundo"),
		  ((SELECT id FROM user WHERE username like "Brian"), "Speedrun", "Speedruneando MC"),
	      ((SELECT id FROM user WHERE username like "Brian"), "Minecraft Bedrock", "Como hacer una casa"),
		  ((SELECT id FROM user WHERE username like "Brian"), "Survival", "Empezando el mundo");

--Agregar un usuario nuevo con la contraseña de alguno de los usuarios ya creados (usando subquery buscando el usuario por nombre)--

INSERT INTO user(username, password)
	VALUES ("Benja", (SELECT password FROM user WHERE username like "Adan"))
	    

--Actualizar todos los posts de un usuario (seleccionado con subquery por nombre) y poner el cuerpo del post en texto vacío ("").--

UPDATE post set body = ""
WHERE author_id = (SELECT id FROM user WHERE username like "Brian")

--Borrar un usuario que tenga posts, haciendo primero un DELETE con subquery que borre todos los post de ese usuario.--


DELETE FROM post
WHERE author_id = (SELECT id FROM user WHERE username like "Brian")

DELETE from user 
WHERE id = (SELECT id from user WHERE username like "Brian")
