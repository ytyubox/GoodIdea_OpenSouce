#!/bin/bash
secs=1
echo -e "GET http://google.com HTTP/1.0\n\n" | nc -G 3 google.com 80 > /dev/null 2>&1

if [ $? -eq 0 ] ; then
    echo "Online"
else
    echo "Offline"
fi
