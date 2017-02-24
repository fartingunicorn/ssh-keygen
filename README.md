#generate a ssh-key out of a docker container

Starting the container using

```
docker pull madhub/ssh-keygen
docker run -v /tmp/:/sshkey madhub/ssh-keygen
```

will create a ssh-key on the host in /tmp.

> NOTE *docker for windows*: Since volumes of a windows host are mounted by smb to the container. you will loose your permissions set to the ssh key. Use docker data container instead as workaround. see example below.

## Environment Variables


|Name|default|
|----|-------|
|KEY_GEN_PATH|/sshkey|


### Example with docker data container

Here is a example using a docker data container. This will create a container named keystore and a docker data volume /root/.ssh.

Use environment variable KEY_GEN_PATH to override the default location. The ssh key is now stored within the docker data container.

```
docker run -v /root/.ssh -e KEY_GEN_PATH=/root/.ssh --name keystore madhub/ssh-keygen
```
