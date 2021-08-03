#!/bin/bash
app="dbsampleapp"
tag_base="eu.gcr.io/gobind-proj-sandbox/"
docker build -t ${app} ../
docker tag ${app} ${tag_base}${app}:v1
docker push ${tag_base}${app}:v1
# docker run -d -p 56733:80 \
#   --name=${app} \
#   -v $PWD:/app ${app}
