FROM    alpine:latest

RUN     apk update && apk upgrade --available && \
        apk add openssh && \
        apk add --update python3 && \
        apk add python3-dev && \
        apk add --update py3-pip && \
        apk add libssh-dev && \
        apk add gcc && \
        apk add g++ && \
        pip install paramiko && \
        pip install ansible && \
        pip install ttp && \
        pip install ansible-pylibssh

COPY	. /home/ansible-code

WORKDIR /home/ansible-code
