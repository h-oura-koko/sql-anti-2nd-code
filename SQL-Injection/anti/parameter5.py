keyword = "DESC"
cnx.execute("SELECT * FROM Bugs ORDER BY date_reported %s", [keyword])