#!/bin/bash
#customize pythonX execution (e.g. DSM), chown sc-radarr:radarr download_radarr.sh; chmod +x download_radarr.sh
cd /volume1/@appstore/radarr/Trailer-Downloader
echo "$(date) Running download_radarr.py with parameters '$@', event type '$radarr_eventtype', movie id '$radarr_movie_id', movie title '$radarr_movie_title', movie path '$radarr_movie_path'" >> download_radarr.log
/var/packages/python3/target/bin/python3.5 ./download_radarr.py $@ >> download_radarr.log
