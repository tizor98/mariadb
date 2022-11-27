USE metro_CDMX;

-- El delete from NO restablece los ID
DELETE FROM `stations_delete`;

-- El truncate SÍ restablece los ID
TRUNCATE TABLE `stations_delete`;