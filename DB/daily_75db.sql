-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema daily_75db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `daily_75db` ;

-- -----------------------------------------------------
-- Schema daily_75db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `daily_75db` DEFAULT CHARACTER SET utf8 ;
USE `daily_75db` ;

-- -----------------------------------------------------
-- Table `daily_journal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `daily_journal` ;

CREATE TABLE IF NOT EXISTS `daily_journal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `book_name` VARCHAR(255) NOT NULL,
  `pages_read` VARCHAR(45) NULL,
  `reading_summary` TEXT NULL,
  `weight` SMALLINT NULL,
  `workout_outside` VARCHAR(255) NULL,
  `workout_outside_duration` SMALLINT NULL,
  `workout` VARCHAR(45) NULL,
  `workout_duration` SMALLINT NULL,
  `drank_water` TINYINT(1) NULL,
  `photos` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS dailyuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dailyuser'@'localhost' IDENTIFIED BY 'dailyuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dailyuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `daily_journal`
-- -----------------------------------------------------
START TRANSACTION;
USE `daily_75db`;
INSERT INTO `daily_journal` (`id`, `date`, `book_name`, `pages_read`, `reading_summary`, `weight`, `workout_outside`, `workout_outside_duration`, `workout`, `workout_duration`, `drank_water`, `photos`) VALUES (1, '2022-05-09', 'The Inner Life of Cats', '1-14', 'Meow meow meow meow (I was just dictating)', 8, 'walk', 46, 'fight with brother', 180, 1, 'photos/image0.jpeg');
INSERT INTO `daily_journal` (`id`, `date`, `book_name`, `pages_read`, `reading_summary`, `weight`, `workout_outside`, `workout_outside_duration`, `workout`, `workout_duration`, `drank_water`, `photos`) VALUES (2, '2022-05-10', 'The Inner Life of Cats', '14-26', '*Excited yeowling* *knocks book off table* *exits*', 8, 'walk', 47, 'fight with brother', 120, 1, 'photos/image1.jpeg');
INSERT INTO `daily_journal` (`id`, `date`, `book_name`, `pages_read`, `reading_summary`, `weight`, `workout_outside`, `workout_outside_duration`, `workout`, `workout_duration`, `drank_water`, `photos`) VALUES (3, '2022-05-11', 'The Inner Life of Cats', '27-38', 'That cursed human can\'t understand me, so let me be perfectly clear: This book is a decent guide to understanding the mentality of a cat, but be wary it doesn\'t even touch on the rich inner dialogue that we cat\'s cherish, no human could possibly understand the depth of our wisdom and knowledge.', 8, 'walk', 46, 'cat yoga', 60, 1, 'photos/image6.jpeg');
INSERT INTO `daily_journal` (`id`, `date`, `book_name`, `pages_read`, `reading_summary`, `weight`, `workout_outside`, `workout_outside_duration`, `workout`, `workout_duration`, `drank_water`, `photos`) VALUES (4, '2022-05-12', 'The Inner Life of Cats', '38-55', 'Meow meow meow meow (I was just dictating)', 8, 'walk', 48, 'fight with brother', 120, 1, 'photos/image3.jpeg');
INSERT INTO `daily_journal` (`id`, `date`, `book_name`, `pages_read`, `reading_summary`, `weight`, `workout_outside`, `workout_outside_duration`, `workout`, `workout_duration`, `drank_water`, `photos`) VALUES (5, '2022-05-13', 'The Inner Life of Cats', '55-66', 'Meow meow meow meow (I was just dictating)', 8, 'walk', 48, 'fight with brother', 180, 1, 'photos/image5.jpeg');

COMMIT;

