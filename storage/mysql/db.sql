-- ============================================================
-- BIBLIOTECA CAMPUS - Estructura de la base de datos
-- ============================================================

CREATE DATABASE IF NOT EXISTS biblioteca_campus;
USE biblioteca_campus;

-- ============================================================
-- autor
-- ============================================================
CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

-- ============================================================
-- libro
-- ============================================================
CREATE TABLE libro (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    disponibilidad BOOLEAN NOT NULL DEFAULT TRUE
);

-- ============================================================
-- libro_autor (entidad intermedia: relacion N:M entre libro y autor)
-- ============================================================
CREATE TABLE libro_autor (
    id_libro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_libro, id_autor),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

-- ============================================================
-- publicacion (ediciones de un libro: relacion 1:N con libro)
-- ============================================================
CREATE TABLE publicacion (
    id_publicacion INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT NOT NULL,
    edicion INT NOT NULL,
    fecha_publicacion DATE NOT NULL,
    editorial VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

-- ============================================================
-- miembro
-- ============================================================
CREATE TABLE miembro (
    id_miembro INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(20)
);

-- ============================================================
-- transaccion (prestamos: relacion 1:N con libro y con miembro)
-- ============================================================
CREATE TABLE transaccion (
    id_transaccion INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT NOT NULL,
    id_miembro INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    estado VARCHAR(20) NOT NULL DEFAULT 'Prestado',
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_miembro) REFERENCES miembro(id_miembro)
);
