-- 2. 사용자 요청 반려
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

CALL RejectUserRequest(4);

SELECT request_id, name, status_id 
  FROM user_request
 ORDER BY request_id;