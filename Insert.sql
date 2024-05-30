--Insertar Artista--

INSERT INTO artists(name)
	VALUES ("Lalo y los Delcalzos");
SELECT name from artists
ORDER by ArtistId DESC

--Insertar Album--

INSERT INTO albums(ArtistId, Title)
	VALUES (276, "Super Cumbias(Remastered)");
SELECT Title FROM albums
ORDER BY ArtistId DESC

--Insertar Canciones--

INSERT INTO tracks(name, MediaTypeId, Milliseconds ,UnitPrice)
	VALUES ("Siempre Me Buscabas", 4, 239000, 5),
		   ("Ahora Estoy Solo", 4, 186000, 4.99), 
		   ("Anoche", 4, 173000, 4.49);

--Modificar las 3 canciones y agregar 2 datos--

UPDATE tracks set Composer = "Lalo y Los Descalzos",
				  AlbumId = 350
WHERE AlbumId IS NULL

--Borrar Todo lo colocado--

    --Primero las Canciones--

    DELETE FROM tracks WHERE name = "Anoche" or name = "Siempre Me Buscabas" or name = "Ahora Estoy Solo";

    --Segundo el Album--

    DELETE FROM albums WHERE Title = "Super Cumbias(Remastered)"; 

    --Tercero el Artista--

    DELETE FROM artists WHERE ArtistId = 276; 

