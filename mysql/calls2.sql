SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`remitentes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`remitentes` (
  `remitente_id` INT NOT NULL AUTO_INCREMENT ,
  `remitentecol` VARCHAR(45) NULL ,
  PRIMARY KEY (`remitente_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`llamadas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`llamadas` (
  `llamada_id` INT NOT NULL AUTO_INCREMENT ,
  `llamada_descripcion` VARCHAR(45) NULL ,
  `remitentes_remitente_id` INT NOT NULL ,
  PRIMARY KEY (`llamada_id`) ,
  INDEX `fk_llamadas_remitentes` (`remitentes_remitente_id` ASC) ,
  CONSTRAINT `fk_llamadas_remitentes`
    FOREIGN KEY (`remitentes_remitente_id` )
    REFERENCES `mydb`.`remitentes` (`remitente_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
