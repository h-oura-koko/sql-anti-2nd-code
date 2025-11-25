CREATE INDEX LastNameFirstName ON Accounts(last_name, first_name);

SELECT * FROM Accounts ORDER BY first_name, last_name;