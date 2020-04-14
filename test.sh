#!/bin/bash
RESULT=$(curl -sI http://54.189.46.60/|awk 'FNR==1 {print $2}')
if [ "$RESULT" == "200" ]; then
  echo "site is alive"
else
  echo "couldn't reach site"
  #exit 1
fi
