#!/bin/bash

forecastfile=~/Dropbox/sys/status/Forecast.json

forecast=$(/usr/local/bin/jq '.currently.temperature | floor' < $forecastfile)

# echo $forecast
echo ${forecast}

forecast_time=`/usr/local/bin/jq '.currently.time' < $forecastfile`
date -r "$forecast_time"

summary=`/usr/local/bin/jq -r '.minutely.summary' < $forecastfile`
echo ${summary}