#!/bin/bash
docker stop `docker ps -a -q`
docker rm `docker ps -a -q`
docker rmi `docker images`
docker volume rm `docker volume ls -q`

