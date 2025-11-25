bug_list = [123, 234, 345, 456, 567, 678]
sql = "SELECT * FROM Bugs WHERE bug_id IN (%s, %s, %s, %s, %s, %s)"
cursor.execute(sql, bug_list)