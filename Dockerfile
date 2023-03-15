FROM    alpine:latest

RUN     apk update && apk upgrade --available && \
        apk add openssh && \
        apk add --update python3 && \
        apk add --update py3-pip && \
        pip install paramiko && \
        pip install ansible && \
        pip install ttp

COPY	. /home/ansible-code

WORKDIR /home/ansible-code
