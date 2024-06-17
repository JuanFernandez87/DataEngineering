-- De la base de datos dada. 
-- Escribir dos consultas: 
-- Una que calcule las ventas totales y las llamadas totales realizadas a los clientes de la profesión de ingeniería.
-- Otra que calcule las mismas métricas para toda la base de clientes.

SELECT 
    COUNT(CASE WHEN c.productsold > 0 and occupation LIKE '%Engineer%' THEN 1 END) as total_sales, 
    COUNT(CASE WHEN occupation LIKE '%Engineer%' THEN 1 END) as total_calls
FROM customers
INNER JOIN calls c ON c.customerid = customers.customerid;