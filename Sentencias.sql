SELECT * FROM INHABITANT

SELECT * FROM INHABITANT WHERE STATE = 'friendly'

SELECT * FROM INHABITANT WHERE STATE = 'friendly' AND JOB = 'weaponsmith'

SELECT * FROM INHABITANT WHERE STATE = 'friendly' AND JOB LIKE  '%smith'

select personid from inhabitant where name = "Stranger"

select gold from inhabitant where name = "Stranger"

select * from item where owner is NULL

UPDATE item SET owner = 20 WHERE owner is null

select * from item WHERE owner = 20

SELECT * FROM INHABITANT WHERE STATE = 'friendly' AND (jOB = 'dealer' OR JOB = 'merchant')