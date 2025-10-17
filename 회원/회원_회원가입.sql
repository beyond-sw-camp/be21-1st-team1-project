-- 회원가입
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

DELETE FROM Email_Verification
WHERE user_id IN (SELECT user_id FROM `User` WHERE id IN
  ('tcuser01','tcuser02','tcuser03','tcuser04','tcuser05',
   'tcuser06','tcuser07','tcuser08','tcuser09','tcuser10',
   'tcuser11','tcuser12','tcuser13','tcuser14','tcuser15'));

DELETE FROM `User`
WHERE id IN
  ('tcuser01','tcuser02','tcuser03','tcuser04','tcuser05',
   'tcuser06','tcuser07','tcuser08','tcuser09','tcuser10',
   'tcuser11','tcuser12','tcuser13','tcuser14','tcuser15');

-- 회원가입
/* 1) ✅ 정상 가입 */
CALL SignUp(
  'tcuser01',        -- id: 소문자+숫자 5~10
  'Abcd12!@',        -- pw: 8~15, 영/숫/특 포함
  'tcuser01@example.com',
  '홍길동',
  '길동이',           -- 닉네임: 한글 2~10
  '010101',          -- YYMMDD
  '남성'             -- 성별: 남성/여성만 허용
); -- 기대: new_user_id + email_verify_code 반환
/* 2) ❌ 중복 아이디 */
CALL SignUp(
  'tcuser01',        -- 기존과 동일
  'Abcd12!@',
  'tcuser02@example.com',
  '홍길동',
  '길동이',
  '010101',
  '남성'
); -- 기대: ERROR '이미 사용 중인 아이디'

/* 3) ❌ 중복 이메일 */
CALL SignUp(
  'tcuser02',
  'Abcd12!@',
  'tcuser01@example.com',  -- 기존과 동일
  '홍길동',
  '길동이',
  '010101',
  '남성'
); -- 기대: ERROR '이미 사용 중인 이메일'

/* 4) ❌ 중복 닉네임 */
CALL SignUp(
  'tcuser03',
  'Abcd12!@',
  'tcuser03@example.com',
  '홍길동',
  '길동이',                 -- 1번에서 쓴 닉네임 재사용
  '010101',
  '여성'
); -- 기대: ERROR '이미 사용 중인 닉네임'

/* 5) ❌ 아이디 형식 오류(대문자 포함) */
CALL SignUp(
  'TcUser',              -- 대문자 포함 + 길이 5 미만
  'Abcd12!@',
  'tcuser04@example.com',
  '홍길동',
  '홍길동이',
  '010101',
  '남성'
); -- 기대: ERROR '아이디는 소문자+숫자 5~10자'

/* 6) ❌ 아이디 형식 오류(너무 짧음) */
CALL SignUp(
  'user',                -- 4글자
  'Abcd12!@',
  'tcuser05@example.com',
  '홍길동',
  '홍길동둘',
  '010101',
  '여성'
); -- 기대: ERROR '아이디는 소문자+숫자 5~10자'

/* 7) ❌ 비밀번호 형식 오류(특수문자 없음) */
CALL SignUp(
  'tcuser06',
  'Abcd1234',           -- 특수문자 없음
  'tcuser06@example.com',
  '홍길동',
  '홍길동셋',
  '010101',
  '남성'
); -- 기대: ERROR '비밀번호에 특수문자 1자 이상 포함'

/* 8) ❌ 비밀번호 길이 오류(16자) */
CALL SignUp(
  'tcuser07',
  'Abcdef12!@345678',   -- 16자
  'tcuser07@example.com',
  '홍길동',
  '홍길동넷',
  '010101',
  '여성'
); -- 기대: ERROR '비밀번호는 8~15자'

/* 9) ❌ 비밀번호 허용문자 외 포함(공백) */
CALL SignUp(
  'tcuser08',
  'Abcd12 !',           -- 공백 포함
  'tcuser08@example.com',
  '홍길동',
  '홍길동다섯',
  '010101',
  '남성'
); -- 기대: ERROR '비밀번호에 허용되지 않은 문자가 포함됨'

/* 10) ❌ 이메일 형식 오류 */
CALL SignUp(
  'tcuser09',
  'Abcd12!@',
  'not-an-email',       -- 잘못된 형식
  '홍길동',
  '홍길동여섯',
  '010101',
  '여성'
); -- 기대: ERROR '이메일 형식이 올바르지 않음'

/* 11) ❌ 닉네임 형식 오류(1자) */
CALL SignUp(
  'tcuser10',
  'Abcd12!@',
  'tcuser10@example.com',
  '홍길동',
  '홍',                 -- 1자
  '010101',
  '남성'
); -- 기대: ERROR '닉네임은 한글 2~10자'

/* 12) ❌ 닉네임 형식 오류(영문 포함) */
CALL SignUp(
  'tcuser11',
  'Abcd12!@',
  'tcuser11@example.com',
  '홍길동',
  'Gigi',               -- 한글 아님
  '010101',
  '여성'
); -- 기대: ERROR '닉네임은 한글 2~10자'

/* 13) ❌ 성별 값 오류 */
CALL SignUp(
  'tcuser12',
  'Abcd12!@',
  'tcuser12@example.com',
  '홍길동',
  '홍길동일곱',
  '010101',
  '기타'                -- 허용X
); -- 기대: ERROR '성별은 남성 또는 여성만 입력'

/* 14) ✅ 생년월일 파싱(20xx로 보정되는 케이스) */
CALL SignUp(
  'tcuser13',
  'Abcd12!@',
  'tcuser13@emple.com',
  '홍길동',
  '홍길동여덟',
  '000101',            -- 00~24 → 20xx로 보정
  '남성'
); -- 기대: 정상 가입 + 코드 반환

/* 15) ✅ 생년월일 파싱(19xx로 들어가는 케이스) */
CALL SignUp(
  'tcuser14',
  'Abcd12!@',
  'tcuser14@example.com',
  '홍길동',
  '홍길동아홉',
  '990101',            -- 99 → 1999-01-01
  '여성'
); -- 기대: 정상 가입 + 코드 반환

/* 16) ✅ 또 하나의 정상 케이스(중복 충돌 없이) */
CALL SignUp(
  'tcuser15',
  'A1!bcdef',          -- 8자 경계
  'tcuser15@example.com',
  '홍길동',
  '홍길동열',
  '240229',            -- 2024-02-29 유효(윤년)
  '남성'
); -- 기대: 정상 가입 + 코드 반환