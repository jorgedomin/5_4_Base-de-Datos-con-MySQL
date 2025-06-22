-- Crear tabla estudiantes
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    correo VARCHAR(100) UNIQUE,
    fecha_ingreso DATE
);

-- Crear tabla asignaturas
CREATE TABLE asignaturas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    creditos INT
);

-- Crear tabla matriculas con claves foráneasCREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_asignatura INT,
    fecha_matricula DATE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
    FOREIGN KEY (id_asignatura) REFERENCES asignaturas(id)
);

-- Insertar estudiantes
INSERT INTO estudiantes (nombre, apellido, correo, fecha_ingreso) VALUES
('Ana', 'García', 'ana.garcia@email.com', '2023-01-15'),
('Luis', 'Pérez', 'luis.perez@email.com', '2023-02-01'),
('María', 'López', 'maria.lopez@email.com', '2022-09-20'),
('Carlos', 'Ramírez', 'carlos.ramirez@email.com', '2022-11-10'),
('Laura', 'Díaz', 'laura.diaz@email.com', '2023-03-25');

-- Insertar asignaturas
INSERT INTO asignaturas (nombre, creditos) VALUES
('Matemáticas', 4),
('Física', 3),
('Química', 4),
('Programación', 5),
('Historia', 2);

-- Insertar matriculas
INSERT INTO matriculas (id_estudiante, id_asignatura, fecha_matricula) VALUES
(1, 1, '2023-03-01'),
(2, 2, '2023-03-01'),
(3, 3, '2023-03-02'),
(4, 4, '2023-03-03'),
(5, 5, '2023-03-04');
