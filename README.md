# Harness Docker container
> More information in [Docker repository](https://hub.docker.com/r/rdpanek/docker_harness/)

Contains:
- node v4.2.1
- npm 2.14.7
- coffee-script 1.9.3
- harness 0.2.4

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

create `config.cson` with
```
EXPLICIT_WAIT_MS: 30000
```

install dependencies
```
npm install
```

run test
```
harness someTag -t 25000 -c dockerChrome -b -R elastic
```
