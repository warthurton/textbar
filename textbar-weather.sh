#!/bin/bash

forecastfile=~/Dropbox/sys/status/ForecastRochester.json

forecast=$(/usr/local/bin/jq '.currently.temperature' < $forecastfile)

# echo $forecast
echo ${forecast%???}

forecast_time=`/usr/local/bin/jq '.currently.time' < $forecastfile`
date -r "$forecast_time"