table = "Bugs"
cnx.execute("SELECT * FROM %s WHERE bug_id = 1234", [table])