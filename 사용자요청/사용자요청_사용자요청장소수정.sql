-- 사용자 요청 데이터 수정

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

-- 요청이 수정이고 미반영 상태인 것의 request_id 조회 (4,5,7)
select * from User_Request where request = '수정' and status_id = 1;

-- request_id가 4인 것 수정 (수정 성공 시 결과 1)
-- 바뀌기 전 내용	1 한라산 국립공원	6	제주시	한라산로 2070-1	제주도의 상징이자 대한민국 최고봉	5
call UserRequestModify(4);
select * from Place where place_id = 1;

select * from User_Request where request_id = 4;