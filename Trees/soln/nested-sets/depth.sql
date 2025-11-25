-- この時点ではdepthは4
SELECT c1.comment_id, COUNT(c2.comment_id) AS depth
FROM Comments AS c1
  JOIN Comments AS c2
    ON c1.nsleft BETWEEN c2.nsleft AND c2.nsright
WHERE c1.comment_id = 7
GROUP BY c1.comment_id;

DELETE FROM Comments WHERE comment_id = 6;

-- depthは3になる
SELECT c1.comment_id, COUNT(c2.comment_id) AS depth
FROM Comments AS c1
  JOIN Comments AS c2
    ON c1.nsleft BETWEEN c2.nsleft AND c2.nsright
WHERE c1.comment_id = 7
GROUP BY c1.comment_id;