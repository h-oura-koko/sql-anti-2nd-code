SELECT * FROM Bugs WHERE NOT (status = NULL OR status = 'NEW');

SELECT * FROM Bugs WHERE NOT (status = NULL) AND NOT (status = 'NEW');