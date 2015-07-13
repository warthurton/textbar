#!/bin/bash

forecast=~/Dropbox/sys/status/ForecastRochester.json

echo `/usr/local/bin/jq '.currently.temperature' < $forecast`
forecast_time=`/usr/local/bin/jq '.currently.time' < $forecast`
date -r "$forecast_time"