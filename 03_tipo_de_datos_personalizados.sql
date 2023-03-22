CREATE TYPE humor AS ENUM ('triste', 'normal', 'feliz');


CREATE TABLE persona_prueba(
	nombre text,
	humor_actual humor
);

INSERT INTO persona_prueba VALUES ('Arnol', 'molesto'); -- Error
INSERT INTO persona_prueba VALUES ('Arnol', 'feliz');