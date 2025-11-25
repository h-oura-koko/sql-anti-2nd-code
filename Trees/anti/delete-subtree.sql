SELECT comment_id FROM Comments WHERE parent_id = 4; -- 5と6を返す
SELECT comment_id FROM Comments WHERE parent_id = 5; -- 何も返さない
SELECT comment_id FROM Comments WHERE parent_id = 6; -- 7を返す
SELECT comment_id FROM Comments WHERE parent_id = 7; -- 何も返さない

DELETE FROM Comments WHERE comment_id IN ( 7 );
DELETE FROM Comments WHERE comment_id IN ( 5, 6 );
DELETE FROM Comments WHERE comment_id = 4;