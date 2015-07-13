#!/bin/bash

echo -n `/usr/local/bin/jq '.currently.temperature' < ~/Dropbox/sys/status/ForecastRochester.json`