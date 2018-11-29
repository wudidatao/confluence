#!/bin/bash

. ./confluence_docker_bulid.sh

docker stop $confluence-name-$confluence-version-$confluence-port-$synchrony-port
