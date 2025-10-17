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