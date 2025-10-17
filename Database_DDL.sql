SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `User_Request`;
DROP TABLE IF EXISTS `Todo_Schedule`;
DROP TABLE IF EXISTS `Schedule`;
DROP TABLE IF EXISTS `Referenced_Num`;
DROP TABLE IF EXISTS `Place`;
DROP TABLE IF EXISTS `Group_Friend`;
DROP TABLE IF EXISTS `Friend`;
DROP TABLE IF EXISTS `Group`;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS `Status`;
DROP TABLE IF EXISTS `Concept`;
DROP TABLE IF EXISTS `Place_Category`;
DROP TABLE IF EXISTS `Age`;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Age` (
  `age_id` INT NOT NULL AUTO_INCREMENT,
  `age` INT NULL,
  CONSTRAINT `PK_AGE` PRIMARY KEY (`age_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Place_Category` (
  `category_id` INT NOT NULL,
  `category` VARCHAR(10) NOT NULL,
  CONSTRAINT `PK_PLACE_CATEGORY` PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Concept` (
  `concept_id` INT NOT NULL,
  `concept` VARCHAR(20) NOT NULL,
  CONSTRAINT `PK_CONCEPT` PRIMARY KEY (`concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Status` (
  `status_id` INT NOT NULL,
  `status` CHAR(10) NOT NULL,
  CONSTRAINT `PK_STATUS` PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `User` (
  `user_id` BIGINT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(15) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `name` VARCHAR(10) NOT NULL,
  `nickname` VARCHAR(15) NOT NULL,
  `birthdate` DATE NOT NULL,
  `gender` CHAR(10) NOT NULL,
  `authority` BOOLEAN NOT NULL,
  CONSTRAINT `PK_USER` PRIMARY KEY (`user_id`),
  CONSTRAINT `uk_user_nickname` UNIQUE (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Group` (
  `group_id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `creator` BIGINT NOT NULL,
  CONSTRAINT `PK_GROUP` PRIMARY KEY (`group_id`),
  CONSTRAINT `FK_Group_Creator_User` FOREIGN KEY (`creator`)
    REFERENCES `User` (`user_id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Friend` (
  `user_id` BIGINT NOT NULL,
  `user_id2` BIGINT NOT NULL,
  `status_id` INT NOT NULL,
  CONSTRAINT `PK_FRIEND` PRIMARY KEY (`user_id`, `user_id2`),
  CONSTRAINT `FK_Friend_User_1` FOREIGN KEY (`user_id`)
    REFERENCES `User` (`user_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_Friend_User_2` FOREIGN KEY (`user_id2`)
    REFERENCES `User` (`user_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_Friend_Status` FOREIGN KEY (`status_id`)
    REFERENCES `Status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Group_Friend` (
  `group_id` BIGINT NOT NULL,
  `user_id` BIGINT NOT NULL,
  `status_id` INT NULL,
  `role` CHAR(20) NULL,
  CONSTRAINT `PK_GROUP_FRIEND` PRIMARY KEY (`group_id`, `user_id`),
  CONSTRAINT `FK_Group_TO_Group_Friend_1` FOREIGN KEY (`group_id`)
    REFERENCES `Group` (`group_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_User_TO_Group_Friend_1` FOREIGN KEY (`user_id`)
    REFERENCES `User` (`user_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_Status_TO_Group_Friend_1` FOREIGN KEY (`status_id`)
    REFERENCES `Status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Place` (
  `place_id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `category_id` INT NOT NULL,
  `big_location` VARCHAR(100) NOT NULL,
  `small_location` VARCHAR(50) NOT NULL,
  `description` TEXT NULL,
  `concept_id` INT NOT NULL,
  CONSTRAINT `PK_PLACE` PRIMARY KEY (`place_id`),
  CONSTRAINT `FK_Place_Category` FOREIGN KEY (`category_id`)
    REFERENCES `Place_Category` (`category_id`),
  CONSTRAINT `FK_Place_Concept` FOREIGN KEY (`concept_id`)
    REFERENCES `Concept` (`concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Referenced_Num` (
  `place_id` BIGINT NOT NULL,
  `age_id` INT NOT NULL,
  `count` BIGINT DEFAULT 0,
  CONSTRAINT `PK_REFERENCED_NUM` PRIMARY KEY (`place_id`, `age_id`),
  CONSTRAINT `FK_ReferencedNum_Place` FOREIGN KEY (`place_id`)
    REFERENCES `Place` (`place_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_ReferencedNum_Age` FOREIGN KEY (`age_id`)
    REFERENCES `Age` (`age_id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Schedule` (
  `schedule_id` BIGINT NOT NULL AUTO_INCREMENT,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `user_id` BIGINT NOT NULL,
  `concept_id` INT NOT NULL,
  `group_id` BIGINT,
  `status` BOOLEAN NOT NULL,
  `title` text NOT NULL DEFAULT '가제',
  CONSTRAINT `PK_SCHEDULE` PRIMARY KEY (`schedule_id`),
  CONSTRAINT `FK_Schedule_User` FOREIGN KEY (`user_id`)
    REFERENCES `User` (`user_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_Schedule_Group` FOREIGN KEY (`group_id`)
    REFERENCES `Group` (`group_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_Schedule_Concept` FOREIGN KEY (`concept_id`)
    REFERENCES `Concept` (`concept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Todo_Schedule` (
  `todo_id` BIGINT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `memo` TEXT NULL,
  `schedule_id` BIGINT NOT NULL,
  `place_id` BIGINT NOT NULL,
  `start_time` INT NOT NULL,
  CONSTRAINT `PK_TODO_SCHEDULE` PRIMARY KEY (`todo_id`),
  CONSTRAINT `FK_Todo_Schedule_Schedule` FOREIGN KEY (`schedule_id`)
    REFERENCES `Schedule` (`schedule_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_Todo_Schedule_Place` FOREIGN KEY (`place_id`)
    REFERENCES `Place` (`place_id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `User_Request` (
  `request_id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `big_location` VARCHAR(100) NOT NULL,
  `small_location` VARCHAR(50) NOT NULL,
  `description` TEXT NULL,
  `concept_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `request` CHAR(10) NOT NULL,
  `user_id` BIGINT NOT NULL,
  `status_id` INT NOT NULL,
  `specific_location` VARCHAR(20) NULL,
  `place_id` BIGINT,
  CONSTRAINT `PK_USER_REQUEST` PRIMARY KEY (`request_id`),
  CONSTRAINT `FK_User_Request_User` FOREIGN KEY (`user_id`)
    REFERENCES `User` (`user_id`)
    ON DELETE CASCADE
    ,
  CONSTRAINT `FK_User_Request_Concept` FOREIGN KEY (`concept_id`)
    REFERENCES `Concept` (`concept_id`),
  CONSTRAINT `FK_User_Request_Category` FOREIGN KEY (`category_id`)
    REFERENCES `Place_Category` (`category_id`),
  CONSTRAINT `FK_User_Request_Status` FOREIGN KEY (`status_id`)
    REFERENCES `Status` (`status_id`),
  CONSTRAINT `FK_User_Request_Place` FOREIGN KEY (`place_id`)
    REFERENCES `Place` (`place_id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 이메일 토큰 
CREATE TABLE IF NOT EXISTS Email_Verification (
   verify_id  BIGINT NOT NULL AUTO_INCREMENT,
   user_id    BIGINT NOT NULL,
   email      VARCHAR(30) NOT NULL,
   code       CHAR(6) NOT NULL,              -- 6자리 숫자 코드
   verified   TINYINT(1) NOT NULL DEFAULT 0, -- 0:미인증, 1:인증완료
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (verify_id),
  KEY idx_ev_user_verified (user_id, verified),
  CONSTRAINT FK_EV_User FOREIGN KEY (user_id) REFERENCES `User`(user_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;