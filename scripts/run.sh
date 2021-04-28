#!/bin/bash

if [ "$1" ]; then
  export CITY=$1
else
  export CITY="Houston"
fi

if [ "$2" ]; then
  export STATE=$2
else
  export STATE="Texas"
fi

if [ "$3" ];
then
  export STATE_ABBR=$3
else
  export STATE_ABBR="TX"
fi

if [ "$4" ]
then
  export ZIPCODE=$4
else
  export ZIPCODE="77056"
fi

# Run Docker container
docker run vaccine-watcher:latest --city=$CITY --state=$STATE --abbr=$STATE_ABBR --zip=$ZIPCODE

# Example Run: ./scripts/run.sh "Woodland" "California" "CA" "95776"        