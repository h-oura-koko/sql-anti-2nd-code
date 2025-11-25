CREATE TABLE Parent (
  parent_id INT PRIMARY KEY
) ENGINE=MyISAM;

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id INT NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
) ENGINE=InnoDB;

ERROR 1824 (HY000): Failed to open the referenced table 'Parent'
（被参照テーブル'Parent'を開けませんでした）