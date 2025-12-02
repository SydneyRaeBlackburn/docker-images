#! /bin/bash

OS=$(uname -s)
# display OS version

case ${OS} in
  'Darwin')
    top -l 1 | grep 'CPU usage'
    ;;
  'Linux')
    top -n 1 | grep 'CPU:'
    ;;
  *)
    echo "Unsupported Operating System: ${OS}"
esac

# top: cpu = 100 - idle, mem = free, used (free on linux)
# df -h (used and available for /)
# ps for top 5 cpu and mem processes
# uptime for uptime