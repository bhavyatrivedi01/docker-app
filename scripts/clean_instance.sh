#!/usr/bin/env bash

docker ps
docker stop $(docker ps -q)


