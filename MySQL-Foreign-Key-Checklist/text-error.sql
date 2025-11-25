CREATE TABLE Parent (
  parent_id TEXT NOT NULL,
  UNIQUE KEY (parent_id(40))
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id TEXT NOT NULL,
  KEY (parent_id(40)),
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

ERROR 1170 (42000): BLOB/TEXT column 'parent_id' used in key specification without a key length
（BLOB/TEXT列'parent_id'がキー長なしのキー指定で使用されています）