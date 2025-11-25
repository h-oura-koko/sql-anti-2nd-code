import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__) ❶

cnx = mysql.connector.connect(user='scott', database='test') ❷
cursor = cnx.cursor()

@app.route('/products', methods = ['GET']) ❸
def get_products(): ❹
    product_name = request.args.get("name") ❺

    # 危険！
    sql = f"SELECT * FROM Products WHERE product_name = '{product_name}'" ❻

    cursor.execute(sql) ❼
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run() ❽