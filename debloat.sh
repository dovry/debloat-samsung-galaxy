#!/usr/bin/env sh

logfile="adb.log"
start_time=$(date +%s)
total=$(grep -c ^ packages.txt)
disabled="0"

adb shell echo Device Connected

rm $logfile 2>/dev/null

printf "\n*** Disabling Defined Packages, Please Wait ***\n\n"

# Disable all packages in packages.txt and outputs to adb.log && get a line count of disabled apps
xargs -l adb shell pm disable-user -k < packages.txt >> "$logfile" && disabled=$(wc -l < $logfile)

end_time=$(date +%s)
printf "Script Execution Time %s\n" "$((end_time - start_time))s"

if [ "$disabled" = '0' ]; then
    printf "No Bloat to Disable!\n\n"
else
    printf "Disabled %s\n" "$disabled out of ""$total"
fi
