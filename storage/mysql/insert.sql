USE biblioteca_campus;

INSERT INTO autor (nombre, nacionalidad) VALUES
('Gabriel Garcia Marquez', 'Colombiana'),
('Isabel Allende', 'Chilena'),
('Jorge Luis Borges', 'Argentina'),
('J.K. Rowling', 'Britanica'),
('George Orwell', 'Britanica');

INSERT INTO libro (titulo, genero, isbn, disponibilidad) VALUES
('Cien años de soledad', 'Realismo magico', '978-0-06-088328-7', TRUE),
('El amor en los tiempos del colera', 'Romance', '978-1-4000-3468-8', TRUE),
('La casa de los espiritus', 'Realismo magico', '978-0-553-38380-9', FALSE),
('Ficciones', 'Cuento', '978-0-8021-3030-9', TRUE),
('Harry Potter y la piedra filosofal', 'Fantasia', '978-0-7475-3269-9', TRUE),
('1984', 'Distopia', '978-0-452-28423-4', FALSE);

-- Libro coescrito de ejemplo: "Cien años de soledad" con dos autores ficticios asociados
INSERT INTO libro_autor (id_libro, id_autor) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5);

INSERT INTO publicacion (id_libro, edicion, fecha_publicacion, editorial) VALUES
(1, 1, '1967-05-30', 'Editorial Sudamericana'),
(1, 2, '1982-11-01', 'Editorial Sudamericana'),
(1, 3, '2007-03-01', 'Real Academia Espanola'),
(2, 1, '1985-09-05', 'Editorial Oveja Negra'),
(3, 1, '1982-01-01', 'Plaza & Janes'),
(4, 1, '1944-01-01', 'Editorial Sur'),
(5, 1, '1997-06-26', 'Bloomsbury'),
(5, 2, '1998-09-01', 'Scholastic'),
(6, 1, '1949-06-08', 'Secker & Warburg');

INSERT INTO miembro (nombre, email, telefono) VALUES
('Ana Torres', 'ana.torres@mail.com', '3001234567'),
('Carlos Ruiz', 'carlos.ruiz@mail.com', '3007654321'),
('Laura Gomez', 'laura.gomez@mail.com', '3009876543'),
('Diego Perez', 'diego.perez@mail.com', '3005551234');

INSERT INTO transaccion (id_libro, id_miembro, fecha_prestamo, fecha_devolucion, estado) VALUES
(3, 1, '2026-08-01', NULL, 'Prestado'),
(6, 2, '2026-08-05', NULL, 'Prestado'),
(1, 1, '2026-07-01', '2026-07-15', 'Devuelto'),
(2, 3, '2026-07-10', '2026-07-20', 'Devuelto'),
(5, 4, '2026-08-10', NULL, 'Prestado'),
(4, 2, '2026-06-01', '2026-06-10', 'Devuelto'),
(1, 3, '2026-08-20', NULL, 'Prestado');
