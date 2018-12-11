#!/bin/bash

confluence_name=confluence-server-crack
confluence_version=6.6

docker build --rm -t $confluence_name:$confluence_version .
