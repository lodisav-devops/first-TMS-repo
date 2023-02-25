#! /bin/env bash

docker-machine create \
	--driver amazonec2 \
	--amazonec2-region eu-west-1 \
	--amazonec2-ami ami-07d8796a2b0f8d29c \
	--amazonec2-instance-type t2.medium \
    --amazonec2-open-port 30100 \
	--amazonec2-open-port 30200 \
	--amazonec2-open-port 80 \
	--amazonec2-open-port 8080 \
	--amazonec2-open-port 6443 \
lodis-docker-machine
