#!/bin/bash

# load .env file
export $(grep -v '^#' .env | xargs)

# configs
mkdir -p $CONFIG/{traefik,plex,nzbget,sonarr,radarr}
touch traefik/acme.json
chmod 600 traefik/acme.json


# workflow
mkdir -p $DOWNLOAD/{complete,incomplete,watch}


# media
mkdir -p $DATA/{tv,movies}
