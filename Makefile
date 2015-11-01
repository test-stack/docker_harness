# Author: Radim Daniel Pánek <rdpanek@gmail.com>
#
# make build  - build new image from Dockerfile


NAME=rdpanek/harness
VERSION=1.3
WORKSPACE=$(filter-out $@,$(MAKECMDGOALS))


default:
	@echo Please use \'make build\'

build:
	docker build -t $(NAME):$(VERSION) .

tag:
	git tag -d $(VERSION) 2>&1 > /dev/null
	git tag -d latest 2>&1 > /dev/null
	git tag $(VERSION)
	git tag latest