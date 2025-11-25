CREATE TABLE Parent (
  parent_id VARCHAR(10) PRIMARY KEY
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
) CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

ERROR 3780 (HY000): Referencing column 'parent_id' and referenced column 'parent_id' in foreign key constraint 'child_ibfk_1' are incompatible.
（外部キー制約'child_ibfk_1'の参照列'parent_id'と被参照列'parent_id'に互換性がありません）