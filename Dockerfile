FROM    alpine:latest

LABEL   org.opencontainers.image.source=https://github.com/hmntsharma/ansible-cisco-segment-routing
LABEL   org.opencontainers.image.authors="Hemant Sharma"
LABEL   org.opencontainers.image.description="ansible-cisco-sr-lab"
LABEL   org.opencontainers.image.licenses=MIT

RUN     apk update && apk upgrade --available && \
        apk add openssh && \
        apk add --update python3 && \
        apk add python3-dev && \
        apk add --update py3-pip && \
        apk add libssh-dev && \
        apk add gcc && \
        apk add g++

RUN     cd /usr/lib/python3.11 && rm EXTERNALLY-MANAGED

RUN     pip install paramiko && \
        pip install ansible && \
        pip install ttp && \
        pip install ansible-pylibssh

COPY	. /home/ansible-code

WORKDIR /home/ansible-code
