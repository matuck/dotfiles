#!/bin/sh

sudo ip route add 192.168.10.0/24 via 192.168.1.1
sudo ip route add 192.168.20.0/24 via 192.168.1.1
