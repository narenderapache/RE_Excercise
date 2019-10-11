#!/bin/bash
# this is to show exit status types
#set -e
# Assuming that only three servers are available at the moment
# If we have more servers, we can put them in a file and read the server name from the file
for server in google.com google.co.uk google.de
do
  echo "================ping started for $server==================="
#  Ping the server for 10 seconds
  ping -t 1 $server
#  return code of the last executed command
  if [ "$?" = "0" ]; then
      echo "ping is successful for $server"
  else
      echo "server $server is unreachable"
  fi
  echo "================ping ended for $server====================="
done

