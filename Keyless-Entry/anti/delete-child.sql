DELETE FROM BugStatus WHERE status = 'BOGUS'; -- エラー!
DELETE FROM Bugs WHERE status = 'BOGUS';
DELETE FROM BugStatus WHERE status = 'BOGUS'; -- 今度は成功する