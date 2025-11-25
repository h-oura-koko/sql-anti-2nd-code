SELECT c1.*, c2.*, c3.*, c4.*
FROM Comments c1                     -- 1階層目
  LEFT OUTER JOIN Comments c2
    ON c2.parent_id = c1.comment_id  -- 2階層目
  LEFT OUTER JOIN Comments c3
    ON c3.parent_id = c2.comment_id  -- 3階層目
  LEFT OUTER JOIN Comments c4
    ON c4.parent_id = c3.comment_id; -- 4階層目