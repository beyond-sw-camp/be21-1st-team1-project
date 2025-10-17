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
