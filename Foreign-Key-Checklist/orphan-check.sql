SELECT CASE COUNT(*)
  WHEN 0 THEN '外部キーを追加できます'
  ELSE '孤立した行があるので外部キーを追加できません'
  END AS `check`
FROM Child
LEFT OUTER JOIN Parent ON Child.parent_id = Parent.parent_id
WHERE Parent.parent_id IS NULL;