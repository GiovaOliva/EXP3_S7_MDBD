-- Inserción de datos en REGIÓN
INSERT INTO region (id_region, nombre_region) VALUES (1, 'Los Ríos');
INSERT INTO region (id_region, nombre_region) VALUES (2, 'La Araucanía');
INSERT INTO region (id_region, nombre_region) VALUES (3, 'Bío Bío');

-- Inserción de datos en CIUDAD
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_region) VALUES (1, 'Valdivia', 1);
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_region) VALUES (2, 'Temuco', 2);
INSERT INTO ciudad (id_ciudad, nombre_ciudad, id_region) VALUES (3, 'Concepción', 3);

-- Inserción de datos en COMUNA
INSERT INTO comuna (id_comuna, nombre_comuna, id_ciudad) VALUES (1, 'Isla Teja', 1);
INSERT INTO comuna (id_comuna, nombre_comuna, id_ciudad) VALUES (2, 'Labranza', 2);
INSERT INTO comuna (id_comuna, nombre_comuna, id_ciudad) VALUES (3, 'Talcahuano', 3);

-- Inserción de datos en EMPLEADOS
INSERT INTO empleados (id_empleado, nombre_empleado, salario, id_comuna) VALUES (1, 'Juan Pérez', 600000.00, 1);
INSERT INTO empleados (id_empleado, nombre_empleado, salario, id_comuna) VALUES (2, 'María González', 750000.00, 2);
INSERT INTO empleados (id_empleado, nombre_empleado, salario, id_comuna) VALUES (3, 'Carlos Silva', 500000.00, 3);

-- Consultas

-- Consulta: Todos los empleados que ganen más de $500.000
SELECT *
FROM empleados
WHERE salario > 500000;

-- Consulta: Todas las tablas del modelo
SELECT table_name
FROM user_tables;

-- Consulta: Todas las ciudades que sean iguales a “Santiago”
SELECT *
FROM ciudad
WHERE nombre_ciudad = 'Santiago';