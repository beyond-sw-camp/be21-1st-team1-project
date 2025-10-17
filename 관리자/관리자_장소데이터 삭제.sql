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

call delete_place_proc(102, 13);