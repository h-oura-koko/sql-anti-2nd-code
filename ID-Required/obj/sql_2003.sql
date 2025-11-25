CREATE TABLE Bugs (
  bug_id   BIGINT GENERATED ALWAYS AS IDENTITY,
  summary  VARCHAR(80),
  -- 他の列...
);