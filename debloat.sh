#!/bin/sh
package_file=packages.txt
logfile=adb.log
start=$(date +%s.%N)
packages=$(cat $package_file)
lines=$(wc -l < $package_file)
removed=0

printf "\n*** Removing defined packages, please wait ***\n\n"
printf "\n*** Starting new run ***\n\n\n" >> $logfile

for app in $packages; do
  #adb uninstall --user 0 "$app" > /dev/null 2>&1 && removed="$((removed+1))"   # Removes output instead of putting it in log (potential -q (quiet mode) flag)
  adb uninstall --user 0 "$app" >> $logfile && removed="$((removed+1))" # sends everything to $logfile, not very useful without line numbers or filename.
done

printf "\n*** Finished ***\n" >> $logfile

printf "Script Execution Time: $execution_time\n"
if [ $removed = "0" ]; then
  printf "No bloat to remove!\n\n"
else
  printf "Removed %s out of %s packages\n" "$removed" "$lines"
fi

duration=$(echo "$(date +%s.%N) - $start" | bc)
execution_time=`printf "%.2f seconds" %s` $duration
