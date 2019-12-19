#!/bin/bash

set -e

# initialize variables
EXITCODE="0"
PROCESSES="php-fpm nginx"

# check to see if processes are running
for i in ${PROCESSES}
do
  if pgrep "${i}" >/dev/null 2>&1
  then
    # process is running
    echo "${i} is running"
  else
    # process is not running
    echo "${i} is NOT running"
    EXITCODE="1"
  fi
done

# exit returning proper exit code
exit ${EXITCODE}
