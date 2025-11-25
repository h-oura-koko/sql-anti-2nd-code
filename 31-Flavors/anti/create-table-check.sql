CREATE TABLE Bugs (
  -- 他の列 . . .
  status   VARCHAR(20) CHECK (status IN ('NEW', 'IN PROGRESS', 'FIXED'))
);