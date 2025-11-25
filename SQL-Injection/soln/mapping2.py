def get_bugs_safe():
    sortorders = {"status": "status", "date": "date_reported"} ❶
    directions = {"up": "ASC", "down": "DESC"} ❷

    s = request.args.get("order") ❸
    if s in sortorders:
        sortorder = sortorders[s]
    else:
        sortorder = "bug_id"

    d = request.args.get("dir") ❹
    if d in directions:
        direction = directions[d]
    else:
        direction = "ASC"

    # 安全！
    sql = f"SELECT * FROM Bugs ORDER BY {sortorder} {direction}" ❺

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())