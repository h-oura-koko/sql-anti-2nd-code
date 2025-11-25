def set_password():
    userid = cnx.converter.escape(request.form["userid"])
    password = cnx.converter.escape(request.form["password"])

    # まだ危険！
    query = f"""UPDATE Accounts
        SET password_hash = SHA2('{password}', 256)
        WHERE account_id = {userid}"""

    cursor.execute(query)
    cnx.commit()
    return "OK"