USE metro_CDMX;

CREATE TRIGGER updateUpdatedField
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.updated_at = NOW();