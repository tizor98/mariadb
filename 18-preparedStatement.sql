USE metro_CDMX;

-- Considero mejor evitar esto y solo hacerlo con stored procedures siempre que se pueda
DELIMITER //
CREATE PROCEDURE getLineStations (
   IN line_name VARCHAR(15)
)
BEGIN

   DECLARE line_id BIGINT(20);

   SELECT id
   INTO line_id -- Una forma de guarda un valor de un select dentro de una variable
   FROM `lines`
   WHERE name = line_name;

   -- Otra forma de guardar un valor de un select dentro de una variable
   SET @sql = CONCAT("
      SELECT
         ls.id AS relation_id,
         l.name AS line_name,
         s.name AS station_name 
      FROM
         lines_stations ls
         INNER JOIN `lines` l
         ON ls.line_id = l.id
         INNER JOIN stations s
         ON ls.station_id = s.id
      WHERE
         ls.line_id = ", line_id);

   PREPARE stmt FROM @sql;
   EXECUTE stmt;

   DEALLOCATE PREPARE stmt;

END //

DELIMITER ;