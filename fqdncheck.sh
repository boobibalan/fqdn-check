#!/bin/bash
#fqdncheck
for i in 'cat ip.txt'
do
echo "$i `nslookup $i | grep name | awk '{print $4}'`" >> output.txt
done
