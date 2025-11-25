def get_bugs():
    o = request.args.get("order") ❶

    if re.search('^\w+$', o): ❷
        sortorder = o

    else:
        sortorder = "date_reported" ❸

    # 安全！
    sql = f"SELECT * FROM Bugs ORDER BY {sortorder}" ❹

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())