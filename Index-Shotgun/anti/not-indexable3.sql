CREATE INDEX DateReported ON Bugs(date_reported);

SELECT * FROM Bugs WHERE MONTH(date_reported) = 4;