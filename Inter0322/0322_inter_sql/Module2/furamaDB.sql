-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`position`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`position` (
  `position_id` INT NOT NULL,
  `position_name` VARCHAR(45) NULL,
  PRIMARY KEY (`position_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`education_degree`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`education_degree` (
  `education_degree` INT NOT NULL,
  `education_degree_name` VARCHAR(45) NULL,
  PRIMARY KEY (`education_degree`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`division`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`division` (
  `division_id` INT NOT NULL,
  `division_name` VARCHAR(45) NULL,
  PRIMARY KEY (`division_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee` (
  `employee_id` INT NOT NULL,
  `employee_name` VARCHAR(45) NULL,
  `employee_birthday` DATE NULL,
  `employee_id_card` VARCHAR(45) NULL,
  `employee_salary` DOUBLE NULL,
  `employee_phone` VARCHAR(45) NULL,
  `employee_email` VARCHAR(45) NULL,
  `employee_address` VARCHAR(45) NULL,
  `position_id` INT NOT NULL,
  `education_degree_education_degree` INT NOT NULL,
  `division_division_id` INT NOT NULL,
  `user_username` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`employee_id`),
  INDEX `fk_employee_position_idx` (`position_id` ASC) VISIBLE,
  INDEX `fk_employee_education_degree1_idx` (`education_degree_education_degree` ASC) VISIBLE,
  INDEX `fk_employee_division1_idx` (`division_division_id` ASC) VISIBLE,
  INDEX `fk_employee_user1_idx` (`user_username` ASC) VISIBLE,
  CONSTRAINT `fk_employee_position`
    FOREIGN KEY (`position_id`)
    REFERENCES `mydb`.`position` (`position_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_education_degree1`
    FOREIGN KEY (`education_degree_education_degree`)
    REFERENCES `mydb`.`education_degree` (`education_degree`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_division1`
    FOREIGN KEY (`division_division_id`)
    REFERENCES `mydb`.`division` (`division_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_user1`
    FOREIGN KEY (`user_username`)
    REFERENCES `mydb`.`user` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`role` (
  `role_id` INT NOT NULL,
  `role_name` VARCHAR(45) NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_role` (
  `role_id` INT NULL,
  `username` VARCHAR(255) NULL,
  `user_username` VARCHAR(255) NOT NULL,
  `role_role_id` INT NOT NULL,
  PRIMARY KEY (`user_username`, `role_role_id`),
  INDEX `fk_user_role_role1_idx` (`role_role_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_role_user1`
    FOREIGN KEY (`user_username`)
    REFERENCES `mydb`.`user` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_role_role1`
    FOREIGN KEY (`role_role_id`)
    REFERENCES `mydb`.`role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer_type` (
  `customer_type_id` INT NOT NULL,
  `customer_type_name` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_id` INT NOT NULL,
  `customer_type_id` INT NOT NULL,
  `customer_name` VARCHAR(45) NULL,
  `customer_birthday` DATE NULL,
  `customer_gender` BIT(1) NULL,
  `customer_id_card` VARCHAR(45) NULL,
  `customer_phone` VARCHAR(45) NULL,
  `customer_email` VARCHAR(45) NULL,
  `customer_address` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`),
  INDEX `fk_customer_customer_type1_idx` (`customer_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_customer_type1`
    FOREIGN KEY (`customer_type_id`)
    REFERENCES `mydb`.`customer_type` (`customer_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`service_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`service_type` (
  `service_type_id` INT NOT NULL,
  `service_type_name` VARCHAR(45) NULL,
  PRIMARY KEY (`service_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rent_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rent_type` (
  `rent_type_id` INT NOT NULL,
  `rent_type_name` VARCHAR(45) NULL,
  `rent_type_cost` DOUBLE NULL,
  PRIMARY KEY (`rent_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`service` (
  `service_id` INT NOT NULL,
  `service_name` VARCHAR(45) NULL,
  `service_area` INT NULL,
  `service_cost` DOUBLE NULL,
  `service_max_people` INT NULL,
  `service_type_service_type_id` INT NOT NULL,
  `rent_type_rent_type_id` INT NOT NULL,
  `standard_room` VARCHAR(45) NULL,
  `description_other_convenience` VARCHAR(45) NULL,
  `pool_area` DOUBLE NULL,
  `number_of_floors` INT NULL,
  PRIMARY KEY (`service_id`),
  INDEX `fk_service_service_type1_idx` (`service_type_service_type_id` ASC) VISIBLE,
  INDEX `fk_service_rent_type1_idx` (`rent_type_rent_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_service_service_type1`
    FOREIGN KEY (`service_type_service_type_id`)
    REFERENCES `mydb`.`service_type` (`service_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_rent_type1`
    FOREIGN KEY (`rent_type_rent_type_id`)
    REFERENCES `mydb`.`rent_type` (`rent_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`contract`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`contract` (
  `contract_id` INT NOT NULL,
  `contract_start_date` DATETIME(1) NULL,
  `contractcol` DATETIME(1) NULL,
  `contract_deposit` DOUBLE NULL,
  `contract_total_money` DOUBLE NULL,
  `employee_employee_id` INT NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `service_service_id` INT NOT NULL,
  PRIMARY KEY (`contract_id`),
  INDEX `fk_contract_employee1_idx` (`employee_employee_id` ASC) VISIBLE,
  INDEX `fk_contract_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_contract_service1_idx` (`service_service_id` ASC) VISIBLE,
  CONSTRAINT `fk_contract_employee1`
    FOREIGN KEY (`employee_employee_id`)
    REFERENCES `mydb`.`employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contract_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contract_service1`
    FOREIGN KEY (`service_service_id`)
    REFERENCES `mydb`.`service` (`service_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`attach_service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`attach_service` (
  `attach_service_id` INT NOT NULL,
  `attach_service_name` VARCHAR(45) NULL,
  `attach_service_cost` DOUBLE NULL,
  `attach_service_unit` INT NULL,
  `attach_service_status` VARCHAR(45) NULL,
  PRIMARY KEY (`attach_service_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`contract_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`contract_detail` (
  `contract_detail_id` INT NOT NULL,
  `contract_contract_id` INT NOT NULL,
  `attach_service_attach_service_id` INT NOT NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`contract_detail_id`),
  INDEX `fk_contract_detail_contract1_idx` (`contract_contract_id` ASC) VISIBLE,
  INDEX `fk_contract_detail_attach_service1_idx` (`attach_service_attach_service_id` ASC) VISIBLE,
  CONSTRAINT `fk_contract_detail_contract1`
    FOREIGN KEY (`contract_contract_id`)
    REFERENCES `mydb`.`contract` (`contract_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contract_detail_attach_service1`
    FOREIGN KEY (`attach_service_attach_service_id`)
    REFERENCES `mydb`.`attach_service` (`attach_service_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
