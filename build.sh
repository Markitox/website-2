#!/usr/bin/env bash

VER=$(grep "version" website.properties|cut -d'=' -f2)  && docker build -t cloudnativemx/website:latest -t cloudnativemx/website:$VER . && \
#echo "fin" 
docker push cloudnativemx/website:$VER && docker push cloudnativemx/website:latest && git release $VER
