def get_products():
    bugid = int(request.args.get("bugid"))

    # 安全！
    sql = f"SELECT * FROM Bugs WHERE bug_id = {bugid}"

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())