CREATE TABLE ordernes
	ID serial NOT NULL PRIMARY KEY
	info json NOT NULL
);

INSERT INTO  ordenes(info)
VALUES
('{"cliente":"Maite Plazas", "items":{"producto":"Libro", "cantidad":7}}'),
('{"cliente":"Camila Medina", "items":{"producto":"Sala", "cantidad":2}}'),
('{"cliente":"Arnol Plazas", "items":{"producto":"Carro", "cantidad":1}}');

SELECT * FROM ordenes;

-- Extraer la información de campo del json: en formato json
SELECT info -> 'cliente' AS cliente
FROM ordenes;

-- Extraer la información de campo del json: en formato text
SELECT info ->> 'cliente' AS cliente
FROM ordenes;

-- EL cliente que compro un libro
SELECT info ->> 'cliente' AS cliente
FROM ordenes
WHERE info -> 'items' ->> 'producto' = 'Libro';
