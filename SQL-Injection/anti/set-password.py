def set_password():
    userid = request.form["userid"]
    password = request.form["password"]

    # 危険！
    query = f"""UPDATE Accounts
        SET password_hash = SHA2('{password}', 256)
        WHERE account_id = {userid}"""

    cursor.execute(query)
    cnx.commit()
    return "OK"