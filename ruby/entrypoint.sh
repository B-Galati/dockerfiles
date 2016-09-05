#!/bin/bash

# Add local user
# Either use the UID if passed in at runtime, otherwise : root account
#
# Inspiration :
#   - https://github.com/jderusse/docker-composer-hhvm/blob/configurable-user/runashost
#   - https://denibertovic.com/posts/handling-permissions-with-docker-volumes/

set -e

USER="root"

if [[ ! -z "$DOCKER_UID" && ! -z "$DOCKER_GID" ]]; then
    USER="user"

    if [[ ! $(id -u $USER 2>/dev/null) ]]; then
        useradd -ms /bin/bash -u $DOCKER_UID -o -c "$DOCKER_UID" -m $USER
        chown -R user:user -- /home/$USER
        export HOME=/home/$USER
        echo "$USER:dev" | chpasswd
    fi
fi

# With supervisor, launch container as root and choose user you want by program
# otherwise you will get many permissions problems like /dev/stdout permission denied
# or sshd which don't want to run at all
echo "Starting with $USER"
exec /usr/local/bin/gosu $USER "$@"
