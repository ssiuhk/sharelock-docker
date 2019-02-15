#!/bin/bash

set -ex

SHARELOCK_PROGRAM="${HOME}/sharelock/server.js"

if [ "$#" -eq 0 ]; then

    [ -s ${HOME}/.app_env ] && source ${HOME}/.app_env
    node ${SHARELOCK_PROGRAM}

else

    "$@"

fi
