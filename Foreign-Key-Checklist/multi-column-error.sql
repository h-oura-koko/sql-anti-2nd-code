CREATE TABLE Parent (
  parent_id1 INT,
  parent_id2 INT,
  PRIMARY KEY (parent_id1, parent_id2)
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id1 INT NOT NULL,
  parent_id2 INT NOT NULL,
  FOREIGN KEY (parent_id1) REFERENCES Parent(parent_id1),
  FOREIGN KEY (parent_id2) REFERENCES Parent(parent_id2)
);

ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'child_ibfk_2' in the referenced table 'Parent'
（外部キー制約の追加に失敗しました。被参照テーブル'Parent'に制約'child_ibfk_2'のインデックスがありません）