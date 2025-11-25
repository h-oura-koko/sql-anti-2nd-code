import unittest
import mysql.connector

class TestDatabase(unittest.TestCase):

    def setUp(self):
        self.cnx = mysql.connector.connect(user='scott', database='test')
        self.cursor = self.cnx.cursor()

    def test_table_bugs_exists(self):
        query = '''SELECT true FROM Bugs LIMIT 1'''
        self.cursor.execute(query)

    def test_table_bugs_column_bugid_exists(self):
        query = '''SELECT bug_id FROM Bugs LIMIT 1'''
        self.cursor.execute(query)

    # issue_id列は削除されているので、例外が想定される
    def test_table_bugs_column_issueid_not_exists(self):
        with self.assertRaises(mysql.connector.errors.ProgrammingError) as e:
            query = '''SELECT issue_id FROM Bugs LIMIT 1'''
            self.cursor.execute(query)

if __name__ == '__main__':
    unittest.main()