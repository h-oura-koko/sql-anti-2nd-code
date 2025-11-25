def set_password():
    userid = request.form["userid"]
    password = request.form["password"]

    # 安全！
    sql = """UPDATE Accounts
        SET password_hash = SHA2(%s, 256)
        WHERE account_id = %s"""

    cursor.execute(sql, [password, userid])
    cnx.commit()
    return "OK"