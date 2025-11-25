def get_bugs_unsafe():
    sortorder = request.args.get("order")
    direction = request.args.get("dir")

    # 危険！
    sql = f"SELECT * FROM Bugs ORDER BY {sortorder} {direction}"

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())