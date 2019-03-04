#!/bin/sh
# waiting.sh
cmd="$@"
echo "Database NOT ready - waiting"
while true;
do
  curl -s ${CONNECTION_STRING/:*/}:1521
  [ $? -eq 52 ] && break
  >&2 echo -n "."
  sleep 2
done
echo "Database is UP - executing command"
exec $cmd
