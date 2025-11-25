CREATE TABLE Bugs (
  bug_id UNIQUEIDENTIFIER DEFAULT NEWID(),
  -- 他の列. . .
);

INSERT INTO Bugs (bug_id, summary)
VALUES (DEFAULT, '保存時にクラッシュが発生');