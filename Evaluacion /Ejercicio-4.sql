-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la tercera casa
-- de la calle 'Franklin Ave' (ordenadas por la altura
-- de la calle)

SELECT name, address_street_name, address_number from person 
WHERE address_street_name = "Franklin Ave"
ORDER BY address_number ASC
LIMIT 1 OFFSET 2
