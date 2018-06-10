#!/bin/bash

# load .env file
export $(grep -v '^#' .env | xargs)

owner=root
group=surfer
mode=0775

# configs
install -o $owner -g $group -m $mode -d $CONFIG
install -o $owner -g $group -m $mode -d $CONFIG/{traefik,plex,nzbget,sonarr,radarr}
install -o $owner -g $group -m $mode -d $DOWNLOAD
install -o $owner -g $group -m $mode -d $DATA

cp ./traefik.toml $CONFIG/traefik/
touch $CONFIG/traefik/acme.json
chmod 600 $CONFIG/traefik/acme.json


# workflow
mkdir -p $DOWNLOAD/{complete,incomplete,watch}


# media
mkdir -p $DATA/{tv,movies}
