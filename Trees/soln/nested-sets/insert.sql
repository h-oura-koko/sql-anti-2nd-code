-- NS値8と9を入れるためにスペースを空ける
UPDATE Comments
  SET nsleft = CASE WHEN nsleft > 7 THEN nsleft+2 ELSE nsleft END,
      nsright = nsright+2
WHERE nsright >= 7;

-- コメント5の新しい子供を作成し、NS値に8と9を割り当てる
INSERT INTO Comments (nsleft, nsright, bug_id, author, comment)
  VALUES (8, 9, 1234, 34 /* Fran */, '私もそう思います！');