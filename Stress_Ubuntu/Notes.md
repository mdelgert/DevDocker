https://hub.docker.com/r/polinux/stress
https://github.com/pozgo/docker-stress


docker run \
  -ti \
  --rm \
  polinux/stress stress \
    --cpu 1 \
    --io 1 \
    --vm 1 \
    --vm-bytes 128M \
    --timeout 1s \
    --verbose

### Example output

```bash
$ docker run --name stress-container mdelgert/stress-test-x86 --cpu 4 --io 1 --vm 1 --vm-bytes 128M --timeout 3600s --metrics-brief
```