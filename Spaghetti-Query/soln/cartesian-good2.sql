SELECT 100*digit100.num + 10*digit10.num + digit1.num AS num
FROM integers AS digit1
CROSS JOIN integers AS digit10
CROSS JOIN integers AS digit100;