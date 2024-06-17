-- De la base de datos dada. 
-- Escribir una consulta que devuelva todas las llamadas realizadas a clientes de la profesión de ingeniería y muestre si son mayores o menores de 30, así como si terminaron comprando el producto de esa llamada.

SELECT customers.customerid, name, occupation, productsold, CASE WHEN age > 30 THEN 'Si' ELSE 'No' END AS Mayor30, c.callid
FROM customers
INNER JOIN calls c ON c.customerid = customers.customerid
WHERE c.productsold > 0 and occupation LIKE '%Engineer%';