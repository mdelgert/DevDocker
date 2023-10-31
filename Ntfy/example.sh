# curl \
#   -H "Title: Hello" \
#   -H "Priority: urgent" \
#   -H "Tags: warning,skull" \
#   -d "World!" \
#   https://ntfy.sh/test

curl \
  -H "Authorization: Bearer tk_1234" \
  -d "Hello bash, with auth" \
  https://ntfy.sh/test