CREATE TABLE Parent (
  parent_id INT NOT NULL -- PRIMARY KEYでもUNIQUE KEYでもない
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'child_ibfk_1' in the referenced table 'Parent'
（外部キー制約の追加に失敗しました。被参照テーブル'Parent'に制約'child_ibfk_1'のインデックスがありません）