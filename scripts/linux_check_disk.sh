#!/bin/bash
# Checks disk usage and warns if above threshold

THRESHOLD=80  # percent
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Disk usage: $USAGE%"

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage above $THRESHOLD%!"
else
    echo "Disk usage is within safe limits."
fi
