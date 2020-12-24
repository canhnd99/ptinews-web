-- MySQL Script generated by MySQL Workbench
-- Thu Dec 24 11:55:08 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ptinewsdb_dev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ptinewsdb_dev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ptinewsdb_dev` DEFAULT CHARACTER SET utf8mb4 ;
USE `ptinewsdb_dev` ;

-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_user` (
  `id` VARCHAR(36) NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `salt` VARCHAR(50) NULL,
  `email` VARCHAR(255) NOT NULL,
  `isAdmin` ENUM('0', '1') NULL DEFAULT 0,
  `status` ENUM('0', '1') NULL DEFAULT '1',
  `created_date` DATE NULL,
  `last_modified` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_category` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NULL,
  `created_date` DATE NULL,
  `last_modified` DATE NULL,
  `tbl_user_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_category_tbl_user1_idx` (`tbl_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_category_tbl_user1`
    FOREIGN KEY (`tbl_user_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_article` (
  `id` VARCHAR(36) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT NULL,
  `content` TEXT NULL,
  `thumnail` VARCHAR(255) NULL,
  `status` ENUM('draft', 'published', 'trashed') NULL DEFAULT 'draft',
  `event` ENUM('0', '1') NULL DEFAULT 0,
  `sticky` ENUM('0', '1') NULL DEFAULT 0,
  `slug` VARCHAR(255) NULL,
  `liked` INT(10) NULL,
  `created_date` DATE NULL,
  `last_modified` DATE NULL,
  `tbl_category_id` VARCHAR(36) NOT NULL,
  `tbl_user_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_article_tbl_category1_idx` (`tbl_category_id` ASC) VISIBLE,
  INDEX `fk_tbl_article_tbl_user1_idx` (`tbl_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_article_tbl_category1`
    FOREIGN KEY (`tbl_category_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_article_tbl_user1`
    FOREIGN KEY (`tbl_user_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_comment` (
  `id` VARCHAR(36) NOT NULL,
  `content` VARCHAR(255) NOT NULL,
  `status` ENUM('0', '1') NULL DEFAULT '1',
  `created_date` DATE NULL,
  `last_modified` DATE NULL,
  `tbl_article_id` VARCHAR(36) NOT NULL,
  `tbl_user_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_comment_tbl_article1_idx` (`tbl_article_id` ASC) VISIBLE,
  INDEX `fk_tbl_comment_tbl_user1_idx` (`tbl_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_comment_tbl_article1`
    FOREIGN KEY (`tbl_article_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_comment_tbl_user1`
    FOREIGN KEY (`tbl_user_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_like`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_like` (
  `id` INT NOT NULL,
  `created_date` VARCHAR(45) NULL,
  `last_modified` VARCHAR(45) NULL,
  `tbl_user_id` VARCHAR(36) NOT NULL,
  `tbl_article_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_like_tbl_user1_idx` (`tbl_user_id` ASC) VISIBLE,
  INDEX `fk_tbl_like_tbl_article1_idx` (`tbl_article_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_like_tbl_user1`
    FOREIGN KEY (`tbl_user_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_like_tbl_article1`
    FOREIGN KEY (`tbl_article_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_tag` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(255) NULL,
  `created_date` DATE NULL,
  `last_modified` DATE NULL,
  `tbl_user_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_tag_tbl_user1_idx` (`tbl_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_tag_tbl_user1`
    FOREIGN KEY (`tbl_user_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ptinewsdb_dev`.`tbl_tag_article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ptinewsdb_dev`.`tbl_tag_article` (
  `id` VARCHAR(36) NOT NULL,
  `tbl_article_id` VARCHAR(36) NOT NULL,
  `tbl_tag_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_tag_article_tbl_article_idx` (`tbl_article_id` ASC) VISIBLE,
  INDEX `fk_tbl_tag_article_tbl_tag1_idx` (`tbl_tag_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_tag_article_tbl_article`
    FOREIGN KEY (`tbl_article_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_tag_article_tbl_tag1`
    FOREIGN KEY (`tbl_tag_id`)
    REFERENCES `ptinewsdb_dev`.`tbl_tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;