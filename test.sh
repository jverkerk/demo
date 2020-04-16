#!/bin/bash

printf "\n\n\n\n"
printf "============================\n"
printf "=    Site tests run here   =\n"
printf "============================\n"
printf "Test #1: Site connectivity\n"
RESULT=$(curl -sI http://54.189.46.60/|awk 'FNR==1 {print $2}')
if [ "$RESULT" == "200" ]; then
  printf "  Test #1 Passed: site is alive\n"
else
  printf "  Test #1 Failed: couldn't reach site\n"
  exit 1
fi
