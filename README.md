# TP---BASE-DE-DATOS---GRUPO-7
Sistema de Gestión para Sala de Pilates 

<img width="2560" height="1707" alt="Sala de pilates" src="https://github.com/user-attachments/assets/1dc886a6-f1af-4179-81db-55cfa5d53890" />

## Descripción del Proyecto
Este sistema ha sido diseñado para gestionar las reservas de una sala de Pilates, optimizando la ocupación del espacio y garantizando que no se supere la capacidad física de 4 camas por sesión, evitando así la sobreventa de cupos.

## Modelo Entidad-Relación (DER)
El modelo se basa en tres tablas:

Usuarios: Clientes registrados en el sistema.

Clase: Define la disponibilidad (Día, Hora, Capacidad máxima).

Reservas: Tabla intermedia que vincula un usuario con una sesión específica, validando la integridad del cupo.

### Justificación del Diseño y Consultas SQL

Elegimos una estructura donde la Capacidad reside en la entidad Sesiones. Esto nos permite cambiar la capacidad del local en el futuro sin modificar todo el histórico de reservas. La tabla Reservas actúa como un registro de reservas que garantiza la relación "muchos a muchos" entre usuarios y horarios.
