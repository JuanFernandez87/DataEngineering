-- De la base de datos dada. 
-- Escribir una consulta que devuelva el ID del cliente, su nombre y una columna nueva llamada “Mayor30” que contenga "Sí" si el cliente tiene más de 30 años y "No" en caso contrario.

SELECT customerid, name, CASE WHEN age > 30 THEN 'Si' ELSE 'No' END AS Mayor30, Age
FROM customers;