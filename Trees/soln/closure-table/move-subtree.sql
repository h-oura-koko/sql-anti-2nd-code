DELETE t1 FROM TreePaths AS t1
JOIN TreePaths AS t2 ON t1.descendant = t2.descendant
JOIN TreePaths AS t3 ON t1.ancestor = t3.ancestor
WHERE t2.ancestor = 6 AND t3.descendant = 6
  AND t3.ancestor != t3.descendant;