def get_products():
    product_name = cnx.converter.escape(request.args.get("name"))

    # 安全！
    sql = f"SELECT * FROM Products WHERE product_name = '{product_name}'"

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())