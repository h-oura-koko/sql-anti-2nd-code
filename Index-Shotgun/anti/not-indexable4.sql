CREATE INDEX LastNameFirstName ON Accounts(last_name, first_name);

SELECT * FROM Accounts WHERE last_name = 'Charles' OR first_name = 'Charles';