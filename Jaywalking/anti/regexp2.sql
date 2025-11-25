SELECT * FROM Products AS p JOIN Accounts AS a
  ON p.account_id REGEXP '\\b' || a.account_id || '\\b'
WHERE p.product_id = 123;