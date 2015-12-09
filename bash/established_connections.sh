#!/bin/bash

set -e

if [ -z "$1" ]; then
    adapter='eth0'
else
    adapter=$1
fi

function main {
  for conn in `connections`; do
      echo "$conn `conn_count`"
  done
}

function get_ip {
  ifconfig $adapter | 
  grep 'inet ' | 
  awk '{print $2}'
}

function connections {
  netstat -nat |
  grep EST |
  grep `get_ip` |
  awk '{print $5}' |
  sort |
  uniq
}

function conn_count {
  netstat -nat |
  grep $conn |
  wc -l
}

echo "Established connections with `get_ip`:"

main
