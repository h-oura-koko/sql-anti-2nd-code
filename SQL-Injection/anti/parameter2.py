bugid_list = "1234,3456,5678"
cnx.execute("SELECT * FROM Bugs WHERE bug_id IN ( %s )", [bugid_list])