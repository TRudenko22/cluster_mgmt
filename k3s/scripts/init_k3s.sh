#!/bin/bash

SERVER_IP="$(dig +short "anton")"
USER="root"
NODES=(
    "node0"
    "node1"
    "node2"
    "node3"
    "node4"
    "node5"
    )

#k3sup install --ip $SERVER_IP --user $USER

for node in "${NODES[@]}"; do
    AGENT_IP="$(dig +short "$node")"
    echo "Adding --> ${AGENT_IP}"

    k3sup join --ip "$AGENT_IP" --server-ip "$SERVER_IP" --user "$USER"
done
