-- rentas por ciudad
SELECT c.ciudad_id,
	   c.ciudad,
	   COUNT(*) AS renta_por_ciudad
FROM ciudades c
INNER JOIN direcciones d ON c.ciudad_id = d.ciudad_id
INNER JOIN tiendas t ON d.direccion_id = t.direccion_id 
INNER JOIN inventarios i ON t.tienda_id = i.tienda_id
INNER JOIN rentas r ON  i.inventario_id = r.inventario_id
GROUP BY c.ciudad_id;