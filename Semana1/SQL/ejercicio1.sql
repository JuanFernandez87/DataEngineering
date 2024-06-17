-- De la base de datos dada. 
-- Extraer agentes cuyo nombre empieza por M o termina en O.

SELECT *
FROM agents
WHERE name LIKE 'M%' OR name LIKE '%O';