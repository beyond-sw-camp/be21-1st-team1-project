# 🌴🍊Pocket Jeju🍊🌴
## 내 손 안의 제주 여행 플래너📙
> 여행 일정을 짜는 것에 번거로움과 부담감을 느끼는 사용자에게 간편하고 취향에 맞는 여행 장소를 추천합니다.
--------
## 목차
### 1. 팀 소개
### 2. 프로젝트 개요
### 3. 유사 서비스
### 4. 개발 환경
### 5. 프로젝트 구조
### 6. 프로젝트 기획
### 7. 프로젝트 기능
### 8. 서버
### 9. 회고

----

## 1. 팀 소개
<table width="100%">
  <thead>
    <tr align="center">
      <th width="20%">김채우🍇</th>
      <th width="20%">김세현🍅</th>
      <th width="20%">김성은🍋</th>
      <th width="20%">양승재🍊</th>
      <th width="20%">정하경🍏</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td><img src="https://github.com/user-attachments/assets/95d93ca5-ed6c-42b8-8ab1-54608c255b6f" width="60%" /></td>
      <td><img src="https://github.com/user-attachments/assets/34156882-bfdf-4536-bdf5-67b5c139e4ca" width="60%" /></td>
      <td><img src="https://github.com/user-attachments/assets/0e7cb364-3ce2-4729-87f9-94ba1eb31af9" width="60%" /></td>
      <td><img src="https://github.com/user-attachments/assets/dd56732e-3798-4b10-8d32-ef5a3d0da673" width="60%" /></td>
      <td><img src="https://github.com/user-attachments/assets/068fd2f2-d0e8-4a66-8973-b01502df6976" width="60%" /></td>
    </tr>
  </tbody>
</table>

----

## 2. 프로젝트 개요
### 소개
'Pocket Jeju'는 여행 일정을 고려하는 것을 부담스러워하는 사용자에게 취향에 맞는 여행 일정을 추천해 주는 서비스입니다. 
원하는 여행 컨셉에 맞는 식당, 장소, 카페, 자연 등을 추천받고 다른 사용자들과 공유할 수 있습니다. 
### 선정
여행 일정을 계획하는 것을 여행의 일부로 느끼는 사람도 있지만 그것이 부담감으로 다가오는 사람 또한 있습니다. 
그러한 부담을 줄여 취향에 맞는 여러 선택지들을 추천해 주는 서비스의 필요성을 느꼈습니다. 
### 주요 기능
- 일정 생성
- 일정 공유
- 모임 생성
- 모임 초대
- 취향에 맞는 장소 추천

----

## 3. 유사 서비스
### 트리플
- 특정 지역에 따른 일정을 추천합니다.
### DAILY TRIP
- 여행 경비 기록 및 예산 관리에 중점을 두어 경비 관리에 유리합니다.
- 여행 사진, 일기 등을 기록할 수 있습니다. 
### 트립어드바이저
- 다른 사용자들이 남긴 리뷰를 확인할 수 있습니다.
- 여행 장소에 관란 다양한 정보를 얻을 수 있습니다.
----

