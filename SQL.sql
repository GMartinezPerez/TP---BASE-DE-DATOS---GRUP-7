-- =========================================================
-- PROYECTO: GESTIÓN SALA DE PILATES
-- SCRIPT DE CONSULTAS Y REPORTES
-- =========================================================

-- 1. Listado de clientes ordenados alfabéticamente
SELECT * FROM Clientes 
ORDER BY Apellido ASC;

-- 2. Listado de clases con su instructor asignado
-- Uso de INNER JOIN para relacionar la clase con el docente correspondiente
SELECT 
    C.Id_Clase,
    C.Nombre_Clase,
    C.Dia_Semana,
    C.Hora_inicio,
    I.Nombre AS Nombre_Profesor
FROM Clases C
INNER JOIN Instructores I ON C.Id_Instructor = I.Id_Instructor;

-- 3. Detalle completo de reservas
-- Combina tablas para mostrar nombres legibles en lugar de solo IDs
SELECT 
    R.Id_Reserva,
    CONCAT(Cl.Nombre, ' ', Cl.Apellido) AS Cliente,
    Ca.Nombre_Clase,
    Ca.Dia_Semana,
    R.Fecha_Reserva,
    R.Estado
FROM Reservas R
INNER JOIN Clientes Cl ON R.Id_Cliente = Cl.Id_Cliente
INNER JOIN Clases Ca ON R.Id_Clase = Ca.Id_Clase;

-- 4. Resumen estadístico de estados de reserva
-- Permite al administrador ver cuántas reservas hay por estado (confirmadas/canceladas)
SELECT 
    Estado, 
    COUNT(*) AS Cantidad_Total
FROM Reservas
GROUP BY Estado;

-- 5. Control de capacidad por clase
-- Crucial para el enunciado: muestra cuántos alumnos hay anotados vs. el límite
SELECT 
    C.Id_Clase,
    C.Nombre_Clase,
    C.Dia_Semana,
    C.Hora_inicio,
    COUNT(R.Id_Reserva) AS Alumnos_Anotados,
    C.Capacidad_Maxima
FROM Clases C
LEFT JOIN Reservas R ON C.Id_Clase = R.Id_Clase
GROUP BY C.Id_Clase;