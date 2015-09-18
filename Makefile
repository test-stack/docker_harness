# Author: Radim Daniel Pánek <rdpanek@gmail.com>
#
# make build  - build new image from Dockerfile


NAME=rdpanek/harness
VERSION=1.0
WORKSPACE=$(filter-out $@,$(MAKECMDGOALS))


default:
	@echo Please use \'make build\'

build:
	docker build -t $(NAME):$(VERSION) .

run:
	docker run -it --name harness -v $(WORKSPACE):/home/harness $(NAME):$(VERSION)

tag:
	git tag -d $(VERSION) 2>&1 > /dev/null
	git tag -d latest 2>&1 > /dev/null
	git tag $(VERSION)
	git tag latest