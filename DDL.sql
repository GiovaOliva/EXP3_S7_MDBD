-- Creación de la tabla REGIÓN
CREATE TABLE region (
    id_region     INTEGER NOT NULL,
    nombre_region VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id_region );

-- Creación de la tabla CIUDAD
CREATE TABLE ciudad (
    id_ciudad     INTEGER NOT NULL,
    nombre_ciudad VARCHAR2(100 BYTE) NOT NULL,
    id_region     INTEGER NOT NULL
);

ALTER TABLE ciudad ADD CONSTRAINT ciudad_pk PRIMARY KEY ( id_ciudad );

ALTER TABLE ciudad
    ADD CONSTRAINT region_fk FOREIGN KEY ( id_region )
    REFERENCES region ( id_region );

-- Creación de la tabla COMUNA
CREATE TABLE comuna (
    id_comuna     INTEGER NOT NULL,
    nombre_comuna VARCHAR2(100 BYTE) NOT NULL,
    id_ciudad     INTEGER NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_comuna );

ALTER TABLE comuna
    ADD CONSTRAINT ciudad_fk FOREIGN KEY ( id_ciudad )
    REFERENCES ciudad ( id_ciudad );

-- Creación de la tabla EMPLEADOS
CREATE TABLE empleados (
    id_empleado     INTEGER NOT NULL,
    nombre_empleado VARCHAR2(100 BYTE) NOT NULL,
    salario         NUMBER(10, 2) NOT NULL,
    id_comuna       INTEGER NOT NULL
);

ALTER TABLE empleados ADD CONSTRAINT empleados_pk PRIMARY KEY ( id_empleado );

ALTER TABLE empleados
    ADD CONSTRAINT comuna_fk FOREIGN KEY ( id_comuna )
    REFERENCES comuna ( id_comuna );