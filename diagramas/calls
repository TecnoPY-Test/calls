SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';


-- -----------------------------------------------------
-- Table `calls`.`remitentes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`remitentes` (
  `remitente_id` INT NOT NULL AUTO_INCREMENT ,
  `ci` INT NULL ,
  `nombre` VARCHAR(45) NULL ,
  `telefono` VARCHAR(45) NULL ,
  PRIMARY KEY (`remitente_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`destinatarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`destinatarios` (
  `destinatario_id` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `departamento` VARCHAR(45) NULL ,
  `interno` INT NULL ,
  PRIMARY KEY (`destinatario_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`categorias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`categorias` (
  `categoria_id` INT NOT NULL AUTO_INCREMENT ,
  `descripcion` TEXT NULL ,
  PRIMARY KEY (`categoria_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`llamadas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`llamadas` (
  `llamada_id` INT NOT NULL AUTO_INCREMENT ,
  `llamada_descripcion` TEXT NULL ,
  `remitentes_remitente_id` INT NOT NULL ,
  `destinatarios_destinatarios_id` INT NOT NULL ,
  `categorias_categorias_id` INT NOT NULL ,
  `hora_ini` DATETIME NULL ,
  `hora_fin` DATETIME NULL ,
  `mensaje` TEXT NULL ,
  PRIMARY KEY (`llamada_id`) ,
  INDEX `fk_llamadas_remitentes` (`remitentes_remitente_id` ASC) ,
  INDEX `fk_llamadas_destinatarios1` (`destinatarios_destinatarios_id` ASC) ,
  INDEX `fk_llamadas_categorias1` (`categorias_categorias_id` ASC) ,
  CONSTRAINT `fk_llamadas_remitentes`
    FOREIGN KEY (`remitentes_remitente_id` )
    REFERENCES `calls`.`remitentes` (`remitente_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_llamadas_destinatarios1`
    FOREIGN KEY (`destinatarios_destinatarios_id` )
    REFERENCES `calls`.`destinatarios` (`destinatario_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_llamadas_categorias1`
    FOREIGN KEY (`categorias_categorias_id` )
    REFERENCES `calls`.`categorias` (`categoria_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`roles` (
  `roles_id` INT NOT NULL AUTO_INCREMENT ,
  `descripcion` VARCHAR(100) NULL ,
  PRIMARY KEY (`roles_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`usuarios` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `avatar` VARCHAR(45) NOT NULL ,
  `roles_roles_id` INT NOT NULL ,
  PRIMARY KEY (`usuario_id`, `roles_roles_id`) ,
  INDEX `fk_usuarios_roles1` (`roles_roles_id` ASC) ,
  CONSTRAINT `fk_usuarios_roles1`
    FOREIGN KEY (`roles_roles_id` )
    REFERENCES `calls`.`roles` (`roles_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`permisos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`permisos` (
  `permisos_id` INT NOT NULL AUTO_INCREMENT ,
  `modulo` VARCHAR(45) NULL ,
  `accion` VARCHAR(45) NULL ,
  PRIMARY KEY (`permisos_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `calls`.`roles_has_permisos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `calls`.`roles_has_permisos` (
  `roles_roles_id` INT NOT NULL ,
  `permisos_permisos_id` INT NOT NULL ,
  PRIMARY KEY (`roles_roles_id`, `permisos_permisos_id`) ,
  INDEX `fk_roles_has_permisos_permisos1` (`permisos_permisos_id` ASC) ,
  INDEX `fk_roles_has_permisos_roles1` (`roles_roles_id` ASC) ,
  CONSTRAINT `fk_roles_has_permisos_roles1`
    FOREIGN KEY (`roles_roles_id` )
    REFERENCES `calls`.`roles` (`roles_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_has_permisos_permisos1`
    FOREIGN KEY (`permisos_permisos_id` )
    REFERENCES `calls`.`permisos` (`permisos_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
