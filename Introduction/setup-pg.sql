CREATE TABLE Accounts (
  account_id        BIGSERIAL PRIMARY KEY, -- BIGSERIAL is used for large auto-incrementing integers
  account_name      VARCHAR(20),
  first_name        VARCHAR(20),
  last_name         VARCHAR(20),
  email             VARCHAR(100),
  password_hash     CHAR(64),
  portrait_image    BYTEA, -- Changed BLOB to BYTEA
  hourly_rate       NUMERIC(9,2)
);

CREATE TABLE BugStatus (
  status            VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Bugs (
  bug_id            BIGSERIAL PRIMARY KEY,
  date_reported     DATE NOT NULL DEFAULT (CURRENT_DATE),
  summary           VARCHAR(80),
  description       VARCHAR(1000),
  resolution        VARCHAR(1000),
  reported_by       BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  assigned_to       BIGINT,          -- Changed BIGINT UNSIGNED to BIGINT
  verified_by       BIGINT,          -- Changed BIGINT UNSIGNED to BIGINT
  status            VARCHAR(20) NOT NULL DEFAULT 'NEW',
  priority          VARCHAR(20),
  hours             NUMERIC(9,2),
  FOREIGN KEY (reported_by) REFERENCES Accounts(account_id),
  FOREIGN KEY (assigned_to) REFERENCES Accounts(account_id),
  FOREIGN KEY (verified_by) REFERENCES Accounts(account_id),
  FOREIGN KEY (status) REFERENCES BugStatus(status)
);

CREATE TABLE Comments (
  comment_id        BIGSERIAL PRIMARY KEY,
  bug_id            BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  author            BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  comment_date      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Changed DATETIME to TIMESTAMP
  comment           TEXT NOT NULL,
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
  FOREIGN KEY (author) REFERENCES Accounts(account_id)
);

CREATE TABLE Screenshots (
  bug_id            BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  image_id          BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  screenshot_image  BYTEA,           -- Changed BLOB to BYTEA
  caption           VARCHAR(100),
  PRIMARY KEY      (bug_id, image_id),
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id)
);

CREATE TABLE Tags (
  bug_id            BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  tag               VARCHAR(20) NOT NULL,
  PRIMARY KEY      (bug_id, tag),
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id)
);

CREATE TABLE Products (
  product_id        BIGSERIAL PRIMARY KEY,
  product_name      VARCHAR(50)
);

CREATE TABLE BugsProducts(
  bug_id            BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  product_id        BIGINT NOT NULL, -- Changed BIGINT UNSIGNED to BIGINT
  PRIMARY KEY      (bug_id, product_id),
  FOREIGN KEY (bug_id) REFERENCES Bugs(bug_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
