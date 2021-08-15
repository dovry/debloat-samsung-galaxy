#!/bin/sh

logfile=adb.log
start_time=`date +%s`
total=$(grep -c ^ packages.txt)
disabled=0

adb shell echo Device Connected

rm $logfile 2>/dev/null

printf "\n*** Disabling defined packages, please wait ***\n\n"

# Disable all packages in packages.txt and outputs to adb.log && get a line count of disabled apps
xargs -l adb shell pm disable-user -k < packages.txt >> "$logfile" && disabled=$(grep -c ^ adb.log)

echo Script Execution Time $(expr `date +%s` - $start_time)s

if [ "$disabled" = '0' ]; then
    echo No bloat to disable!
else
    echo "Disabled $disabled out of $total"
fi
