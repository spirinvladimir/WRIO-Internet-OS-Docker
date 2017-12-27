#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_login_1 | awk '{print $1}'` )
cd /srv/docker/Wrio-Docker-Production
docker pull webrunes/login-wrio-app && /usr/local/bin/ddocker-compose up -d login