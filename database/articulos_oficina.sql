-- ============================================================
-- articulos_oficina.sql
-- Para qué sirve: script de la BASE DE DATOS. Define la tabla
-- y datos de ejemplo de artículos de oficina.
--
-- En esta práctica el backend usa H2 y Hibernate crea la tabla
-- solo. Este archivo queda como evidencia / para importar luego
-- en MySQL o MariaDB cuando se despliegue en una VM CentOS.
-- ============================================================

CREATE DATABASE IF NOT EXISTS articulos_oficina
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE articulos_oficina;

-- Tabla que mapea la entidad Java Articulo.
DROP TABLE IF EXISTS articulos;

CREATE TABLE articulos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(80) NOT NULL,
  categoria VARCHAR(40) NOT NULL,
  cantidad INT NOT NULL,
  precio DOUBLE NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO articulos (nombre, categoria, cantidad, precio) VALUES
  ('Bolígrafo azul', 'Escritura', 40, 1500.0),
  ('Resma de papel carta', 'Papelería', 12, 18500.0),
  ('Grapadora metálica', 'Organización', 8, 22000.0),
  ('Carpeta oficio', 'Organización', 25, 3500.0),
  ('Caja de clips', 'Organización', 30, 2500.0),
  ('Tijeras de oficina', 'Herramientas', 10, 8900.0);
