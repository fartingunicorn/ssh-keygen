FROM base-image:1.0
RUN apt-get install -y --no-install-recommends openssh-client
ENV KEY_GEN_PATH /sshkey
CMD ssh-keygen -q -t rsa -N '' -f $KEY_GEN_PATH/id_rsa && chmod 700 $KEY_GEN_PATH && chmod 600 $KEY_GEN_PATH/*
