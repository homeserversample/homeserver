#! /bin/bash

#name for unique/temporary file to hold environment variables.
# ENVFILE=/tmp/$(uuidgen)

# save PUID & PGID variables for linuxserver.io docker setup.
# cat > $ENVFILE << DONE
# export PUID=$(id -u)
# export PGID=$(id -g)
# SERVERS=$(pwd)
# DONE

export PUID=$(id -u)
export PGID=$(id -g)
export SERVERS=$(pwd)

# docker compose --env-file $ENVFILE $@
docker compose $@
