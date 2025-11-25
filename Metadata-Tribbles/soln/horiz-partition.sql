CREATE TABLE Bugs (
  bug_id SERIAL PRIMARY KEY,
  -- 他の列 . . .
  date_reported DATE
) PARTITION BY HASH(YEAR(date_reported))
  PARTITIONS 4;