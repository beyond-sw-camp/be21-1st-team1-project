-- 5. 모임 목록 조회
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

CALL GetGroupList('kim');