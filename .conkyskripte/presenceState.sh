#!/bin/bash
if (( $# < 1 )); then
  echo "Skript tells the current state of presence."; echo ""
  echo "Usage:"
  echo "    ./toggleState <name> [<address>]"
  echo "Examples:"
  echo "    ./toggleState dogi"
  echo "    ./toggleState dogi 10.12.114.181:3000"
  exit
fi
address="10.12.114.181:3000"
state=$(echo $(curl -s -X GET -H "Content-Type:application/json" http://$address/api/state/get/) | grep -o "$1[^}]*}" | grep -o 'state[^}]*}' | grep -o ':".*"' | grep -o 'o[^\"]*')
echo "$state"
