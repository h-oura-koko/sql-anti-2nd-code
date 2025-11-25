CREATE INDEX LastNameFirstName ON TelephoneBook(last_name, first_name);

SELECT * FROM TelephoneBook WHERE last_name = 'Charles'; -- OK