import mysql.connector
import hashlib

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

# このコード例では、説明を簡略化するために、名前とパスワードは固定値にしています。
# 実際のアプリケーションでは、これらは外部から入力されます。
name = 'bill'
password = 'xyzzy'

query = "SELECT password_hash, salt FROM Accounts WHERE account_name = %s"
cursor.execute(query, (name,))
for (row) in cursor:
    stored_hash = row[0]
    # ソルトはバイナリバイトとして格納されるため、文字列にデコードする必要があります。 
    salt = row[1].decode()

# 入力されたパスワードを格納されたソルトと連結し、ハッシュを生成します。
m = hashlib.sha256()
m.update(f"{password}{salt}".encode('utf-8'))
input_hash = m.hexdigest()

# 入力されたハッシュとデータベースに格納されているハッシュを比較します。
if input_hash == stored_hash:
    print("match successful!")