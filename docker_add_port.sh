#!/bin/sh

CONTAINER_IP=$1
CONTAINER_PORT=$2
HOST_PORT=$3

iptables -t nat -A POSTROUTING -s $CONTAINER_IP/32 -d $CONTAINER_IP/32 -p tcp -m tcp --dport $CONTAINER_PORT -j MASQUERADE
iptables -t nat -A DOCKER ! -i docker0 -p tcp -m tcp --dport $HOST_PORT -j DNAT --to-destination $CONTAINER_IP:$CONTAINER_PORT
iptables -t filter -A DOCKER -d $CONTAINER_IP/32 ! -i docker0 -o docker0 -p tcp -m tcp --dport $CONTAINER_PORT -j ACCEPT
