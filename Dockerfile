# VERSION 1.1

FROM rdpanek/base:2.0
MAINTAINER Radim Daniel Pánek <rdpanek@gmail.com>

ENV HARNESS_VERSION 0.2.4
ENV COFFEESCRIPT_VERSION 1.9.3
ENV WORKSPACE /home/harness/

# Install node & npm
RUN apt-get update -yq && apt-get upgrade -yq && \

    # install from nodesource using apt-get
    # https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get install -yq nodejs build-essential && \

    # fix npm - not the latest version installed by apt-get
    npm install -g npm && \

    which node; node -v; which npm; npm -v; npm ls -g --depth=0 && \

    # Install harness
    npm i coffee-script@$COFFEESCRIPT_VERSION -g && \
    npm i test-stack-harness@$HARNESS_VERSION -g
