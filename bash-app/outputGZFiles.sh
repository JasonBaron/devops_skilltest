#!/bin/bash
srcURL='http://ftp.debian.org/debian/dists/jessie/Release'
regex = "^(.gz)$"
counter=0

if [[ -f $(command -v curl) ]]; then
    echo "Error: curl not found -- exiting"
    exit 1
else 
    curlOutput=$(curl -s ${srcURL}) || echo "Error: curl unable to complete request" && \
        echo ${curlOutput}  |grep -E "${regex}" |awk '{print "["NR"] Checksum: " $1 " FileName: "$3}'
done