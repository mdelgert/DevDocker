import requests

# resp = requests.get("https://ntfy.sh/test/json", stream=True)
# for line in resp.iter_lines():
#   if line:
#     print(line)

resp = requests.get("https://ntfy.sh/test/json", 
                    stream=True,
                    headers={
                    "Authorization": "Bearer tk_1234"
                    })
for line in resp.iter_lines():
  if line:
    print(line)