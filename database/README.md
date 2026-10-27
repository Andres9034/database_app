# Carpeta database

`articulos_oficina.sql` crea la base, la tabla `articulos` y 6 filas de ejemplo.

En local **no hace falta ejecutarlo**: Spring Boot + H2 crean la tabla al arrancar.

Sí se usa cuando se instale MySQL/MariaDB (por ejemplo en la VM CentOS):

```bash
mysql -u root -p < articulos_oficina.sql
```
