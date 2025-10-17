-- 자기 일정 조회

set @input_id =13;
select 
	* 
	from schedule
	where user_id = @input_id;

-- 관리자 정보 조회

SET @input_user_id = 22;
SET @search_user_id = 30;

SELECT *
FROM user
WHERE (
        SELECT authority
        FROM user
        WHERE user_id = @input_user_id
      ) = 0
  AND user_id = @search_user_id;

-- 모임초대

INSERT INTO group_friend (group_id, user_id, status_id, role)
VALUES (1, 15, NULL, '총무');