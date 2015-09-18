# Harness image
Contains:
- node v0.10.25
- npm 1.3.10
- coffeescript 1.9.3
- harness 0.2.1

## Docker
via Makefile
`make run /absolute/path/to/tests`

or via docker command
`docker run -it --name harness -v /absolute/path/to/tests/:/home/harness rdpanek/harness:latest`