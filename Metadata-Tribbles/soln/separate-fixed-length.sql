CREATE TABLE Bugs (
  bug_id        SERIAL PRIMARY KEY, -- 固定長データ型
  summary       CHAR(80),           -- 固定長データ型
  date_reported DATE,               -- 固定長データ型
  reported_by   BIGINT UNSIGNED,    -- 固定長データ型
  FOREIGN KEY  (reported_by) REFERENCES Accounts(account_id)
);

CREATE TABLE BugDescriptions (
  bug_id       BIGINT UNSIGNED PRIMARY KEY,
  description  VARCHAR(1000),      -- 可変長データ型
  resolution   VARCHAR(1000),      -- 可変長データ型
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id)
);