# TP---BASE-DE-DATOS---GRUPO-7
Sistema de Gestión para Sala de Pilates 

<img width="2560" height="1707" alt="Sala de pilates" src="https://github.com/user-attachments/assets/1dc886a6-f1af-4179-81db-55cfa5d53890" />

## Descripción del Proyecto
Este sistema ha sido diseñado para gestionar las reservas de una sala de Pilates, optimizando la ocupación del espacio y garantizando que no se supere la capacidad física de 4 camas por sesión, evitando así la sobreventa de cupos.

## Modelo Entidad-Relación (DER)
El modelo se basa en cuatro tablas:

Adjuntammos el Link del gráfico en draw:

https://drive.google.com/file/d/1e4bHI5FNwW-faE6vw-dnieX7sPDBwkJJ/view?usp=sharing

**Usuarios:** Clientes registrados en el sistema.

Clase: Define la disponibilidad (Día, Hora, Capacidad máxima).

Reservas: Tabla intermedia que vincula un usuario con una sesión específica, validando la integridad del cupo.

Instructores: Define quién es el responsable técnico de esa sesión. 

## Diccionario de datos
Clientes
<img width="1820" height="1080" alt="Clientes" src="https://github.com/user-attachments/assets/e69920a0-a9a6-486d-a794-9edba8f6c3a8" />
Instructores
<img width="1820" height="1080" alt="Instructores" src="https://github.com/user-attachments/assets/6d2fec7c-dfd8-4fc0-abd7-8fdbe42d8c29" />
Clases
<img width="1820" height="1080" alt="Clases (1)" src="https://github.com/user-attachments/assets/d200e70d-1bfb-46aa-b0c1-2f2d5d96b99a" />
Reservas
<img width="1820" height="1080" alt="Reservas" src="https://github.com/user-attachments/assets/12f4359b-a377-4b50-8e22-c09145681146" />

## Justificación del Diseño y Consultas SQL

Elegimos una estructura donde la Capacidad reside en la entidad Sesiones. Esto nos permite cambiar la capacidad del local en el futuro sin modificar todo el histórico de reservas. La tabla Reservas actúa como un registro de reservas que garantiza la relación "muchos a muchos" entre usuarios y horarios.

Las consultas están disponibles en las carpeta .sql de este repositorio

