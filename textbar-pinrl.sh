#!/bin/bash

/usr/local/bin/jq -r '.posts | map(select(.toread == "yes")) |  .[] | (.description + " - " + .href)' ~/Dropbox/sys/status/pinToday.json | wc -l | sed 's/^ *//;s/ *$//' && echo
/usr/local/bin/jq -r '.posts | map(select(.toread == "yes")) |  .[] | (.description + " - " + .href)' ~/Dropbox/sys/status/pinToday.json