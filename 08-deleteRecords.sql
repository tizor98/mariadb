USE metro_CDMX;

-- Se borra los registros incorrectos en stations
DELETE FROM `stations`
WHERE id IN (164, 165, 166)