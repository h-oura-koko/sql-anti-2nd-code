CREATE TABLE Bugs (
  bug_id            SERIAL PRIMARY KEY,
  -- 他の列. . .
  assigned_to       BIGINT UNSIGNED NOT NULL,
  hours             NUMERIC(9,2) NOT NULL,
  FOREIGN KEY (assigned_to) REFERENCES Accounts(account_id)
);