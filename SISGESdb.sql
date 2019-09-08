-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sisgesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sisgesdb` ;

-- -----------------------------------------------------
-- Schema sisgesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sisgesdb` DEFAULT CHARACTER SET utf8 ;
USE `sisgesdb` ;

-- -----------------------------------------------------
-- Table `sisgesdb`.`Clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`Clientes` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`Clientes` (
  `CedulaCliente` VARCHAR(13) NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Usuario` VARCHAR(20) NULL,
  `Clave` VARCHAR(20) NULL,
  `Telefono` VARCHAR(10) NULL,
  `Direccion` VARCHAR(60) NULL,
  `Correo` VARCHAR(50) NULL,
  PRIMARY KEY (`CedulaCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisgesdb`.`Cargos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`Cargos` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`Cargos` (
  `idCargo` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(80) NULL,
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisgesdb`.`TipoTecnicos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`TipoTecnicos` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`TipoTecnicos` (
  `idTipoTecnico` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(80) NULL,
  PRIMARY KEY (`idTipoTecnico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisgesdb`.`Especialidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`Especialidades` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`Especialidades` (
  `idEspecialidad` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(80) NULL,
  PRIMARY KEY (`idEspecialidad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisgesdb`.`Tecnicos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`Tecnicos` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`Tecnicos` (
  `CedulaTecnico` VARCHAR(10) NOT NULL,
  `Nombres` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Usuario` VARCHAR(20) NULL,
  `Clave` VARCHAR(20) NULL,
  `Telefono` VARCHAR(10) NULL,
  `Direccion` VARCHAR(60) NULL,
  `Correo` VARCHAR(50) NULL,
  `Estado` TINYINT NULL,
  `idCargo` INT NOT NULL,
  `idTipoTecnico` INT NOT NULL,
  `idEspecialidad` INT NOT NULL,
  PRIMARY KEY (`CedulaTecnico`),
  CONSTRAINT `fk_Tecnicos_Cargos1`
    FOREIGN KEY (`idCargo`)
    REFERENCES `sisgesdb`.`Cargos` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tecnicos_TipoTecnicos1`
    FOREIGN KEY (`idTipoTecnico`)
    REFERENCES `sisgesdb`.`TipoTecnicos` (`idTipoTecnico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tecnicos_Especialidades1`
    FOREIGN KEY (`idEspecialidad`)
    REFERENCES `sisgesdb`.`Especialidades` (`idEspecialidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisgesdb`.`Equipos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`Equipos` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`Equipos` (
  `idEquipo` INT NOT NULL AUTO_INCREMENT,
  `TipoEquipo` VARCHAR(45) NULL,
  `Marca` VARCHAR(45) NULL,
  `Modelo` VARCHAR(45) NULL,
  `Serie` VARCHAR(45) NULL,
  `CedulaCliente` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`idEquipo`),
  CONSTRAINT `fk_Equipos_Clientes1`
    FOREIGN KEY (`CedulaCliente`)
    REFERENCES `sisgesdb`.`Clientes` (`CedulaCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sisgesdb`.`OrdenTrabajos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sisgesdb`.`OrdenTrabajos` ;

CREATE TABLE IF NOT EXISTS `sisgesdb`.`OrdenTrabajos` (
  `idOrdenTrabajo` INT NOT NULL AUTO_INCREMENT,
  `FechaIngreso` DATETIME NULL,
  `FechaSalida` DATETIME NULL,
  `DetalleProblema` VARCHAR(300) NULL,
  `Solucion` VARCHAR(300) NULL,
  `Estado` VARCHAR(15) NULL,
  `CedulaTecnico` VARCHAR(10) NOT NULL,
  `idEquipo` INT NOT NULL,
  PRIMARY KEY (`idOrdenTrabajo`),
  CONSTRAINT `fk_OrdenTrabajos_Tecnicos`
    FOREIGN KEY (`CedulaTecnico`)
    REFERENCES `sisgesdb`.`Tecnicos` (`CedulaTecnico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrdenTrabajos_Equipos1`
    FOREIGN KEY (`idEquipo`)
    REFERENCES `sisgesdb`.`Equipos` (`idEquipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
