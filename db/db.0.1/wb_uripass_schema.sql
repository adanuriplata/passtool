-- MySQL Script generated by MySQL Workbench
-- Fri Jan 26 18:25:00 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `user` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `pass` CHAR(32) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`accounts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`accounts` (
  `id_account` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_categorie` INT NOT NULL,
  `account_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_account`),
  INDEX `fk_accounts_users_idx` (`id_user` ASC),
  CONSTRAINT `fk_accounts_users`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`users` (`id_user`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categories` (
  `id_categorie` INT NOT NULL AUTO_INCREMENT,
  `categorie_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categorie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`info` (
  `id_account` INT NOT NULL,
  `id_categories` INT NOT NULL,
  `sm_login` VARCHAR(45) NOT NULL,
  `sm_password` VARCHAR(30) NOT NULL,
  `sm_email` VARCHAR(80) NULL,
  `sm_tel` VARCHAR(20) NULL,
  `sus_login` VARCHAR(20) NOT NULL,
  `sus_password` VARCHAR(45) NOT NULL,
  `sus_email` VARCHAR(45) NULL,
  `sus_tel` VARCHAR(20) NULL,
  `edu_login` VARCHAR(45) NOT NULL,
  `edu_password` VARCHAR(45) NOT NULL,
  `edu_email` VARCHAR(45) NULL,
  `edu_url` VARCHAR(150) NULL,
  `ema_login` VARCHAR(30) NOT NULL,
  `ema_password` VARCHAR(45) NOT NULL,
  `ema_tel` VARCHAR(20) NULL,
  `bnk_on_login` VARCHAR(45) NOT NULL,
  `bnk_on_password` VARCHAR(45) NOT NULL,
  `bnk_tel_password` VARCHAR(30) NULL,
  `bnk_num_account` INT NULL,
  `bnk_clabe` INT NULL,
  `serv_on_login` VARCHAR(20) NOT NULL,
  `serv_on_password` VARCHAR(35) NOT NULL,
  `serv_url` VARCHAR(150) NULL,
  `serv_ftp_user` VARCHAR(35) NULL,
  `serv_ftp_pass` VARCHAR(35) NULL,
  `serv_ftp_url` VARCHAR(150) NULL,
  INDEX `fk_info_categories1_idx` (`id_categories` ASC),
  INDEX `fk_info_accounts1_idx` (`id_account` ASC),
  CONSTRAINT `fk_info_categories1`
    FOREIGN KEY (`id_categories`)
    REFERENCES `mydb`.`categorie` (`id_categorie`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_info_accounts1`
    FOREIGN KEY (`id_account`)
    REFERENCES `mydb`.`accounts` (`id_account`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
