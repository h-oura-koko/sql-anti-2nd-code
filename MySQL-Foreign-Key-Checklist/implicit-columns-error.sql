CREATE TABLE Parent (
  parent_id VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent
);

ERROR 1239 (42000): Incorrect foreign key definition for 'foreign key without name': Key reference and table reference don't match
（'名前のない外部キー'の外部キー定義が正しくありません: キー参照とテーブル参照が一致しません）