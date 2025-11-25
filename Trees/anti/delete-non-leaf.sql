SELECT parent_id FROM Comments WHERE comment_id = 6; -- 4 を返す
UPDATE Comments SET parent_id = 4 WHERE parent_id = 6;
DELETE FROM Comments WHERE comment_id = 6;