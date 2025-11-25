bugid = 1234
query = f"SELECT * FROM Bugs WHERE bug_id = {bugid}"
cursor.execute(query)