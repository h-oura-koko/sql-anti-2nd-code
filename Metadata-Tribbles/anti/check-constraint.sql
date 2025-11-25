CREATE TABLE Bugs_2021 (
  -- 他の列 . . .
  date_reported DATE CHECK (EXTRACT(YEAR FROM date_reported) = 2021)
);

CREATE TABLE Bugs_2022 (
  -- 他の列 . . .
  date_reported DATE CHECK (EXTRACT(YEAR FROM date_reported) = 2022)
);