#!/bin/bash
~/prj/textbar/textbar-mountcheck.sh
echo -n " "
~/prj/textbar/textbar-weather.sh
# ~/prj/textbar/textbar-giantbomb.sh
echo "Crashplan"
echo "-----"
tail -n100 /Library/Logs/CrashPlan/backup_files.log.0 | sed -n -E 's/^I (.*) [0-9]+ [a-z0-9]+ [0-9] (.*) \([0-9]+\) \[.*\]$/\1 \2/p' | tail -n10
