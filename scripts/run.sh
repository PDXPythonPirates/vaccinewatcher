#!/usr/bin/env python

usage="Usage: $0 <VERSION TAG> <FLASK_ENV>"

if [[ "$1" ]]
then
  CITY == $1
else
  CITY == "Houston"
fi

if [[ "$2" ]]
then
  STATE == $2
else
  STATE == "Texas"
fi

if [[ "$3" ]]
then
  STATE_ABBR == $3
else
  STATE_ABBR == "TX"
fi

if [[ "$4" ]]
then
  ZIPCODE == $4
else
  ZIPCODE == "77056"
fi

# Run Docker container
docker run --platform linux/arm64/v8 vaccine-watcher:latest --city=CITY --state=STATE --abbr=STATE_ABBR --zip=ZIPCODE

# Example Run: ./scripts/run.sh --city "Woodland" --state "California" --abbr "CA" --zip "95776"