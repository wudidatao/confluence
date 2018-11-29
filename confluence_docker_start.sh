#!/bin/bash

. ./confluence_docker_bulid.sh

confluence-port=8090
synchrony-port=8091

docker run -d -p $confluence-port:8090 -p $synchrony-port:8091 -v /data/confluence/backups/:/var/atlassian/application-data/confluence/backups/ --name $confluence-name-$confluence-version-$confluence-port-$synchrony-port $confluence-name:$confluence-version
