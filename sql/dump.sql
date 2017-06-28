-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_ejemplo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_ejemplo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_ejemplo` DEFAULT CHARACTER SET utf8 ;
USE `db_ejemplo` ;

-- -----------------------------------------------------
-- Table `db_ejemplo`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ejemplo`.`persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_ejemplo`.`telefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_ejemplo`.`telefono` (
  `numero` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_telefono_persona_idx` (`persona_id` ASC),
  CONSTRAINT `fk_telefono_persona`
    FOREIGN KEY (`persona_id`)
    REFERENCES `db_ejemplo`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
