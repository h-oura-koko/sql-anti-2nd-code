sql1 = "SELECT last_name FROM Accounts WHERE account_id = 123"
cursor.execute(sql1)

for row in cursor:
    # 危険！
    sql2 = f"SELECT * FROM Bugs WHERE MATCH(description) AGAINST ('{row["last_name"]}')"
    cursor.execute(sql2)
    print(cursor.fetchall())