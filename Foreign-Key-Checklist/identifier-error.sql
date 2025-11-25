CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
);

CREATE TABLE Child1 (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  CONSTRAINT c1 FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

CREATE TABLE Child2 (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  CONSTRAINT c1 FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

ERROR 1826 (HY000): Duplicate foreign key constraint name 'c1'
（外部キー制約名'c1'が重複しています）