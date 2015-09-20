# Harness Docker container
> More information in [Docker repository](https://hub.docker.com/r/rdpanek/docker_harness/)

Contains:
- node v0.10.25
- npm 1.3.10
- coffeescript 1.9.3
- harness 0.2.1
- chaijs 3.2.0

## Run Docker container
via Makefile
```
make run /absolute/path/to/tests
```

or via docker command
```
docker run -it --name harness -v /absolute/path/to/tests/:/home/harness rdpanek/docker_harness:latest
```

in docker
```
cd /home/harness
```

run test
```
harness someTag -t 25000 -R elastic
```