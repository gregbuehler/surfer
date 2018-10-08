# surfer

a docker oriented deployment for a suite of media services

## Services

 - Traefik  - Reverse proxy
 - Plex     - Media Center
 - NZBGet   - Usenet agent
 - Sonarr   - TV client
 - Radarr   - Movie client

## Usage

### Setup

Use the provided `example.env` as a baseline for a `.env` file.

Execute `setup_directories.sh` to configure directories and files.

Run `docker-compose up -d` to launch.
