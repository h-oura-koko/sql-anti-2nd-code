CREATE TABLE PasswordResetRequest (
  account_id  BIGINT UNSIGNED PRIMARY KEY,
  token       CHAR(32) NOT NULL,
  expiration  TIMESTAMP NOT NULL,
  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

SET @token = MD5('billkarwin' || CURRENT_TIMESTAMP || RAND());

-- MySQLで、INSERTの代わりにREPLACEを使用します。
-- そうすると、対象のaccount_idの既存行がステートメントによって上書きされます。
REPLACE INTO PasswordResetRequest (account_id, token, expiration)
  VALUES (123, @token, CURRENT_TIMESTAMP + INTERVAL 1 HOUR);