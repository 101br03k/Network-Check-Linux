#!/bin/sh
clear
date > ping1.txt
ping -c1 8.8.8.8 >> ping1.txt
sed -i '7d' ping1.txt
sed -i '6d' ping1.txt
sed -i '5d' ping1.txt
sed -i '4d' ping1.txt
sed -i '2d' ping1.txt
#sed -i '/icmp_seq=1/d' ping1.txt
#sed -e 's/ping1.txt\<ttl=115/>//g'
more log.txt > log2.txt
more ping1.txt > log.txt
echo "." >> log.txt
more log2.txt >> log.txt
more ping1.txt