## 4. 개발환경 및 협업 도구
### 개발환경
- MariaDB ![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=flat-square&logo=mariadb&logoColor=white)
- VirtualBox 	![VirtualBox](https://img.shields.io/badge/VirtualBox-185AB7?style=flat-square&logo=virtualbox&logoColor=white)
- DBeaver 	![DBeaver](https://img.shields.io/badge/DBeaver-337996?style=flat-square&logo=dbeaver&logoColor=white)
### 협엽 도구
- Discord ![Discord](https://img.shields.io/badge/Discord-5865F2?style=flat-square&logo=discord&logoColor=white)
- Notion ![Notion](https://img.shields.io/badge/Notion-000000?style=flat-square&logo=notion&logoColor=white)
- GitHub ![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)
- Google Drive ![Google Drive](https://img.shields.io/badge/Google%20Drive-4285F4?style=flat-square&logo=googledrive&logoColor=white)
- ERDCloud 	![ERDCloud](https://img.shields.io/badge/ERDCloud-FF8C00?style=flat-square)

----

## 5. 프로젝트 구조
### master, slave 계층 구조
- <img width="402" height="406" alt="스크린샷 2025-10-15 오후 7 31 53" src="https://github.com/user-attachments/assets/88513486-6aca-4580-bead-8cf50aaa5992" />

----

## 6. 프로젝트 기획
### 1. WBS
<img width="1303" height="227" alt="스크린샷 2025-10-15 오후 8 07 03" src="https://github.com/user-attachments/assets/bbcfc900-3a27-497c-9ba5-7a9fdfa5c5f1" />

### 2. 정의서
1. 테이블 정의서
  - <img width="1190" height="1684" alt="PNG 이미지" src="https://github.com/user-attachments/assets/f422c256-feaf-4cfe-8cc8-c8cd859a89b0" />

2. 요구사항 명세서
  - [요구사항 명세서 링크](https://docs.google.com/spreadsheets/d/11HAXRkng0V0o7YjI7BrTuVrmnsm3rXvXwsFO5xye6lc/edit?usp=sharing)
<img width="1684" height="1190" alt="PNG 이미지 2" src="https://github.com/user-attachments/assets/bae01955-4265-46f3-bd52-d4a9f6e911a5" />

### 3. ERD
<img width="2598" height="1237" alt="e" src="https://github.com/user-attachments/assets/4c68d671-329c-4e01-8893-74cbddb1f8ec" />

### 4. SCHEMA DDL
<details>
  <summary>코드</summary>
  
```
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
```

</details>


-----

## 7. 프로젝트 기능
### 김채우
<details>
  
  <summary>장소 데이터 수정</summary>
  
  - 코드
  -   <img width="346" height="150" alt="1번 코드" src="https://github.com/user-attachments/assets/8a211f47-9cd3-4399-b72b-d74c02f9b9e8" />
  - 관리자가 데이터를 수정할 때 사용
  - 실행 전
  -    <img width="1083" height="60" alt="1번 실행 전" src="https://github.com/user-attachments/assets/6bd9a53b-263c-4a43-a51a-4604dcff3eca" />
  - 실행 후
  -   <img width="998" height="37" alt="1번 실행 후" src="https://github.com/user-attachments/assets/ebdd363e-6d98-4594-8bad-669ed7eadac0" />
  
</details>

<details>
  <summary>닉네임 기반 일정 검색</summary>
  
- 코드
-   <img width="427" height="252" alt="2번 코드" src="https://github.com/user-attachments/assets/32e4ecfb-9ce2-4216-857f-421d583c4b9f" />
- 닉네임을 받아와 User 테이블과 Schedule 테이블을 조인해 해당 닉네임의 사용자가 생성한 일정 검색
- 실행 후
-   <img width="681" height="53" alt="2번 실행 후" src="https://github.com/user-attachments/assets/c283963c-6d8a-42f6-bece-66b2ada77cf1" />

</details>


<details>

  <summary>일정 수정</summary>

- 일정 삭제
  - 코드
    - <img width="568" height="675" alt="3번 코드-2" src="https://github.com/user-attachments/assets/92ab9efb-dcb0-4fce-9d18-6bb38dda6be8" />
  - shcedule_id로 해당 일정 삭제
  - 실행 후
    - <img width="984" height="64" alt="3번 코드-2 결과" src="https://github.com/user-attachments/assets/29c38e1b-14cb-46d4-b954-fd31d64b9a6a" />
- 날짜 별 상세 일정 변경
  - 코드
    -  <img width="547" height="164" alt="3번 코드-3" src="https://github.com/user-attachments/assets/9ac635f4-0ec9-4bd9-9404-930f7d3ad5f1" />
  - 일정에서 날짜의 변경이 있을 시 상세 일정의 내용 변경
  - 실행 후
    - <img width="861" height="25" alt="3번 코드-3 결과" src="https://github.com/user-attachments/assets/fc80ab39-b3c5-498a-a43c-f5ef9bcb6ffb" />
- 일정 변경
  - 코드
    - <img width="238" height="64" alt="3번 코드-4" src="https://github.com/user-attachments/assets/cf714123-613b-4ed6-b22e-2e5aac9e240a" />
  - 일정의 변경사항을 반영
  - 실행 후
    - <img width="1033" height="54" alt="3번 코드-4 결과" src="https://github.com/user-attachments/assets/8f961b25-7237-4120-b31e-33be4af623d6" />

</details>

<details>

<summary>카테고리별 정렬</summary>

- 코드
  - <img width="632" height="561" alt="4번 코드" src="https://github.com/user-attachments/assets/c344c330-7967-4c92-b4b3-b2b98fccb612" />
- concept과 category의 값에 따라 정렬 후 출력
- 실행 후
  - <img width="1135" height="185" alt="4번 실행 후" src="https://github.com/user-attachments/assets/12d05560-5a67-4013-b18c-0d76ddd2b85d" />

</details>


<details>

<summary>친구 추가</summary>

- 코드
  - <img width="393" height="220" alt="5번 코드" src="https://github.com/user-attachments/assets/b61b3a98-0f6a-4416-b070-736a72174d6b" />
- 친구 추가 시 친구 요청의 상태 변경으로 친구 추가 기능 수행
- 실행 전
  - <img width="450" height="82" alt="5번 실행 전" src="https://github.com/user-attachments/assets/4d62792a-b105-4448-b175-b2d21ca44a86" />
- 실행 후
  - <img width="452" height="82" alt="5번 실행 후" src="https://github.com/user-attachments/assets/02bace3c-4cd7-4ec3-87ac-68f4f8fd5144" />

</details>


<details>

<summary>장소 데이터 카테고리별 출력</summary>

- 장소 데이터 카테고리별 출력
- 코드
  - <img width="553" height="100" alt="6번 코드" src="https://github.com/user-attachments/assets/81bb9553-8d8a-4e65-8f2e-39ccc2ecd2a8" />
- 카테고리 별로 장소 데이터를 정렬 후 출력
- 실행 후
  - <img width="1132" height="297" alt="6번 실행 후" src="https://github.com/user-attachments/assets/8ea950c8-fb7e-4702-b50f-a78d6f3a9850" />
  
</details>



### 김세현
<details> <summary><code>ChangeName</code> procedure 이름 변경</summary>

### 이름 변경
<details> <summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS ChangeName //
CREATE PROCEDURE ChangeName(
  IN p_user_id BIGINT,
  IN p_new_name VARCHAR(10)
)
BEGIN
  DECLARE v_old_name VARCHAR(10);

  -- 1) 형식 검증
  IF p_new_name IS NULL OR NOT (p_new_name REGEXP '^[가-힣A-Za-z]{1,10}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이름은 한글/영문 1~10자, 공백·숫자·특수문자 불가';
  END IF;

  -- 2) 사용자 존재 + 동일값 방지
  SELECT `name` INTO v_old_name FROM `User` WHERE user_id = p_user_id;
  IF v_old_name IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='사용자를 찾을 수 없습니다.';
  END IF;
  IF v_old_name = p_new_name THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='기존 이름과 동일합니다.';
  END IF;

  -- 3) 업데이트
  UPDATE `User` SET `name` = p_new_name WHERE user_id = p_user_id;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이름 변경에 실패했습니다.';
  END IF;

  SELECT '이름이 변경되었습니다.' AS message;
END //

DELIMITER ;
```

</details>

- 변경 전 데이터
<img width="1556" height="54" alt="image" src="https://github.com/user-attachments/assets/2ed18bbd-ee7b-4749-babe-01cc88ca7881" />


- 1번 사용자의 이름 변경 (변경 성공)
<img width="682" height="498" alt="image" src="https://github.com/user-attachments/assets/5233ac39-9514-47a5-a553-5949d1bfa586" />


- 변경 후 데이터
<img width="1578" height="212" alt="image" src="https://github.com/user-attachments/assets/3ca337ad-d324-43f4-be8e-4708359f5e2a" />

- 이름 형식 오류
<img width="1744" height="516" alt="image" src="https://github.com/user-attachments/assets/e596093c-9d23-4bf1-87cb-48408a3a11e5" />

- 존재하지 않는 사용자
<img width="1752" height="610" alt="image" src="https://github.com/user-attachments/assets/21ef60e9-01d4-46f3-a65b-50444763243b" />

</details>

<details> <summary><code>ChangeNickname</code> procedure 닉네임 변경</summary> 

### 닉네임 변경 
<details> <summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS ChangeNickname //
CREATE PROCEDURE ChangeNickname(
  IN p_user_id BIGINT,
  IN p_new_nickname VARCHAR(15)
)
BEGIN
  DECLARE v_old_nickname VARCHAR(15);

  -- 1) 형식 검증
  IF p_new_nickname IS NULL OR NOT (p_new_nickname REGEXP '^[가-힣]{2,10}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='닉네임은 한글 2~10자여야 합니다.';
  END IF;

  -- 2) 사용자 존재 + 동일값 방지
  SELECT `nickname` INTO v_old_nickname FROM `User` WHERE user_id = p_user_id COLLATE utf8mb4_general_ci;
  IF v_old_nickname IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='사용자를 찾을 수 없습니다.';
  END IF;
  IF v_old_nickname = p_new_nickname THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='기존 닉네임과 동일합니다.';
  END IF;

  -- 3) 중복 검사 (본인 제외)
  IF EXISTS (
      SELECT 1 FROM `User`
      WHERE `nickname` = p_new_nickname COLLATE utf8mb4_general_ci
        AND user_id <> p_user_id COLLATE utf8mb4_general_ci
     ) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이미 사용 중인 닉네임입니다.';
  END IF;

  -- 4) 업데이트
  UPDATE `User` SET `nickname` = p_new_nickname COLLATE utf8mb4_general_ci WHERE user_id = p_user_id COLLATE utf8mb4_general_ci;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='닉네임 변경에 실패했습니다.';
  END IF;

  SELECT '닉네임이 변경되었습니다.' AS message;
END //

DELIMITER ;
```

</details>

- 변경 전 데이터
<img width="898" height="320" alt="image" src="https://github.com/user-attachments/assets/50521378-7984-4e33-9e9f-5e0866c01112" />


### 23번 사용자 닉네임 변경 (변경 성공)

- 변경 후 데이터
<img width="936" height="450" alt="image" src="https://github.com/user-attachments/assets/1b145a94-f98d-4594-8a85-d603b4e1f63d" />


</details>

<details> <summary><code>DeleteSchedule</code> procedure 일정 삭제</summary> 

### 일정 삭제 
<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS DeleteSchedule //
CREATE PROCEDURE DeleteSchedule(
  IN p_user_id BIGINT,
  IN p_schedule_id BIGINT
)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'DeleteScheduleByOwner failed: DB exception occurred.';
  END;

  START TRANSACTION;

  -- 존재하는 스케줄인지 확인
  IF NOT EXISTS (
    SELECT 1
    FROM `Schedule`
    WHERE schedule_id = p_schedule_id
      AND user_id     = p_user_id
  ) THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '스케줄을 찾을 수 없습니다.';
  END IF;

  DELETE FROM `Todo_Schedule` WHERE schedule_id = p_schedule_id;
  DELETE FROM `Schedule`       WHERE schedule_id = p_schedule_id;

  COMMIT;
END //

DELIMITER ;
```

</details>

- 변경 전 데이터
<img width="1542" height="497" alt="image" src="https://github.com/user-attachments/assets/45395d4b-f1bf-4420-bdc7-8b0f6a71391e" />


- 일정 삭제 성공
<img width="1808" height="740" alt="image" src="https://github.com/user-attachments/assets/8742096d-0e47-498e-98ce-da5a74ad4694" />


- 일정 삭제 성공 시 세부 일정도 함께 삭제
<img width="1730" height="1064" alt="image" src="https://github.com/user-attachments/assets/64d0ca9c-a523-45e4-9e45-dd51a97cb466" />


- 일정 삭제 실패 (존재하지 않는 일정)
<img width="746" height="496" alt="image" src="https://github.com/user-attachments/assets/f33f76f0-e1f6-4648-b79c-0476a98f525e" />


- 일정 삭제 실패 (아이디 오류)
<img width="1400" height="546" alt="image" src="https://github.com/user-attachments/assets/48b408c2-a026-49d2-b33d-e43fa0780d9f" />


</details>

<details> <summary><code>DeleteTodo</code> procedure 세부 일정 삭제</summary>

### 세부 일정 삭제
<details> <summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS DeleteTodo //
CREATE PROCEDURE DeleteTodo(
  IN p_user_id     BIGINT,
  IN p_schedule_id BIGINT,
  IN p_todo_id     BIGINT
)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'DeleteTodo failed: DB exception occurred.';
  END;

  START TRANSACTION;

  -- 이 todo가 존재하고, 해당 스케줄의 생성자가 p_user_id 인지 확인
  IF NOT EXISTS (
    SELECT 1
    FROM `Todo_Schedule` t
    JOIN `Schedule` s ON s.`schedule_id` = t.`schedule_id`
    WHERE t.`todo_id`     = p_todo_id
      AND t.`schedule_id` = p_schedule_id
      AND s.`user_id`     = p_user_id
    FOR UPDATE
  ) THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Forbidden or not found: todo does not belong to this user.';
  END IF;

  DELETE FROM `Todo_Schedule`
  WHERE `todo_id` = p_todo_id
    AND `schedule_id` = p_schedule_id;

  COMMIT;
END //

DELIMITER ;
```

</details>

- 변경 전 데이터
<img width="1730" height="1064" alt="image" src="https://github.com/user-attachments/assets/bad85da0-cc58-423d-a66e-53fc50b11f88" />

- 세부 일정 삭제 성공
<img width="1686" height="724" alt="image" src="https://github.com/user-attachments/assets/4122750b-414f-44ac-985f-c77d1dc1558e" />


- 삭제 실패 (존재하지 않는 세부 일정)
<img width="970" height="576" alt="image" src="https://github.com/user-attachments/assets/be4688b6-126c-4e08-b9d9-d9da7726c333" />

</details>

<details> <summary><code>FindLogIn</code> procedure 아이디 찾기</summary> 

### 아이디 찾기

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS FindLoginId //
CREATE PROCEDURE FindLoginId(
  IN p_name     VARCHAR(10),
  IN p_email    VARCHAR(30),
  IN p_password VARCHAR(255)   -- DB에 저장된 형식(해시/평문) 그대로 전달
)
BEGIN
  DECLARE v_login_id VARCHAR(15);

  -- 대소문자까지 모두 정확히 일치하도록 BINARY 비교 사용
  SELECT `id`
    INTO v_login_id
  FROM `User`
  WHERE BINARY `name`     = BINARY p_name
    AND BINARY `email`    = BINARY p_email
    AND BINARY `password` = BINARY p_password
  LIMIT 1;

  IF v_login_id IS NULL THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = '일치하는 아이디가 없습니다.';
  END IF;

  SELECT v_login_id AS login_id;
END //

DELIMITER ;
```

</details>

* 아이디 찾기 성공
<img width="970" height="384" alt="image" src="https://github.com/user-attachments/assets/533fef8e-d86f-4f24-81b7-830fdd0b5f24" />

* 아이디 찾기 실패
<img width="1070" height="400" alt="image" src="https://github.com/user-attachments/assets/d8c07076-08ba-4b4f-82cb-d4d5f38d4c37" />


</details>

<details> <summary><code>FriendList</code> procedure 친구 목록 조회</summary> 

### 친구 목록 조회

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS FriendList //
CREATE PROCEDURE FriendList(
  IN p_login_id VARCHAR(15)
)
BEGIN
  DECLARE v_user_id BIGINT;

  -- 1) 로그인ID로 내 user_id 찾기 (collation 강제)
  SELECT u.user_id
    INTO v_user_id
  FROM `User` u
  WHERE u.`id` COLLATE utf8mb4_general_ci = p_login_id COLLATE utf8mb4_general_ci
  LIMIT 1;

  IF v_user_id IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='존재하지 않는 사용자입니다.';
  END IF;

  -- 2) 친구(승인) 목록의 상대 user_id2 → 상대의 로그인ID 반환
  SELECT
      u2.`id`       AS friend_login_id,
      u2.`nickname` AS friend_nickname,
      u2.`user_id`  AS friend_user_id
  FROM `Friend` f
  JOIN `User`  u2 ON u2.`user_id` = f.`user_id2`
  WHERE f.`user_id`  = v_user_id
    AND f.`status_id` = 2       -- 승인 상태값(네 환경에서 승인=2)
  ORDER BY u2.`id`;
END //

DELIMITER ;
```

</details>

* 친구 목록 조회 성공
<img width="1154" height="362" alt="image" src="https://github.com/user-attachments/assets/0c7af88b-8468-405e-8b40-0101693eb083" />


* 친구 목록 조회 실패 (존재하지 않는 사용자)
<img width="998" height="490" alt="image" src="https://github.com/user-attachments/assets/e9513e5b-c142-47f9-89dc-bf386b84ec9e" />

</details>

<details> <summary><code>GetPlaceDetail</code> procedure 특정 장소 상세 정보 조회</summary> 

### 특정 장소 데이터 상세 정보 조회

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS GetPlaceDetail //
CREATE PROCEDURE GetPlaceDetail(IN p_place_id BIGINT)
BEGIN
  SELECT
    p.place_id         AS `장소ID`,
    p.`name`           AS `이름`,
    c.`category`       AS `카테고리`,
    p.`big_location`   AS `대분류 위치`,
    p.`small_location` AS `소분류 위치`,
    p.`description`    AS `설명`,
    cn.`concept`       AS `컨셉`,
    COALESCE(rf.reference_count, 0) AS `참조횟수`
  FROM `Place` p
  JOIN `Place_Category` c ON p.category_id = c.category_id
  JOIN `Concept` cn       ON p.concept_id  = cn.concept_id
  LEFT JOIN (
    SELECT r.place_id, SUM(COALESCE(r.`count`, 0)) AS reference_count
    FROM `Referenced_Num` r
    GROUP BY r.place_id
  ) rf ON rf.place_id = p.place_id
  WHERE p.place_id = p_place_id;
END //

DELIMITER ;
```

</details>

* 참조횟수를 포함한 상세 정보 조회
<img width="2108" height="520" alt="image" src="https://github.com/user-attachments/assets/d1816af8-b7db-4816-bcd4-44e3b58cb639" />

</details>

<details> <summary><code>Login</code> procedure 로그인</summary> 

### 로그인

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS Login //
CREATE PROCEDURE Login(
  IN p_login_id  VARCHAR(15),
  IN p_password  VARCHAR(255)
)
BEGIN
  DECLARE v_user_id BIGINT;

  -- 1) 아이디/비밀번호 일치 검사
  SELECT u.user_id
    INTO v_user_id
  FROM `User` u
  WHERE u.`id` COLLATE utf8mb4_general_ci = p_login_id COLLATE utf8mb4_general_ci
    AND BINARY u.`password` = BINARY p_password     -- 비번은 대소문자까지 일치
  LIMIT 1;

  IF v_user_id IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='아이디/비밀번호 불일치';
  END IF;

  -- 2) 이메일 인증 필수
  IF NOT EXISTS (
      SELECT 1
      FROM Email_Verification ev
      WHERE ev.user_id = v_user_id
        AND ev.verified = 1
  ) THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = '이메일 미인증: 인증 후 로그인 가능합니다.';
  END IF;

  -- 3) 성공
  SELECT CONCAT(u.nickname, '님, 로그인이 완료되었습니다.') AS message
  FROM `User` u
  WHERE u.user_id = v_user_id;   -- 또는 v_user_id (네 프로시저 변수명에 맞춰서)

END //

DELIMITER ;
```

</details>

* 로그인 성공
<img width="694" height="370" alt="image" src="https://github.com/user-attachments/assets/635d1528-4c6f-40d7-a08d-ee0ce4d47f7d" />


* 로그인 실패(권한 없음)
<img width="616" height="392" alt="image" src="https://github.com/user-attachments/assets/58c02b6d-0f51-47d1-92c9-6c2f35c677c2" />


* 로그인 실패 (불일치)
<img width="642" height="396" alt="image" src="https://github.com/user-attachments/assets/c1b41e79-aa81-4a64-9774-97b4c16f239b" />


</details>

<details> <summary><code>RefByAgeAllPlace</code> procedure 참조횟수기반 정렬 전체 장소</summary> 

### 참조 횟수 기반 정렬 - 전체장소

<details>
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS RefByAgeAllPlace //
CREATE PROCEDURE RefByAgeAllPlace(
    IN p_age_from INT,
    IN p_age_to   INT
)
BEGIN
    -- from/to 뒤바뀌면 보정
    IF p_age_from > p_age_to THEN
        SET @t = p_age_from; 
        SET p_age_from = p_age_to; 
        SET p_age_to = @t;
    END IF;

    SELECT
        p.*,  -- 장소의 모든 컬럼
        COALESCE(rc.ref_count, 0) AS ref_count
    FROM `Place` p
    LEFT JOIN (
        SELECT
            r.place_id,
            SUM(r.`count`) AS ref_count
        FROM `Referenced_Num` r
        JOIN `Age` a ON a.age_id = r.age_id
        WHERE a.age BETWEEN p_age_from AND p_age_to
        GROUP BY r.place_id
    ) rc ON rc.place_id = p.place_id
    ORDER BY ref_count DESC, p.place_id;
END //

DELIMITER ;
```

</details>

* 전연령 참조 횟수 기반 정렬
<img width="2340" height="704" alt="image" src="https://github.com/user-attachments/assets/598b3fd4-177f-4e42-8695-7692503690ae" />


* 10·20·30대 참조 횟수 기반 정렬
<img width="2288" height="672" alt="image" src="https://github.com/user-attachments/assets/47c1e4c2-26b7-4491-a7f1-a4a0249440f9" />


</details>

<details> <summary><code>RefByAgeCategory</code> procedure 참조횟수기반 정렬 카테고리별 장소</summary> 

### 참조 횟수 기반 정렬 - 특정 카테고리

<details>
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS RefByAgeCategory //
CREATE PROCEDURE RefByAgeCategory(
    IN p_age_from    INT,
    IN p_age_to      INT,
    IN p_category_id INT
)
BEGIN
    IF p_age_from > p_age_to THEN
        SET @t = p_age_from; 
        SET p_age_from = p_age_to; 
        SET p_age_to = @t;
    END IF;

    SELECT
        p.*,
        COALESCE(rc.ref_count, 0) AS ref_count
    FROM `Place` p
    LEFT JOIN (
        SELECT
            r.place_id,
            SUM(r.`count`) AS ref_count
        FROM `Referenced_Num` r
        JOIN `Age` a ON a.age_id = r.age_id
        WHERE a.age BETWEEN p_age_from AND p_age_to
        GROUP BY r.place_id
    ) rc ON rc.place_id = p.place_id
    WHERE p.category_id = p_category_id
    ORDER BY ref_count DESC, p.place_id;
END //

DELIMITER ;
```

</details>

* 1번(숙소) 카테고리 참조 횟수 기반 정렬 (전연령)
<img width="2320" height="636" alt="image" src="https://github.com/user-attachments/assets/9343ce12-db33-453a-91a6-31dcf195b946" />


</details>

<details> <summary><code>RefByAgeConcept</code> procedure 참조횟수기반 정렬 컨셉별 장소</summary>

### 참조 횟수 기반 정렬 - 특정 컨셉

<details>
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS RefByAgeConcept //
CREATE PROCEDURE RefByAgeConcept(
    IN p_age_from   INT,
    IN p_age_to     INT,
    IN p_concept_id INT
)
BEGIN
    IF p_age_from > p_age_to THEN
        SET @t = p_age_from; 
        SET p_age_from = p_age_to; 
        SET p_age_to = @t;
    END IF;

    SELECT
        p.*,
        COALESCE(rc.ref_count, 0) AS ref_count
    FROM `Place` p
    LEFT JOIN (
        SELECT
            r.place_id,
            SUM(r.`count`) AS ref_count
        FROM `Referenced_Num` r
        JOIN `Age` a ON a.age_id = r.age_id
        WHERE a.age BETWEEN p_age_from AND p_age_to
        GROUP BY r.place_id
    ) rc ON rc.place_id = p.place_id
    JOIN `Place_Category` pc ON pc.category_id = p.category_id
    WHERE p.concept_id = p_concept_id
    ORDER BY ref_count DESC, p.place_id;
END //

DELIMITER ;
```

</details>

* 1번 컨셉(가족) 참조 횟수 기반 정렬 (전연령)
<img width="2322" height="672" alt="image" src="https://github.com/user-attachments/assets/23fe76a6-d2be-401b-8fef-ca05e077037e" />


</details>

  <details> <summary><code>ResetPassword</code> procedure 비밀번호 재설정</summary>

### 비밀번호 재설정

<details>
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS ResetPassword //
CREATE PROCEDURE ResetPassword(
  IN p_name         VARCHAR(10),
  IN p_login_id     VARCHAR(15),   -- User.id
  IN p_email        VARCHAR(30),
  IN p_birth6       CHAR(6),       -- "YYMMDD" (예: 010101)
  IN p_new_password VARCHAR(255)   -- 해시/평문: DB 저장 형태에 맞게
)
BEGIN
  DECLARE v_user_id BIGINT;
  DECLARE v_birth   DATE;

  -- (선택) 새 비밀번호 형식 검사: 8~15, 영문/숫자/특수 각각 1+ 포함
  IF NOT (CHAR_LENGTH(p_new_password) BETWEEN 8 AND 15) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호는 8~15자여야 합니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '^[A-Za-z0-9!@#$%^&*()_+=-]{8,15}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 허용되지 않은 문자가 있습니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '[A-Za-z]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 영문이 1자 이상 포함되어야 합니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '[0-9]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 숫자가 1자 이상 포함되어야 합니다.'; 
  END IF;
  IF NOT (p_new_password REGEXP '[!@#$%^&*()_+=-]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 특수문자(!@#$%^&*()_+=-) 1자 이상 포함되어야 합니다.'; 
  END IF;

  -- YYMMDD -> DATE (00~24는 20xx, 그 외는 19xx)
  SET v_birth = STR_TO_DATE(p_birth6, '%y%m%d');
  IF CAST(SUBSTR(p_birth6,1,2) AS UNSIGNED) <= 24 THEN
    SET v_birth = DATE_ADD(v_birth, INTERVAL 100 YEAR);
  END IF;

  -- 정확 일치(대소문자 구분 위해 BINARY 사용)
  SELECT user_id
    INTO v_user_id
  FROM `User`
  WHERE BINARY `name`  = BINARY p_name
    AND BINARY `id`    = BINARY p_login_id
    AND BINARY `email` = BINARY p_email
    AND `birthdate`    = v_birth
  LIMIT 1;

  IF v_user_id IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='일치하는 정보가 없습니다.';
  END IF;

  UPDATE `User`
  SET `password` = p_new_password
  WHERE `user_id` = v_user_id;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호 변경에 실패했습니다.';
  END IF;

  -- 성공 메시지(원치 않으면 이 SELECT는 지워도 됨)
  SELECT '비밀번호가 변경되었습니다.' AS message, v_user_id AS user_id;
END //

DELIMITER ;
```

</details>

* 변경 전 데이터
<img width="1616" height="318" alt="image" src="https://github.com/user-attachments/assets/35119801-af20-42c9-a43a-e72b52b14b6f" />


* 비밀번호 재설정 성공
<img width="1304" height="472" alt="image" src="https://github.com/user-attachments/assets/931b77d7-2337-4997-b71f-8b723ebefef5" />


* 변경 후 데이터
<img width="1570" height="194" alt="image" src="https://github.com/user-attachments/assets/885c265d-34a8-43c2-b9be-9a18d41c069c" />


* 비밀번호 재설정 실패 (불일치)
<img width="1332" height="484" alt="image" src="https://github.com/user-attachments/assets/94598f7a-c9ad-479d-b1ff-e0afd0e812d8" />


* 비밀번호 재설정 실패 (형식오류)
<img width="1350" height="426" alt="image" src="https://github.com/user-attachments/assets/374ab21f-b04e-4ae7-89d0-39fc9854fa65" />


</details>

<details> <summary><code>SignUp</code> procedure 회원가입</summary> 

### 회원가입

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS SignUp //
CREATE PROCEDURE SignUp(
  IN p_login_id   VARCHAR(15),
  IN p_password   VARCHAR(255),
  IN p_email      VARCHAR(30),
  IN p_name       VARCHAR(10),
  IN p_nickname   VARCHAR(15),
  IN p_birth6     CHAR(6),
  IN p_gender_in  VARCHAR(10)
)
BEGIN
  DECLARE v_birth   DATE;
  DECLARE v_gender  VARCHAR(10);
  DECLARE v_user_id BIGINT;
  DECLARE v_code    CHAR(6);

  /* 필수값 체크 */
  IF p_login_id IS NULL OR p_password IS NULL OR p_email IS NULL
     OR p_name IS NULL OR p_nickname IS NULL OR p_birth6 IS NULL OR p_gender_in IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='필수 입력 누락';
  END IF;

  /* 아이디/비번/이메일/닉네임 형식 체크 (생략 없이 기존 그대로) */
  IF NOT (p_login_id REGEXP '^[a-z0-9]{5,10}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='아이디는 소문자+숫자 5~10자';
  END IF;
  IF NOT (CHAR_LENGTH(p_password) BETWEEN 8 AND 15) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호는 8~15자';
  END IF;
  IF NOT (p_password REGEXP '^[A-Za-z0-9!@#$%^&*()_+=-]{8,15}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 허용되지 않은 문자가 포함됨';
  END IF;
  IF NOT (p_password REGEXP '[A-Za-z]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 영문 1자 이상 포함';
  END IF;
  IF NOT (p_password REGEXP '[0-9]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 숫자 1자 이상 포함';
  END IF;
  IF NOT (p_password REGEXP '[!@#$%^&*()_+=-]') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='비밀번호에 특수문자 1자 이상 포함';
  END IF;
  IF NOT (p_email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이메일 형식이 올바르지 않음';
  END IF;
  IF NOT (p_nickname REGEXP '^[가-힣]{2,10}$') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='닉네임은 한글 2~10자';
  END IF;

  /* 중복 검사(콜레이션 강제) */
  IF EXISTS (SELECT 1 FROM `User` WHERE `id`       COLLATE utf8mb4_general_ci = p_login_id  COLLATE utf8mb4_general_ci) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이미 사용 중인 아이디';
  END IF;
  IF EXISTS (SELECT 1 FROM `User` WHERE `email`    COLLATE utf8mb4_general_ci = p_email     COLLATE utf8mb4_general_ci) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이미 사용 중인 이메일';
  END IF;
  IF EXISTS (SELECT 1 FROM `User` WHERE `nickname` COLLATE utf8mb4_general_ci = p_nickname  COLLATE utf8mb4_general_ci) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='이미 사용 중인 닉네임';
  END IF;

  /* 생년월일/성별 */
  SET v_birth = STR_TO_DATE(p_birth6, '%y%m%d');
  IF CAST(SUBSTR(p_birth6,1,2) AS UNSIGNED) <= 24 THEN
    SET v_birth = DATE_ADD(v_birth, INTERVAL 100 YEAR);
  END IF;
  IF p_gender_in NOT IN ('남성','여성') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='성별은 남성 또는 여성만 입력';
  END IF;
  SET v_gender = p_gender_in;

  START TRANSACTION;

  /* 사용자 생성 */
  INSERT INTO `User`
    (`id`,`password`,`email`,`name`,`nickname`,`birthdate`,`gender`,`authority`)
  VALUES
    (p_login_id, p_password, p_email, p_name, p_nickname, v_birth, v_gender, 0);

  SET v_user_id = LAST_INSERT_ID();

  /* ✅ 인증코드 발급 + 저장(만료 없음) */
  SET v_code = LPAD(FLOOR(RAND()*1000000), 6, '0');  -- 000000~999999
  INSERT INTO Email_Verification(user_id, email, code, verified)
  VALUES (v_user_id, p_email, v_code, 0);

  COMMIT;

  /* 가입결과 + 인증코드 함께 반환 */
  SELECT v_user_id AS new_user_id, v_code AS email_verify_code;
END //

DELIMITER ;
```

</details>

* 회원가입 성공 → 이메일 인증에 필요한 아이디와 인증번호 발급
<img width="960" height="774" alt="image" src="https://github.com/user-attachments/assets/08adb0bc-5409-4bfd-b624-1a6b155707c9" />

* 회원가입 실패 (중복 오류)
<img width="786" height="640" alt="image" src="https://github.com/user-attachments/assets/5b818b0b-cf97-4e29-889b-130658b50810" />
<img width="818" height="754" alt="image" src="https://github.com/user-attachments/assets/f013f8cd-f10e-498d-a6a6-1fa5c7bc1dfa" />
<img width="804" height="616" alt="image" src="https://github.com/user-attachments/assets/d7d7d0c0-700f-4f43-88b9-d48177670264" />

* 회원가입 실패 (형식 오류)
<img width="828" height="728" alt="image" src="https://github.com/user-attachments/assets/80a1b568-45bb-46bb-b0b2-4ff348bc1530" />
<img width="792" height="684" alt="image" src="https://github.com/user-attachments/assets/63693948-0ef5-4f5c-b3cf-7f21fb038fe9" />
<img width="810" height="718" alt="image" src="https://github.com/user-attachments/assets/799a2343-5aec-4ed8-8d0c-2f92cefd2664" />
<img width="820" height="692" alt="image" src="https://github.com/user-attachments/assets/117e25f2-0d1f-48e4-a449-465a998a1c07" />

</details>

  <details> <summary><code>UserRequestModify</code> procedure 사용자 요청 장소 수정</summary> 

### 사용자 요청 데이터 수정

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS UserRequestModify //
CREATE PROCEDURE UserRequestModify(
    IN p_request_id BIGINT
)
BEGIN
    UPDATE `Place` p
    JOIN `User_Request` r ON r.`place_id` = p.`place_id`
    SET
        p.`name`           = r.`name`,
        p.`big_location`   = r.`big_location`,
        p.`small_location` = r.`small_location`,
        p.`description`    = r.`description`,
        p.`concept_id`     = r.`concept_id`,
        p.`category_id`    = r.`category_id`
    WHERE r.`request_id` = p_request_id COLLATE utf8mb4_general_ci
      AND r.`status_id`  = 1         -- 대기
      AND r.`request`    = '수정';      -- 수정 

    
    UPDATE `User_Request`
    SET `status_id` = 2             -- 승인
    WHERE `request_id` = p_request_id COLLATE utf8mb4_general_ci;

    -- 선택: 간단한 피드백
    SELECT ROW_COUNT() AS changed_requests; -- 0이면 승인 변경 안 됨(조건 불일치/이미 처리됨)
END //

DELIMITER ;
```

</details>

* 1번 데이터의 이름 변경 수락 후 수정
<img width="2164" height="530" alt="image" src="https://github.com/user-attachments/assets/bf5fb205-c04d-4d6c-8427-ba7a91b50b9e" />

* status를 반영으로 변경
<img width="1594" height="322" alt="image" src="https://github.com/user-attachments/assets/7cc2da01-bf0e-4a4f-9f53-3a6999a12069" />


</details>

<details> <summary><code>VerifyEmailCode</code> procedure 이메일 인증</summary> 

### 이메일 인증

<details> 
<summary>코드</summary>

```sql
DELIMITER //

DROP PROCEDURE IF EXISTS VerifyEmailCode //
CREATE PROCEDURE VerifyEmailCode(
  IN p_user_id BIGINT,
  IN p_code    CHAR(6)
)
BEGIN
  UPDATE Email_Verification
  SET verified = 1
  WHERE user_id = p_user_id
    AND code    COLLATE utf8mb4_general_ci = p_code COLLATE utf8mb4_general_ci
    AND verified = 0
  ORDER BY created_at DESC
  LIMIT 1;

  IF ROW_COUNT() = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='코드 불일치 또는 이미 인증됨';
  END IF;

  SELECT '이메일 인증 완료' AS message;
END //

DELIMITER ;
```

</details>

* 이메일 인증 성공
<img width="652" height="388" alt="image" src="https://github.com/user-attachments/assets/659bc046-c341-4043-95c1-f13590715562" />


* 이메일 인증 실패 (불일치)
<img width="624" height="364" alt="image" src="https://github.com/user-attachments/assets/507f7f52-e837-473a-9296-b3ce8aac8c61" />


</details>

### 김성은

<details><summary>add_request (사용자 요청 데이터 추가)
</summary>
🖥️ 코드

``` sql
-- 사용자 요청 데이터 추가

DELIMITER //

CREATE PROCEDURE addRequest(IN p_request_id BIGINT)
BEGIN
    DECLARE v_place_id BIGINT DEFAULT 0;

	-- 요청 상태를 '수락'으로 변경
	UPDATE user_request
	SET status_id = 2
	WHERE request_id = p_request_id;
	
	-- 장소 데이터에 정보 추가
	INSERT INTO place (name, category_id, big_location, small_location, description, concept_id)
	SELECT name, category_id, big_location, small_location, description, concept_id
	FROM user_request
	WHERE request_id = p_request_id;
	
	-- 새 place_id 확보
	SET v_place_id = LAST_INSERT_ID();
	
	-- Referenced_Num 테이블에 항목 추가
	INSERT INTO Referenced_Num (place_id, age_id, count)
    SELECT v_place_id, age_id, 0
    FROM Age;
END //

DELIMITER ;

CALL addRequest(1);
```
    
1️⃣요청 상태를 수락으로 변경
  <img width="1711" height="219" alt="image" src="https://github.com/user-attachments/assets/0381b6fb-b97a-4093-961a-5ff7158ac15c" />
  <img width="1708" height="222" alt="image" src="https://github.com/user-attachments/assets/f399829c-8c05-40f3-8087-2eedafcf48fe" />

2️⃣장소 데이터에 정보 추가
  <img width="1028" height="328" alt="image" src="https://github.com/user-attachments/assets/115eaeef-c02f-43db-af2d-774224424ec2" />
  <img width="1021" height="245" alt="image" src="https://github.com/user-attachments/assets/28c402dc-41d9-48ce-b936-1f7b1a232dd0" />

3️⃣ Referenced_Num 테이블에 항목 추가 (count는 0으로 초기화)

  <img width="382" height="233" alt="image" src="https://github.com/user-attachments/assets/1ee7c047-ad06-4139-9d12-ce25f026d891" />
  <img width="376" height="192" alt="image" src="https://github.com/user-attachments/assets/789752cb-f6b4-46a1-b1f1-12244ff60c0f" />

</details>


<details><summary>create_meeting (모임 생성)
</summary>
🖥️ 코드

``` sql
-- 모임 생성

DELIMITER //

CREATE PROCEDURE createMeeting(
	IN p_name VARCHAR(50),
	IN p_creator BIGINT)
BEGIN
    DECLARE v_group_id BIGINT DEFAULT 0;

	-- 모임 생성
    INSERT INTO `group`(name, creator)
    VALUES (p_name, p_creator);
	
	SET v_group_id = LAST_INSERT_ID();
	
	-- 모임 생성자를 자동 멤버로 추가
	INSERT INTO Group_Friend (group_id, user_id, status_id, role)
    VALUES (v_group_id, p_creator, 2, 'owner'); -- 상태식별번호는 '반영'
END //

DELIMITER ;

CALL createMeeting('새로운 모임', 1);
```
1️⃣ 생성된 모임 추가

  <img width="428" height="252" alt="image" src="https://github.com/user-attachments/assets/5a86e10e-83ac-4060-ad38-d9a65c5d7138" />
  <img width="425" height="259" alt="image" src="https://github.com/user-attachments/assets/022e7039-d5bd-4189-a105-6ecf9b0984c5" />

2️⃣ 모임 생성자를 자동 멤버로 추가

  <img width="507" height="159" alt="image" src="https://github.com/user-attachments/assets/a9a27ae1-f555-4a72-9551-3bd3cc6a9fb1" />
  <img width="505" height="170" alt="image" src="https://github.com/user-attachments/assets/75372d37-dfc9-4b2a-93ae-d4d67ef9046d" />

</details>

<details><summary>delete_freind (친구 삭제)
</summary>
🖥️ 코드

``` sql
-- 친구 삭제

DELIMITER //

CREATE PROCEDURE deleteFriend(
	IN p_user_id BIGINT,
	IN p_friend_id BIGINT)
BEGIN
	-- 두 사람 사이의 친구관계 제거(양방향)
    DELETE FROM friend
    WHERE (user_id = p_user_id AND user_id2 = p_friend_id)
    OR (user_id = p_friend_id AND user_id2 = p_user_id);

	-- 두 사람이 같이 속한 모임 중
	-- 모임의 생성자가 p_user_id 인 경우: p_friend_id만 탈퇴
	-- 그 모임의 생성자가 p_friend_id 인 경우: p_user_id만 탈퇴
	-- 그 외 둘 다 생성자가 아닌 경우: 아무도 탈퇴하지 않음
	DELETE gf
    FROM group_friend AS gf
    JOIN `Group` AS g ON g.group_id = gf.group_id
    JOIN group_friend AS a ON a.group_id = g.group_id AND a.user_id = p_user_id
    JOIN group_friend AS b ON b.group_id = g.group_id AND b.user_id = p_friend_id
    WHERE g.creator IN (p_user_id, p_friend_id)
    AND gf.user_id = CASE
						WHEN g.creator = p_user_id   THEN p_friend_id
                     	WHEN g.creator = p_friend_id THEN p_user_id
                  	 END;
END //

DELIMITER ;

CALL deleteFriend(1, 2);
```
1️⃣ 두 사람 사이의 친구관계 제거

  <img width="408" height="226" alt="image" src="https://github.com/user-attachments/assets/1bb78b67-cc6b-48a5-b545-876a254fc0a5" />
  <img width="407" height="218" alt="image" src="https://github.com/user-attachments/assets/8eb4fe80-cfd2-4656-91ca-ad0ca72ab7aa" />

2️⃣ 두 사람이 같이 속한 모임에서 중 둘 중 한명이 생성자이면 모임에서 나머지 한 사람 제거

  <img width="433" height="243" alt="image" src="https://github.com/user-attachments/assets/dc5ee872-ad2d-4d3b-8b18-cf44640fd5f3" /> </br>
  <img width="504" height="261" alt="image" src="https://github.com/user-attachments/assets/58fc21b8-8fe6-47ee-a0f0-f8314be6236f" />
  <img width="503" height="243" alt="image" src="https://github.com/user-attachments/assets/8857c5af-9c49-4c83-95ad-ab4562d2a87e" />

</details>

<details><summary>delete_user (회원 탈퇴 시 정보 삭제)
</summary>
🖥️ 코드

``` sql
-- 회원 탈퇴 시 정보 삭제

set @delete_id = 7;

DELETE FROM user
WHERE user_id = @delete_id;
```
1️⃣ CASCADE를 사용하여 사용자와 관련된 모든 정보 삭제

  <img width="937" height="216" alt="image" src="https://github.com/user-attachments/assets/0e01b680-b05c-4c5a-b3df-473867d982e0" />
  <img width="725" height="219" alt="image" src="https://github.com/user-attachments/assets/fcfcc934-f4f5-4e8e-a106-3e6c72c4b024" />

</details>

<details><summary>get_schedule_detail (세부 일정 조회)
</summary>
🖥️ 코드

``` sql
-- 세부 일정 조회

set @schedule_id = 2;

SELECT t.`date`, t.start_time, p.name, t.memo
FROM todo_schedule t
LEFT JOIN place p ON p.place_id = t.place_id
WHERE t.schedule_id = @schedule_id
ORDER BY t.`date`, t.start_time;
```
1️⃣ 일정 아이디를 사용하여 해당 일정의 상세 일정 내용을 날짜, 일정 시작 시간 순으로 조회

  <img width="802" height="164" alt="image" src="https://github.com/user-attachments/assets/709b5f29-e9f7-4a3e-bf40-6a4c6844f960" />
  <img width="514" height="96" alt="image" src="https://github.com/user-attachments/assets/4476c98b-5677-43f8-9b0b-8cc17d621162" />

</details>

<details><summary>multi_sort (복합 정렬)
</summary>
🖥️ 코드

``` sql
-- 복합 정렬(카테고리 → 나이 → 참조횟수)

DELIMITER //

CREATE PROCEDURE multiSort(IN p_dir VARCHAR(4))  -- 'ASC' or 'DESC'
BEGIN
    SELECT
        p.name,
        pc.category AS category_name,
        a.age       AS top_age,
        COALESCE(rt.ref_total, 0) AS ref_total
    FROM Place p
    JOIN Place_Category pc
      ON pc.category_id = p.category_id
    LEFT JOIN (
        SELECT place_id, SUM(`count`) AS ref_total
        FROM Referenced_Num
        GROUP BY place_id
    ) rt ON rt.place_id = p.place_id
    LEFT JOIN (
        SELECT ac.place_id, MIN(ac.age_id) AS top_age_id
        FROM (
            SELECT place_id, age_id, SUM(`count`) AS cnt
            FROM Referenced_Num
            GROUP BY place_id, age_id
        ) ac
        JOIN (
            SELECT place_id, MAX(cnt) AS max_cnt
            FROM (
                SELECT place_id, age_id, SUM(`count`) AS cnt
                FROM Referenced_Num
                GROUP BY place_id, age_id
            ) t
            GROUP BY place_id
        ) m ON m.place_id = ac.place_id AND ac.cnt = m.max_cnt
        GROUP BY ac.place_id
    ) ta ON ta.place_id = p.place_id
    LEFT JOIN Age a
      ON a.age_id = ta.top_age_id
    ORDER BY
        CASE WHEN p_dir='ASC'  THEN pc.category END ASC,
        CASE WHEN p_dir='DESC' THEN pc.category END DESC,
        CASE WHEN p_dir='ASC'  THEN a.age END ASC,
        CASE WHEN p_dir='DESC' THEN a.age END DESC,
        CASE WHEN p_dir='ASC'  THEN rt.ref_total END ASC,
        CASE WHEN p_dir='DESC' THEN rt.ref_total END DESC;
END //

DELIMITER ;

CALL multiSort('ASC');
```
1️⃣ 카테고리 -> 나이-> 참조 수 순으로 정렬

  <img width="1017" height="217" alt="image" src="https://github.com/user-attachments/assets/11581aa4-34a3-4fc6-a764-7b993ea78c5c" />
  <img width="377" height="320" alt="image" src="https://github.com/user-attachments/assets/dffa8539-77bf-486b-ab12-708881ff9402" />
  </br> </br>
  - 장소별 카테고리, 가장 참조 수가 많은 나이, 장소 총 참조 횟수 보여줌
  <img width="561" height="607" alt="image" src="https://github.com/user-attachments/assets/e64dc453-28f9-4fe4-a2b8-dff1cc527b17" />

</details>

### 양승재
<details>
  
  <summary>장소 데이터 수정</summary>
  
```
DELIMITER //

CREATE PROCEDURE delete_place_proc(
    IN delete_place BIGINT,
    IN use_userid BIGINT
)
BEGIN
    DECLARE cnt INT;
    DECLARE auth INT;

    SELECT COUNT(*) INTO cnt
    FROM place
    WHERE place_id = delete_place;

    SELECT authority INTO auth
    FROM user
    WHERE user_id = use_userid;

    IF cnt = 0 THEN
        SELECT '존재하지 않는 장소입니다.' AS message;

    ELSEIF auth <> 1 THEN
        SELECT '삭제 권한이 없습니다.' AS message;

    ELSE
        DELETE FROM place
        WHERE place_id = delete_place;

        SELECT CONCAT('장소 ', delete_place, ' 가 삭제되었습니다.') AS message;

        delete from todo_schedule
        where place_id = delete_place;

    END IF;
END //

DELIMITER ;
```
    - 관리자가 데이터를 삭제할 때 사용
      
    - 실행 후
<img width="119" height="38" alt="삭제" src="https://github.com/user-attachments/assets/b6a73723-21fd-4bc5-a72e-b4962065816a" />


<img width="98" height="38" alt="삭제 3" src="https://github.com/user-attachments/assets/01f8ac0c-33f6-49c3-805f-193fcfba499c" />

</details>


<details>
  
  <summary>일정/상세일정 생성 및 일정조회</summary>

```
-- 일정생성
SET @start_date = '2025-10-15';
SET @end_date = '2026-10-15';
SET @user_id = 13;
SET @concept_id = 5;
SET @input_status = 1;
SET @travel_title = '전세계 크루즈여행';

INSERT INTO schedule 
(start_date, end_date, user_id, concept_id, some_column, status, travel_title)
VALUES 
(@start_date, @end_date, @user_id, @concept_id, NULL, @input_status, @travel_title);
```
실행 후

<img width="709" height="173" alt="일정 추가" src="https://github.com/user-attachments/assets/71ac0a7c-eb9d-48e7-a4ba-d9285c354c82" />


```
-- 나이로 정렬 후 정보 공개


DELIMITER //

CREATE PROCEDURE show_schedule(
    IN conceptid INT,
    IN input_user_id BIGINT
)
BEGIN
    DECLARE user_age INT;

    SELECT TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) 
    INTO user_age
    FROM user
    WHERE user_id = input_user_id;

    SELECT 
        ts.place_id,
        COUNT(ts.schedule_id) AS schedule_count
    FROM 
        todo_schedule ts
        JOIN schedule s ON ts.schedule_id = s.schedule_id
        JOIN user u ON s.user_id = u.user_id
    WHERE 
        FLOOR(TIMESTAMPDIFF(YEAR, u.birthdate, CURDATE()) / 10) 
        = FLOOR(user_age / 10)
    GROUP BY 
        ts.place_id
    ORDER BY 
        schedule_count DESC;

    IF conceptid = 1 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 1  
        LIMIT 50;

    ELSEIF conceptid = 2 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 2
        LIMIT 50;

    ELSEIF conceptid = 3 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 3
        LIMIT 50;

    ELSEIF conceptid = 4 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 4
        LIMIT 50;

    ELSEIF conceptid = 5 THEN
        SELECT name, big_location, small_location, description, place_id
        FROM place
        WHERE concept_id = 5
        LIMIT 10;
    END IF;
end //

DELIMITER ;

CALL show_schedule (1, 13);


DELIMITER //

CREATE PROCEDURE insert_todo_if_not_exists(
    IN input_schedule_id BIGINT,
    IN input_place_id BIGINT,
    IN input_date DATE,          -- 추가할 날짜 
    IN input_memo TEXT,          -- 메모
    IN input_start_time INT      -- 시작 시간
)
BEGIN
    DECLARE cnt INT DEFAULT 0;
    DECLARE place_exists INT DEFAULT 0;
    DECLARE sched_exists INT DEFAULT 0;

    SELECT COUNT(*) INTO place_exists FROM Place WHERE place_id = input_place_id;
    IF place_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid place_id: not found in Place';
    END IF;

    SELECT COUNT(*) INTO sched_exists FROM Schedule WHERE schedule_id = input_schedule_id;
    IF sched_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid schedule_id: not found in Schedule';
    END IF;

    
    SELECT COUNT(*) INTO cnt
    FROM Todo_Schedule
    WHERE place_id = input_place_id
      AND `date` = input_date;


    IF cnt = 0 THEN
        INSERT INTO Todo_Schedule (`date`, memo, schedule_id, place_id, start_time)
        VALUES (input_date, input_memo, input_schedule_id, input_place_id, input_start_time);
		
    UPDATE referenced_num rn
        JOIN schedule s  ON s.schedule_id = input_schedule_id
        JOIN user     u  ON u.user_id     = s.user_id
        SET rn.`count` = rn.`count` + 1
        WHERE rn.place_id = input_place_id
          AND rn.age_id = (TIMESTAMPDIFF(YEAR, u.birthdate, CURDATE()) DIV 10);		
    
    
        SELECT CONCAT('장소 ', input_place_id, ' 일정이 추가되었습니다.') AS message;
    ELSE
        SELECT '이미 해당 날짜에 해당 장소의 일정이 존재합니다.' AS message;
    END IF;
END //

DELIMITER ;
```

나이대별 참조횟수 기반 정렬 후 상세일정에 추가

실행 후

<img width="473" height="114" alt="참조기준 정렬" src="https://github.com/user-attachments/assets/1da617b8-8618-4dab-a255-f2c19002f01d" />

<img width="584" height="77" alt="상세일정 추가" src="https://github.com/user-attachments/assets/24b75817-6858-47b8-96c0-8836ba553221" />

</details>



<details>
  
  <summary>정보 조회</summary>

```
-- 자기 일정 조회

set @input_id =13;
select 
	* 
	from schedule
	where user_id = @input_id;

-- 관리자 정보 조회

SET @input_user_id = 2;
SET @search_user_id = 10;

SELECT *
FROM user
WHERE (
        SELECT authority
        FROM user
        WHERE user_id = @input_user_id
      ) = 1
  AND user_id = @search_user_id;
```

자신의 일정 조회/ 관리자의 회원 정보 조회

실행 후

<img width="685" height="14" alt="자기 일정 조회" src="https://github.com/user-attachments/assets/c74c320d-56d4-41cc-86df-4ac910170f5f" />

<img width="686" height="15" alt="관리자 회원정보조회" src="https://github.com/user-attachments/assets/f9de6883-5944-4a08-a3b9-09dab6e7e6cb" />

</details>



<details>
  
  <summary>모임 초대</summary>

```
INSERT INTO group_friend (group_id, user_id, status_id, role)
VALUES (1, 15, NULL, '총무');
```

모임에 유저 추가

실행 후

<img width="347" height="105" alt="모임초대" src="https://github.com/user-attachments/assets/22cf4f33-6f34-46e4-9d22-6f590473dfc7" />


</details>



### 정하경
<details>
<summary>관리자 장소 추가</summary>

📍  관리자 장소 추가 프로시저

```sql
DROP PROCEDURE IF EXISTS AddPlace;

DELIMITER // 

CREATE PROCEDURE AddPlace (
	IN a_name VARCHAR(20),
	IN a_category_id INT,
    IN a_big_location VARCHAR(100),
    IN a_small_location VARCHAR(50),
    IN a_description TEXT,
    IN a_concept_id INT
)
BEGIN
	DECLARE v_place_id BIGINT DEFAULT 0;

	INSERT INTO Place (name, category_id, big_location, small_location, description, concept_id)
	VALUES (a_name, a_category_id, a_big_location, a_small_location, a_description, a_concept_id);

	SET v_place_id = LAST_INSERT_ID();
	
    -- Referenced_Num 테이블에 항목 추가
    INSERT INTO Referenced_Num (place_id, age_id, count)
    SELECT v_place_id, age_id, 0
    FROM Age;
END //

DELIMITER ;
```
📍 관리자 장소 추가 전
<img width="1690" height="1281" alt="image" src="https://github.com/user-attachments/assets/d9d83041-8179-4574-82b5-d55354a73380" />


📍 관리자 장소 추가 후
<img width="1704" height="458" alt="image" src="https://github.com/user-attachments/assets/23764003-d123-4ddd-98bf-bd8d3ee6da6b" />


</details> 

<details>
<summary>사용자 요청 거절</summary>

📍 사용자 요청 거절 프로시저
```sql
DROP PROCEDURE IF EXISTS RejectUserRequest;

DELIMITER //

CREATE PROCEDURE RejectUserRequest (
    IN r_request_id BIGINT
)
BEGIN
    UPDATE User_Request
    SET status_id = 3  -- 3: 거절
    WHERE request_id = r_request_id;
END //

DELIMITER ;
```

📍 사용자 요청 거절 전
</br>
<img width="637" height="573" alt="image" src="https://github.com/user-attachments/assets/2cd0224f-f266-4a0e-9ece-bee0cb83f6bf" />

📍 사용자 요청 거절 후
<img width="664" height="605" alt="image" src="https://github.com/user-attachments/assets/ee7faed8-2d58-465a-a484-f7f4976b29e2" />



</details>

<details>
<summary>키워드 기반 일정 / 장소 검색</summary>

📍 키워드 기반 일정/장소 검색 프로시저
```sql
DROP PROCEDURE IF EXISTS SearchByKeyword;

DELIMITER //

CREATE PROCEDURE SearchByKeyword (
    IN keyword VARCHAR(50)
)
BEGIN
    -- 장소 검색
    SELECT 'PLACE' AS type,
           name AS title,
           description,
           big_location,
           small_location
    FROM Place
    WHERE name LIKE CONCAT('%', keyword, '%')
       OR description LIKE CONCAT('%', keyword, '%')
    
    UNION ALL
    
    -- 일정 검색
    SELECT 'SCHEDULE' AS type,
           s.title,
           t.memo AS description,
           p.big_location,
           p.small_location
    FROM Schedule s
    LEFT JOIN Todo_Schedule t ON s.schedule_id = t.schedule_id
    LEFT JOIN Place p ON t.place_id = p.place_id
    JOIN Concept c ON s.concept_id = c.concept_id
    WHERE t.memo LIKE CONCAT('%', keyword, '%')
       OR c.concept LIKE CONCAT('%', keyword, '%');
END //

DELIMITER ;
```

📍 조회 결과
<img width="1266" height="376" alt="image" src="https://github.com/user-attachments/assets/a4dea1d2-d8e3-459f-a86a-2a91403b4c7b" />



</details>

<details>
<summary>장소 이름 정렬</summary>

📍 장소 이름 정렬 조
```sql
SELECT p.name AS '장소',
       p.big_location AS '위치(시)',
       p.small_location AS '위치(읍/면/동)',
       p.description AS '설명',
       c.category AS '카테고리',
       IFNULL(SUM(n.count),0) AS '조회수'
  FROM Place p
  JOIN Place_category c ON p.category_id = c.category_id
  LEFT JOIN Referenced_Num n ON p.place_id = n.place_id
 GROUP BY p.place_id, p.name, c.category_id
 ORDER BY p.name ASC;
```

📍 장소 이름 정렬 전
<img width="1779" height="1311" alt="image" src="https://github.com/user-attachments/assets/4cb6dcb6-16f7-4e9b-9d5d-cd85d2e510f8" />


📍 장소 이름 정렬 후
<img width="1735" height="952" alt="image" src="https://github.com/user-attachments/assets/d354951e-498a-4584-9964-62a1b39289dd" />


</details>

<details>
<summary>모임 이름 목록 조회</summary>

📍 모임 이름 목록 조회 프로시저
```sql
DROP PROCEDURE IF EXISTS GetGroupList;

DELIMITER //

CREATE PROCEDURE GetGroupList (
	IN g_creator_nickname VARCHAR(15)
)
BEGIN
	SELECT g.name AS '모임이름',
		   u.nickname AS '생성자',
		   gf.role AS '역할',
		   nu.nickname AS '멤버'
	FROM `Group` g
	JOIN `User` u ON g.creator = u.user_id
	LEFT JOIN Group_Friend gf ON g.group_id = gf.group_id
	LEFT JOIN `User` nu ON gf.user_id = nu.user_id
	WHERE u.nickname = g_creator_nickname
	ORDER BY g.name ASC, gf.role;
		
END //

DELIMITER ;
```

📍 모임 이름 목록 조회 결과
<img width="1069" height="353" alt="image" src="https://github.com/user-attachments/assets/6ddfe902-0958-43db-93ef-d2480b47c7d1" />


</details>

<details>
<summary>일정 공개 여부에 따른 일정 조회</summary>

📍 일정 공개 여부에 따른 일정 조회 프로시저
```sql
DROP PROCEDURE IF EXISTS GetAccessibleSchedules;

DELIMITER //

CREATE PROCEDURE GetAccessibleSchedules (
    IN p_user_id BIGINT
)
BEGIN
    SELECT u.user_id,
           s.schedule_id,
    	   s.title,
           s.start_date,
           s.end_date,
           u.nickname AS '작성자닉네임',
           c.concept AS '컨셉',
           t.date AS '날짜',
           t.memo AS '할일',
        	   p.big_location AS '위치(시)',
           p.small_location AS '위치(읍/면/동)',
           p.description AS '장소설명',
           CASE 
           	   WHEN s.status = 1 THEN '공개'
               ELSE '비공개'
           END AS '공개여부'
    FROM Schedule s
    JOIN `User` u ON s.user_id = u.user_id
    JOIN Concept c ON s.concept_id = c.concept_id
    LEFT JOIN Todo_Schedule t ON s.schedule_id = t.schedule_id
    LEFT JOIN Place p ON t.place_id = p.place_id
    WHERE s.status = TRUE          -- 공개 일정
       OR s.user_id = p_user_id    -- 본인이 작성한 일정
    ORDER BY u.user_id ASC, s.start_date ASC, t.start_time ASC;
END //

DELIMITER ;
```
📍 일정 공개 여부에 따른 일정 조회 결과
<img width="2362" height="868" alt="image" src="https://github.com/user-attachments/assets/a199b570-df91-4add-8687-4076dbaeaf8c" />


</details>

----

## 8. 서버
### Server Replication

<img width="761" height="370" alt="PNG 이미지" src="https://github.com/user-attachments/assets/62c69a0d-be48-4a13-adc1-325c712184bf" />

레플리케이션 이미지
MariaDB에서 사용 가능한 Replication 기능으로 서버를 master와 slave 서버로 나누어 비동기 복제 방식으로 데이터를 저장합니다.
이를 통해 실시간 데이터 백업이 가능합니다.
### 서버 구분
master 서버
- 데이터 변경에 대한 처리 담당
- 데이터 변경 발생 시 slave 서버로 전달
slave 서버
- master 서버로부터 전달받은 정보를 데이터베이스에 반영하고 조회 기능을 담당
<img width="922" height="879" alt="image" src="https://github.com/user-attachments/assets/12cb268e-6b2d-4826-b510-3bebcd7dc5ce" />

----

## 8. 회고
<table width="100%">
  <thead>
    <tr align="center">
      <th width="20%">이름</th>
      <th>내용</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center">김세현</td>
      <td style="padding:12px; line-height:1.7; text-align:left;">
        <p>요구사항 명세서부터 ERD까지 처음부터 차근차근 밟아보니, 기초가 단단하지 않으면 개발이 쉽게 흔들린다는 걸 몸으로 느꼈다.</p>
		<p>테이블 제약이나 트랜잭션 같은 기본을 먼저 잡아두니 구현도 한결 매끄러웠다. 무엇보다 팀원들과 여러 차례 논의와 검토를 거치며 생각을 다듬다 보니 방향이 또렷해졌고 그 과정이 결과로 자연스럽게 이어져 뿌듯했다.</p> 
		<p>다음 프로젝트에선 초반 설계와 합의를 더 꼼꼼하게 챙길 생각이다.</p>
      </td>
    </tr>
    <tr>
      <td align="center">김성은</td>
      <td style="padding:12px; line-height:1.7; text-align:left;">
        <p>이번 데이터베이스 프로젝트를 진행하면서 요구사항 명세서 작성부터 유스케이스 다이어그램 설계, ERD 모델링, 프로시저 제작, 그리고 마리아DB 기반의 master-slave 서버 연결까지 직접 다뤄보며 전반적인 DB 설계와 관리에 대한 이해도가 크게 향상되었습니다.</p>
        <p>혼자였다면 어려웠을 부분들도 팀원들과 역할을 나누고 협력하면서 훨씬 수월하게 해결할 수 있었고, 함께 의견을 나누며 서로 배우고 성장하는 과정이 즐거웠습니다.</p>
        <p>이번 프로젝트를 통해 협업의 가치와 데이터베이스 설계의 중요성을 느낄 수 있었습니다. </p>
      </td>
    </tr>
    <tr>
      <td align="center">정하경</td>
      <td style="padding:12px; line-height:1.7; text-align:left;">
        <p>이번 프로젝트에서는 팀원들과 함께 요구사항 명세서를 작성하고, 기능에 맞춰 테이블을 구성하며 관계를 설정하는 과정을 통해 많은 것을 배웠다.</p>
        <p>MariaDB를 활용하여 데이터베이스를 직접 설계하고 구현하면서, 테이블 간의 관계 설정과 프로시저 작성 등 실무적인 부분에 대한 이해를 높일 수 있던 시간이었다.</p>
        <p>혼자 진행했다면 어려웠을 부분도 팀원들과 함께 고민하고 해결해 나가면서 더 완성도 높은 결과물을 만들 수 있었다.</p>
        <p>또한 협업 과정에서 Git을 활용한 버전 관리와 의사소통의 중요성을 실감했고, 이를 통해 팀 프로젝트의 효율적인 진행 방법을 배울 수 있었다.</p>
        <p>이번 경험은 기술적 성장뿐 아니라 협력의 가치를 깨닫게 해준 의미 있는 시간이었다.</p>
      </td>
    </tr>
    <tr>
      <td align="center">김채우</td>
      <td style="padding:12px; line-height:1.7; text-align:left;">
        <p>요구사항 명세서부터 서버 구현까지 차례대로 진행하며 준비의 중요성을 느꼈다.</p> 
		<p>요구사항 명세서, 유스케이스, ERD가 제대로 작성되지 않았을 때 테이블 생성부터 데이터 삽입, 조회까지 모든 것이 어그러졌다.</p>
		<p>밑작업이 탄탄하게 되어 있다면 그 다음은 결국 시간 문제라는 것을 피부로 깨닫게 되었다. 또한 팀원들과의 분담과 협업이 필요한 시간을 획기적으로 줄이고 결과물의 완성도를 높이는 것을 보았다. </p>
      </td>
    </tr>
    <tr>
      <td align="center">양승재</td>
      <td style="padding:12px; line-height:1.7; text-align:left;">
        <p>데이터베이스 개발을 진행하면서 요구사항 명세서 작성의 중요성을 깊이 깨달았습니다.</p>
        <p>개발 과정에서 알고리즘의 방향을 잡지 못할 때에도, 명확하게 정의된 요구사항 명세서를 참고하여 계획적으로 개발을 진행할 수 있었고, 덕분에 기간 내에 프로젝트를 완성할 수 있었습니다.</p>
        <p>또한, 기존 코드를 수정하는 과정에서 오류가 발생해 되돌릴 수 없는 상황이 생겼을 때, 백업 서버의 중요성을 실감했습니다.</p>
        <p>이후에는 주기적인 코드 백업을 습관화하여 안정적인 개발 환경을 유지할 수 있었습니다</p>
      </td>
    </tr>
  </tbody>
</table>
