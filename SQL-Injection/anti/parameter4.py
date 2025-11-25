column = "date_reported"
cnx.execute("SELECT * FROM Bugs ORDER BY %s", [column])