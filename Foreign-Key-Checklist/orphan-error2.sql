ALTER TABLE Child
  ADD FOREIGN KEY (parent_id) REFERENCES Parent(parent_id);

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`test`.`child`, CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parent_id`))
（子行を追加または更新できません: 外部キー制約が失敗しました）