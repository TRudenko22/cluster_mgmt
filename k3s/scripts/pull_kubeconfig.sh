#!/bin/bash

CONFIG="$HOME/.kube/config"
SERVER="anton"

scp root@$SERVER:/etc/rancher/k3s/k3s.yaml "$CONFIG"
sed -i "s/127.0.0.1/$(dig +short $SERVER)/g" "$CONFIG" 
