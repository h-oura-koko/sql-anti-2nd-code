SELECT account_id, COUNT(*) AS products_per_account
FROM Contacts
GROUP BY account_id;