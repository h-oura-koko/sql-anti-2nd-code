CREATE TABLE Parent (
  parent_id1 INT,
  parent_id2 INT,
  PRIMARY KEY (parent_id1, parent_id2)
);

INSERT INTO Parent (parent_id1, parent_id2) VALUES (1234, 5678);

CREATE TABLE Child (
  child_id INT PRIMARY KEY,
  parent_id1 INT NOT NULL,
  parent_id2 INT NOT NULL,
  FOREIGN KEY (parent_id2, parent_id1)
    REFERENCES Parent(parent_id1, parent_id2)
);

INSERT INTO Child (child_id, parent_id1, parent_id2) VALUES (1, 1234, 5678);

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`test`.`child`, CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parent_id2`, `parent_id1`) REFERENCES `parent` (`parent_id1`, `parent_id2`))
（子行を追加または更新できません: 外部キー制約が失敗しました）