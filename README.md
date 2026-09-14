<<<<<<< HEAD
# Biblioteca Campus

Sistema de gestión de libros, autores, publicaciones, transacciones y miembros de la Biblioteca Campus.

## Consultas

Listar todos los libros disponibles
```sql
SELECT * FROM libro WHERE disponibilidad = TRUE;
```

Buscar libros por género
```sql
SELECT * FROM libro WHERE genero = 'Realismo magico';
```

Obtener información de un libro por ISBN
```sql
SELECT * FROM libro WHERE isbn = '978-0-06-088328-7';
```

Contar el número de libros en la biblioteca
```sql
SELECT COUNT(*) AS total_libros FROM libro;
```

Listar todos los autores
```sql
SELECT * FROM autor;
```

Buscar autores por nombre
```sql
SELECT * FROM autor WHERE nombre LIKE '%Garcia%';
```

Obtener todos los libros de un autor específico
```sql
SELECT l.titulo, l.genero
FROM libro l
JOIN libro_autor la ON l.id_libro = la.id_libro
JOIN autor a ON la.id_autor = a.id_autor
WHERE a.nombre = 'Gabriel Garcia Marquez';
```

Listar todas las ediciones de un libro
```sql
SELECT * FROM publicacion WHERE id_libro = 1;
```

Obtener la última edición de un libro
```sql
SELECT * FROM publicacion
WHERE id_libro = 1
ORDER BY fecha_publicacion DESC
LIMIT 1;
```

Contar cuántas ediciones hay de un libro específico
```sql
SELECT COUNT(*) AS total_ediciones FROM publicacion WHERE id_libro = 1;
```

Listar todas las transacciones de préstamo
```sql
SELECT * FROM transaccion;
```

Obtener los libros prestados actualmente
```sql
SELECT l.titulo, t.fecha_prestamo
FROM transaccion t
JOIN libro l ON t.id_libro = l.id_libro
WHERE t.estado = 'Prestado';
```

Contar el número de transacciones de un miembro específico
```sql
SELECT COUNT(*) AS total_transacciones
FROM transaccion
WHERE id_miembro = 1;
```

Listar todos los miembros de la biblioteca
```sql
SELECT * FROM miembro;
```

Buscar un miembro por nombre
```sql
SELECT * FROM miembro WHERE nombre LIKE '%Ana%';
```

Obtener las transacciones de un miembro específico
```sql
SELECT * FROM transaccion WHERE id_miembro = 1;
```

Listar todos los libros y sus autores
```sql
SELECT l.titulo, a.nombre AS autor
FROM libro l
JOIN libro_autor la ON l.id_libro = la.id_libro
JOIN autor a ON la.id_autor = a.id_autor;
```

Obtener el historial de préstamos de un libro específico
```sql
SELECT * FROM transaccion WHERE id_libro = 1;
```

Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(*) AS total_prestamos FROM transaccion;
```

Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT l.titulo, l.disponibilidad, p.edicion, p.fecha_publicacion
FROM libro l
LEFT JOIN publicacion p ON p.id_libro = l.id_libro
WHERE p.fecha_publicacion = (
    SELECT MAX(p2.fecha_publicacion)
    FROM publicacion p2
    WHERE p2.id_libro = l.id_libro
);
```
=======
# -4H-Biblioteca-Campus-Raymond-Zabala
>>>>>>> 47232df3210c896f5d507baff70564c70bbcf5a9
