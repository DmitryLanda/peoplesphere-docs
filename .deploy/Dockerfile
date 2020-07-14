FROM williamyeh/ansible:alpine3

WORKDIR /tmp
COPY . /tmp

RUN mkdir -p ~/.ssh && cp -rf id_rsa_production ~/.ssh/id_rsa && chmod 0400 ~/.ssh/id_rsa
