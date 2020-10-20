-- MySQL Workbench Synchronization
-- Generated: 2020-10-20 21:00
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `botiga_quadres`.`quadres` 
CHANGE COLUMN `preu` `preu` DECIMAL NOT NULL COMMENT 'Aquí va el preu, que pot contenir decimals' ,
CHANGE COLUMN `autor` `autor` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Aquí va l\'autor, si és null és que és anònim' ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`),
ADD INDEX `fk_quadres_clients_idx` (`clients_id_client` ASC) VISIBLE,
DROP INDEX `fk_quadres_clients_idx` ;
;

ALTER TABLE `botiga_quadres`.`clients` 
CHANGE COLUMN `nom` `nom` VARCHAR(85) NOT NULL COMMENT 'Aquí va el nom del client' ,
CHANGE COLUMN `cognom` `cognom` VARCHAR(85) NOT NULL COMMENT 'Aquí va el cognom del client' ,
CHANGE COLUMN `dni` `dni` VARCHAR(9) NOT NULL COMMENT 'Aquí va el dni del client' ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
