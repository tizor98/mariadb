USE metro_CDMX;

-- ST_DISTANCE_SPHERE calcula la distancia entre los dos puntos en metros, se divide por 1000 para tener la info en km
SELECT ST_DISTANCE_SPHERE(
   (
      SELECT location 
      FROM station_locations sl INNER JOIN stations s 
      ON sl.station_id = s.id 
      WHERE s.name = "Chabacano"
   ),
   (
      SELECT location 
      FROM station_locations sl INNER JOIN stations s 
      ON sl.station_id = s.id 
      WHERE s.name = "Calle 11"
   )
) / 1000 AS distance;