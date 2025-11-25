import mysql.connector
from mysql.connector import errorcode

try:
    cnx = mysql.connector.connect(user='scott', database='test')

except mysql.connector.Error as err: # check for errors ❶
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("ユーザー名またはパスワードに誤りがあります")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("データベースが存在しません")
    else:
        print(err)
    raise

cursor = cnx.cursor()

try:
    query = '''SELECT bug_id, summary, date_reported FROM Bugs
        WHERE assigned_to = %s AND status = %s'''

    parameters = (1, 'NEW')

    cursor.execute(query, parameters)

except mysql.connector.Error as err: ❷
    print(err)
    raise