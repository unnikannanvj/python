#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

FILE=$1

if [ ! -f "$FILE" ]; then
  echo "File not found"
  exit 1
fi

SIZE=$(stat -f %z "$FILE") 

if [ -n "$SIZE" ] && [ "$SIZE" -gt 1048576 ]; then
  echo "ALERT: File size exceeds 1 MB"
else
  echo "File size is ok"
fi

