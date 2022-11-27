CREATE USER "alberto"@"localhost" IDENTIFIED BY "12345";

-- Eliminar user: DROP USER "alberto"@"localhost";

GRANT ALL PRIVILEGES
ON * . * -- En todas las bases de datos
TO "alberto"@"localhost";