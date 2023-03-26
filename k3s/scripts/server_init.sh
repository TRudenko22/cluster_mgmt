#!/bin/bash

SERVER_IP="$(dig +short "anton")"
USER="root"

k3sup install --ip $SERVER_IP --user $USER

