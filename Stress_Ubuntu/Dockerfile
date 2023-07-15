FROM ubuntu:22.04

RUN apt-get update && apt-get install -y stress-ng

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# docker build -t stress-test .
# docker run --name stress-container stress-test --cpu 2 --io 1 --vm 1 --vm-bytes 128M --timeout 300s --metrics-brief