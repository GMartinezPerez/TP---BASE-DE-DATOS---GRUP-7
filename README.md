# TP---BASE-DE-DATOS---GRUPO-7
Sistema de Gestión para Sala de Pilates 

<img width="2560" height="1707" alt="Sala de pilates" src="https://github.com/user-attachments/assets/1dc886a6-f1af-4179-81db-55cfa5d53890" />

## Descripción del Proyecto
Este sistema ha sido diseñado para gestionar las reservas de una sala de Pilates, optimizando la ocupación del espacio y garantizando que no se supere la capacidad física de 4 camas por sesión, evitando así la sobreventa de cupos.

## Modelo Entidad-Relación (DER)
El modelo se basa en cuatro tablas:

Adjuntammos el Link del gráfico en draw:

https://drive.google.com/file/d/1e4bHI5FNwW-faE6vw-dnieX7sPDBwkJJ/view?usp=sharing

Usuarios: Clientes registrados en el sistema.

Clase: Define la disponibilidad (Día, Hora, Capacidad máxima).

Reservas: Tabla intermedia que vincula un usuario con una sesión específica, validando la integridad del cupo.

Instructores: Define quién es el responsable técnico de esa sesión. 

## Diccionario de datos
<img width="1116" height="1192" alt="Clases" src="https://github.com/user-attachments/assets/9f38ab00-528a-46cf-9492-049447f61465" />
<img width="561" height="477" alt="Clientes" src="https://github.com/user-attachments/assets/5ad6b971-6523-4eb0-90f8-4697eecd7048" />
<img width="591" height="287" alt="Instructores" src="https://github.com/user-attachments/assets/8809d071-177d-4721-96a1-1cf2144dd29a" />


## Justificación del Diseño y Consultas SQL

Elegimos una estructura donde la Capacidad reside en la entidad Sesiones. Esto nos permite cambiar la capacidad del local en el futuro sin modificar todo el histórico de reservas. La tabla Reservas actúa como un registro de reservas que garantiza la relación "muchos a muchos" entre usuarios y horarios.

Las consultas están disponibles en las carpera .sql

