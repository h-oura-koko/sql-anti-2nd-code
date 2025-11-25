import mysql.connector
import os

cnx = mysql.connector.connect(user='scott', database='test')

cursor = cnx.cursor()

query = "DELETE FROM Screenshots WHERE bug_id = %s AND image_id = %s"
cursor.execute(query, (1234, 1,))

os.unlink('screenshot1234-1.jpg')

# このとき、他のクライアントは、データベースの行を参照しているが
# 画像ファイルはもう参照できない

cnx.commit()