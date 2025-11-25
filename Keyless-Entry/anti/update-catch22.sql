UPDATE BugStatus SET status = 'INVALID' WHERE status = 'BOGUS'; --- エラー !

UPDATE Bugs SET status = 'INVALID' WHERE status = 'BOGUS'; -- エラー !