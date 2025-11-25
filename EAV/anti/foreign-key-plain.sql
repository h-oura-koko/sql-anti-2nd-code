CREATE TABLE Issues (
  issue_id         SERIAL PRIMARY KEY,
  -- その他の列
  status           VARCHAR(20) NOT NULL DEFAULT 'NEW',
  FOREIGN KEY (status) REFERENCES BugStatus(status)
);