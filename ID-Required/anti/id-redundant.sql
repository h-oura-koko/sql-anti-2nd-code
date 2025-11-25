CREATE TABLE Bugs (
  id          SERIAL PRIMARY KEY,
  bug_id      VARCHAR(10) UNIQUE,
  description VARCHAR(1000),
  -- 他の列 . . .
);

INSERT INTO Bugs (bug_id, description, ...)
  VALUES ('VIS-078', '保存時にクラッシュが発生', ...);