FROM ubuntu:18.04

RUN apt-get update && apt-get install -y 

RUN apt-get install npm -y && \
    apt-get install curl -y && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

RUN apt-get install python3 -y && \
    apt-get install python-pip -y && \
    apt-get install python3-pip -y

RUN apt install ruby-full -y && \
    apt-get install software-properties-common -y && \
    apt-add-repository -y ppa:rael-gc/rvm && \
    apt-get install rvm -y


RUN apt-get install golang-go -y && apt-get install curl -y && curl -sSL https://git.io/g-install | bash
# the above installs a [go version manager](https://github.com/stefanmaric/g). `g help` for usage.  

VOLUME ["/code"]
WORKDIR /code

CMD ["/bin/bash"]