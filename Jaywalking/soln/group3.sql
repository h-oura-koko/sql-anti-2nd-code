SELECT product_id, COUNT(*) AS accounts_per_product
FROM Contacts
GROUP BY product_id
ORDER BY accounts_per_product DESC
LIMIT 1;