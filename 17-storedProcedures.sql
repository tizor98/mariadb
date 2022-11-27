USE metro_CDMX;

DELIMITER //
CREATE PROCEDURE GeoDistance (
   IN station_one VARCHAR(50),
   IN station_two VARCHAR(50),
   IN meters BOOLEAN
)
BEGIN

   SELECT ST_DISTANCE_SPHERE(
      (
         SELECT location
         FROM station_locations sl INNER JOIN stations s 
         ON sl.station_id = s.id 
         WHERE s.name = station_one
      ),
      (
         SELECT location
         FROM station_locations sl INNER JOIN stations s 
         ON sl.station_id = s.id 
         WHERE s.name = station_two
      )
   ) / IF(meters, 1, 1000) AS distance;

END //

DELIMITER ;

-- DROP PROCEDURE [nombre] elimina un procedimiento almacenado