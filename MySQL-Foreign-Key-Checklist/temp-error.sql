CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
);

CREATE TEMPORARY TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

ERROR 1215 (HY000): Cannot add foreign key constraint
（外部キー制約を追加できません）