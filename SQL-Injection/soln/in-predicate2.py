bug_list = [123, 234, 345, 456, 567, 678, 789, 890]
placeholders = ",".join(["%s"] * len(bug_list))
sql = f"SELECT * FROM Bugs WHERE bug_id IN ({placeholders})"
cursor.execute(sql, bug_list)