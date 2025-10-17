# 4. 카테고리별 정렬
# concept으로 보이거나, category가 숙소이거나, category가 음료/식사/술이거나로 출력 
DELIMITER //
CREATE PROCEDURE OrderPlace(
  IN request VARCHAR(29)
)
BEGIN
	
	IF request = '컨셉' THEN
	   SELECT *
	     FROM place a
	     JOIN concept b ON a.concept_id = b.concept_id
	    ORDER BY a.concept_id;
	ELSEIF request = '숙소' THEN
	   SELECT *
	     FROM place a
         JOIN place_category b ON a.category_id = b.category_id
	    WHERE a.category_id = 1;
	ELSE
	   SELECT *
	     FROM place a
	     JOIN place_category b ON a.category_id = b.category_id
	    WHERE a.category_id NOT IN (1)
	      AND a.category_id NOT IN (5,6)
	    ORDER BY a.category_id;
    END IF;
	
END //
DELIMITER ;

SET @request = '숙소'; # 컨셉 OR 숙소 OR 음료/식사/술
CALL OrderPlace(@request);