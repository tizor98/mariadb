USE metro_CDMX;

DELIMITER //
CREATE TRIGGER updateActiveDrivers
AFTER UPDATE
ON `drivers`
FOR EACH ROW
BEGIN

   IF NEW.status != OLD.status THEN
      IF NEW.status = 1 THEN
         INSERT INTO `active_drivers` (driver_id) VALUES (NEW.id);
      ELSE
         DELETE FROM `active_drivers` WHERE driver_id = NEW.id;
      END IF;
   END IF;

END //

DELIMITER ;