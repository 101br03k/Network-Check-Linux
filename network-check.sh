#!/bin/sh
clear
date > ~/linux-config/network-check/ping2.txt
ping -c5 8.8.8.8 > ~/linux-config/network-check/ping1.txt
sed -i '9d' ~/linux-config/network-check/ping1.txt
sed -i '8d' ~/linux-config/network-check/ping1.txt
sed -i '7d' ~/linux-config/network-check/ping1.txt
sed -i '6d' ~/linux-config/network-check/ping1.txt
sed -i '5d' ~/linux-config/network-check/ping1.txt
sed -i '4d' ~/linux-config/network-check/ping1.txt
sed -i '3d' ~/linux-config/network-check/ping1.txt
sed -i '2d' ~/linux-config/network-check/ping1.txt
sed -i '1d' ~/linux-config/network-check/ping1.txt
sed -r 's/^.{23}//' < ~/linux-config/network-check/ping1.txt >> ~/linux-config/network-check/ping2.txt
more ~/linux-config/network-check/ping2.txt
