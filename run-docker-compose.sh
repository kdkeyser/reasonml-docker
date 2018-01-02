#!/bin/bash
export SSH_AUTH_SOCK_DIR=$(dirname $SSH_AUTH_SOCK)
docker-compose up
