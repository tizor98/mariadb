USE metro_CDMX;

CREATE TABLE station_locations (

   `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

   `station_id` BIGINT(20) UNSIGNED NOT NULL,

   `location` POINT NOT NULL,

   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

   PRIMARY KEY (`id`),

   CONSTRAINT `station_locations_station_id_foreign`
   FOREIGN KEY (`station_id`) REFERENCES `stations`(`id`)

)
DEFAULT CHARSET=utf8
COLLATE=DEFAULT;