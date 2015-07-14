#/bin/bash
tempfile=$HOME/Dropbox/sys/status/gb_upcoming.json

`jq -r -n '.upcoming[] | @sh "echo \(.date)"' < $tempfile | bash`
# jq -r '.liveNow' < $tempfile