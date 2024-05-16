-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn. 

SELECT name, ssn, membership_id, membership_status, check_in_date FROM get_fit_now_check_in g
JOIN get_fit_now_member h ON g.membership_id = h.id
JOIN person p ON h.person_id = p.id
WHERE check_in_date = "2017"
GROUP BY g.membership_status
ORDER BY g.membership_status ASC