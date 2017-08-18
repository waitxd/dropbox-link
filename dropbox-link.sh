#!/bin/sh

fifo_name=$(mktemp -u -t dbfifo.XXXXXX)
if ! mkfifo "$fifo_name" ; then
  echo "Cant create fifo!" >&2
  exit 1
fi

trap 'rm -f "$fifo_name"' EXIT

dir=`dirname $0`
${dir}/.dropbox-dist/dropboxd > ${fifo_name} &
export APP_PID=$!

while read -r line
do
 if echo "$line" | grep -q cli_link_nonce
 then
   echo "$line" | cut -d ' ' -f3
   break
 fi
done < ${fifo_name}

kill ${APP_PID}
wait ${APP_PID} 2>/dev/null