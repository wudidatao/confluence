#!/bin/bash

confluence-name=confluence-server-crack
confluence-version=6.6

docker build --rm -t $confluence-name:$confluence-version .
