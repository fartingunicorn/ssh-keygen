FROM gliderlabs/alpine:3.5
MAINTAINER Franz Mathauser <franz.mathauser@gmail.com>
RUN apk add --update openssh-client
ENV KEY_GEN_PATH /sshkey
CMD ssh-keygen -q -t rsa -N '' -f $KEY_GEN_PATH/id_rsa && chmod 700 $KEY_GEN_PATH && chmod 600 $KEY_GEN_PATH/*
