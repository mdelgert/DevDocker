import requests

# requests.post("https://ntfy.sh/test", 
#     data="Hello world!".encode(encoding='utf-8'))

requests.post("https://ntfy.sh/test",
data="Hello python, with auth",
headers={
    "Authorization": "Bearer tk_1234"
})