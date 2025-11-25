CREATE INDEX Description ON Bugs(description);

SELECT * FROM Bugs WHERE description LIKE '%crash%';