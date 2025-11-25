def get_accounts_by_status():
    account_status_escaped = cnx.converter.escape(request.args.get("status"))

    # 安全！
    sql = f"""SELECT * FROM Accounts
        WHERE account_status = '{account_status_escaped}'"""

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())