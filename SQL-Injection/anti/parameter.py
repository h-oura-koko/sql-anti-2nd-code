name = request.args.get("name")
cnx.execute("SELECT * FROM Products WHERE product_name = %s", [name])