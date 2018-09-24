-- MySQL Script generated by MySQL Workbench
-- Mon Sep 24 00:50:17 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema bancoisport
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bancoisport
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bancoisport` DEFAULT CHARACTER SET utf8 ;
USE `bancoisport` ;

-- -----------------------------------------------------
-- Table `bancoisport`.`cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`cliente` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sobrenome` VARCHAR(45) NULL,
  `cpf` VARCHAR(45) NULL,
  `dt_nascimento` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `cnpj` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`lista_de_reserva`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`lista_de_reserva` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`lista_de_reserva` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `historico` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`reservas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`reservas` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`reservas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dt_reserva` DATE NULL,
  `hr_inicio` TIME(6) NULL,
  `hr_fim` TIME(6) NULL,
  `qt_pessoas` VARCHAR(45) NULL,
  `valor_espaço` DOUBLE NULL,
  `nota_avaliacao` VARCHAR(45) NULL,
  `ListaDeReserva_id` INT NOT NULL,
  `Cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Reservas_ListaDeReserva1_idx` (`ListaDeReserva_id` ASC),
  INDEX `fk_Reservas_Cliente1_idx` (`Cliente_id` ASC),
  CONSTRAINT `fk_Reservas_ListaDeReserva1`
    FOREIGN KEY (`ListaDeReserva_id`)
    REFERENCES `bancoisport`.`lista_de_reserva` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservas_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `bancoisport`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`espaco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`espaco` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`espaco` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `logradouro` VARCHAR(45) NULL,
  `cep` VARCHAR(45) NULL,
  `uf` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `bairro` VARCHAR(45) NULL,
  `numero` VARCHAR(45) NULL,
  `complemento` VARCHAR(45) NULL,
  `Cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Espaco_Cliente1_idx` (`Cliente_id` ASC),
  CONSTRAINT `fk_Espaco_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `bancoisport`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`tipos_de_espacos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`tipos_de_espacos` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`tipos_de_espacos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_estabelecimento` VARCHAR(45) NULL,
  `area_metro` DOUBLE NULL,
  `qt_pessoas_suportadas` INT NULL,
  `hr_funcionamento` TIME(6) NULL,
  `preço_aluguel` INT NULL,
  `Espaco_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_TiposDeEspacos_Espaco1_idx` (`Espaco_id` ASC),
  CONSTRAINT `fk_TiposDeEspacos_Espaco1`
    FOREIGN KEY (`Espaco_id`)
    REFERENCES `bancoisport`.`espaco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`pagamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`pagamento` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`pagamento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Reservas_id` INT NOT NULL,
  `vencimento` DATE NULL,
  `num_cod_barras` VARCHAR(45) NULL,
  `valor_total` DOUBLE NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Pagamento_Reservas1_idx` (`Reservas_id` ASC),
  CONSTRAINT `fk_Pagamento_Reservas1`
    FOREIGN KEY (`Reservas_id`)
    REFERENCES `bancoisport`.`reservas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`reembolso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`reembolso` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`reembolso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(45) NULL,
  `Pagamento_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Reembolso_Pagamento1_idx` (`Pagamento_id` ASC),
  CONSTRAINT `fk_Reembolso_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `bancoisport`.`pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`denuncia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`denuncia` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`denuncia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  `nome_autor` VARCHAR(45) NULL,
  `Espaco_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Denuncia_Espaco1_idx` (`Espaco_id` ASC),
  CONSTRAINT `fk_Denuncia_Espaco1`
    FOREIGN KEY (`Espaco_id`)
    REFERENCES `bancoisport`.`espaco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`telefone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`telefone` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`telefone` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NULL,
  `Cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Telefone_Cliente1_idx` (`Cliente_id` ASC),
  CONSTRAINT `fk_Telefone_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `bancoisport`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`disponibilidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`disponibilidade` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`disponibilidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dt_disponivel` VARCHAR(45) NULL,
  `hr_disponivel` VARCHAR(45) NULL,
  `TiposDeEspacos_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Disponibilidade_TiposDeEspacos1_idx` (`TiposDeEspacos_id` ASC),
  CONSTRAINT `fk_Disponibilidade_TiposDeEspacos1`
    FOREIGN KEY (`TiposDeEspacos_id`)
    REFERENCES `bancoisport`.`tipos_de_espacos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`cartoes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`cartoes` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`cartoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bandeira` VARCHAR(45) NULL,
  `validade` DATE NULL,
  `numero` INT NULL,
  `cod_seguranca` INT NULL,
  `Cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Cartoes_Cliente1_idx` (`Cliente_id` ASC),
  CONSTRAINT `fk_Cartoes_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `bancoisport`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`lista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`lista` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`lista` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Cartoes_id` INT NOT NULL,
  `Pagamento_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_LISTA_Cartoes1_idx` (`Cartoes_id` ASC),
  INDEX `fk_LISTA_Pagamento1_idx` (`Pagamento_id` ASC),
  CONSTRAINT `fk_LISTA_Cartoes1`
    FOREIGN KEY (`Cartoes_id`)
    REFERENCES `bancoisport`.`cartoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LISTA_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `bancoisport`.`pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`administrador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`administrador` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`administrador` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `senha` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`modalidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`modalidades` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`modalidades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(45) NULL,
  `TiposDeEspacos_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Modalidades_TiposDeEspacos1_idx` (`TiposDeEspacos_id` ASC),
  CONSTRAINT `fk_Modalidades_TiposDeEspacos1`
    FOREIGN KEY (`TiposDeEspacos_id`)
    REFERENCES `bancoisport`.`tipos_de_espacos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
