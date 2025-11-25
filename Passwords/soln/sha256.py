import hashlib

m = hashlib.sha256()
m.update(b'xyzzy')
print(m.hexdigest())

# 出力内容:
# 184858a00fd7971f810848266ebcecee5e8b69972c5ffaed622f5ee078671aed