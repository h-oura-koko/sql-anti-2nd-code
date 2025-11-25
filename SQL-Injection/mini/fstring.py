query = "SELECT * FROM Bugs WHERE summary LIKE %s"
pattern = f"%{word}%"
cursor.execute(query, [pattern])