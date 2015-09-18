# VERSION 1.0

FROM rdpanek/base:2.0
MAINTAINER Radim Daniel Pánek <rdpanek@gmail.com>

ENV HARNESS_VERSION 0.2.1
ENV COFFEESCRIPT_VERSION 1.9.3
ENV WORKSPACE /home/harness/

RUN sudo apt-get update && \
    sudo apt-get install nodejs nodejs-legacy npm -y

# Install harness
RUN npm i coffee-script@$COFFEESCRIPT_VERSION -g && \
    ln -s /usr/local/bin/coffee /usr/bin/coffee && \
    npm i test-stack-harness@$HARNESS_VERSION -g && \
    ln -s /usr/local/bin/coffee /usr/bin/coffee