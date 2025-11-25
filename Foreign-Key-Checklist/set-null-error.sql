CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
    ON DELETE SET NULL
);

ERROR 1830 (HY000): Column 'parent_id' cannot be NOT NULL: needed in a foreign key constraint 'child_ibfk_1' SET NULL
（列'parent_id'をNOT NULLにすることはできません: 外部キー制約'child_ibfk_1'がSET NULLを行おうとしています）