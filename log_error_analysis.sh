## Print "ERROR" lines from a log file and highlight the letter "ERROR" in RED ##

#!/bin/bash

LOG_FILE="/tmp/sample.log"

if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found!"
  exit 1
fi

grep "ERROR" "$LOG_FILE" | while read -r line; do
  echo -e "${line//ERROR/\e[31mERROR\e[0m}"
done
