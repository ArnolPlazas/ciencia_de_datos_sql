-- La pelicula mas costosa para rentar
SELECT titulo, precio_renta
FROM peliculas
WHERE precio_renta = (SELECT MAX(precio_renta)
FROM peliculas);

-- La pelicula mas economica para rentar
SELECT titulo, precio_renta
FROM peliculas
WHERE precio_renta = (SELECT MIN(precio_renta)
FROM peliculas);


-- Suma total de rentar todas las peliculas
SELECT SUM(precio_renta)
FROM peliculas;

-- Cuantas peliculas se tienen por categoria
SELECT clasificacion, COUNT(*)
FROM peliculas
GROUP BY clasificacion;


-- Promedio de renta
SELECT AVG(precio_renta)
FROM peliculas;

-- Agrupado por la clasificacion cual es el precio promedio ordenado por este precio
SELECT clasificacion, AVG(precio_renta) AS precio_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY precio_promedio DESC;

-- Agrupado por la clasificacion cual es la duracion promedio ordenado por este precio
SELECT clasificacion, AVG(duracion) AS duracion_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY duracion_promedio DESC;

-- Agrupado por la clasificacion cual es la duracion  de renta promedio ordenado por este precio
SELECT clasificacion, AVG(duracion_renta) AS duracion_renta_promedio
FROM peliculas
GROUP BY clasificacion
ORDER BY duracion_renta_promedio DESC;
