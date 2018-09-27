-- MySQL Script generated by MySQL Workbench
-- Mon Sep 24 23:14:16 2018
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
  `dt_nascimento` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
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
  `lista_de_reserva_id` INT NOT NULL,
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_reservas_lista_de_reserva1_idx` (`lista_de_reserva_id` ASC),
  INDEX `fk_reservas_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_reservas_lista_de_reserva1`
    FOREIGN KEY (`lista_de_reserva_id`)
    REFERENCES `bancoisport`.`lista_de_reserva` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reservas_cliente1`
    FOREIGN KEY (`cliente_id`)
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
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_espaco_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_espaco_cliente1`
    FOREIGN KEY (`cliente_id`)
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
  `espaco_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tipos_de_espacos_espaco1_idx` (`espaco_id` ASC),
  CONSTRAINT `fk_tipos_de_espacos_espaco1`
    FOREIGN KEY (`espaco_id`)
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
  `vencimento` DATE NULL,
  `num_cod_barras` VARCHAR(45) NULL,
  `valor_total` DOUBLE NULL,
  `reservas_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pagamento_reservas1_idx` (`reservas_id` ASC),
  CONSTRAINT `fk_pagamento_reservas1`
    FOREIGN KEY (`reservas_id`)
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
  `pagamento_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_reembolso_pagamento1_idx` (`pagamento_id` ASC),
  CONSTRAINT `fk_reembolso_pagamento1`
    FOREIGN KEY (`pagamento_id`)
    REFERENCES `bancoisport`.`pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`irregularidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`irregularidade` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`irregularidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  `nome_autor` VARCHAR(45) NULL,
  `espaco_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_denuncia_espaco1_idx` (`espaco_id` ASC),
  CONSTRAINT `fk_denuncia_espaco1`
    FOREIGN KEY (`espaco_id`)
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
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_telefone_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_telefone_cliente1`
    FOREIGN KEY (`cliente_id`)
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
  `tipos_de_espacos_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_disponibilidade_tipos_de_espacos1_idx` (`tipos_de_espacos_id` ASC),
  CONSTRAINT `fk_disponibilidade_tipos_de_espacos1`
    FOREIGN KEY (`tipos_de_espacos_id`)
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
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cartoes_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_cartoes_cliente1`
    FOREIGN KEY (`cliente_id`)
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
  `pagamento_id` INT NOT NULL,
  `cartoes_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_lista_pagamento1_idx` (`pagamento_id` ASC),
  INDEX `fk_lista_cartoes1_idx` (`cartoes_id` ASC),
  CONSTRAINT `fk_lista_pagamento1`
    FOREIGN KEY (`pagamento_id`)
    REFERENCES `bancoisport`.`pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lista_cartoes1`
    FOREIGN KEY (`cartoes_id`)
    REFERENCES `bancoisport`.`cartoes` (`id`)
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
  `tipos_de_espacos_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_modalidades_tipos_de_espacos1_idx` (`tipos_de_espacos_id` ASC),
  CONSTRAINT `fk_modalidades_tipos_de_espacos1`
    FOREIGN KEY (`tipos_de_espacos_id`)
    REFERENCES `bancoisport`.`tipos_de_espacos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`cliente_locador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`cliente_locador` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`cliente_locador` (
  `id_cliente_locador` INT NOT NULL,
  `cnpj` VARCHAR(45) NULL,
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id_cliente_locador`),
  INDEX `fk_cliente_locador_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_cliente_locador_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `bancoisport`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoisport`.`cliente_locatario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bancoisport`.`cliente_locatario` ;

CREATE TABLE IF NOT EXISTS `bancoisport`.`cliente_locatario` (
  `id_cliente_locatario` INT NOT NULL,
  `cpf` VARCHAR(45) NULL,
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id_cliente_locatario`),
  INDEX `fk_cliente_locatario_cliente1_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_cliente_locatario_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `bancoisport`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
