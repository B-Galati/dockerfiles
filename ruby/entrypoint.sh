#!/bin/bash

set -e

uid=$(stat -c %u /app)
gid=$(stat -c %g /app)

if [[ ${uid} == 0 &&  ${gid} == 0 ]]; then
    exec "$@"
fi

if [[ "${uid}" != "$(id -u ruby)" ]]; then
    usermod -u ${uid} ruby
fi

if [[ "${gid}" != "$(id -g ruby)" ]]; then
    groupmod -g ${gid} ruby
fi

chown -R ruby:ruby /home/ruby /app

exec gosu ruby "$@"
