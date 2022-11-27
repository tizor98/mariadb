USE metro_CDMX;

-- Se creará la tabla pivot entre lines y stations
CREATE TABLE `lines_stations` (

   `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

   `line_id` BIGINT(20) UNSIGNED NOT NULL,
   `station_id` BIGINT(20) UNSIGNED NOT NULL,

   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

   PRIMARY KEY (`id`),

   CONSTRAINT `line_id_foreign`
   FOREIGN KEY (`line_id`) REFERENCES `lines`(`id`),
   
   CONSTRAINT `station_id_foreign`
   FOREIGN KEY (`station_id`) REFERENCES `stations`(`id`)

)
DEFAULT CHARSET=utf8
COLLATE=DEFAULT;
