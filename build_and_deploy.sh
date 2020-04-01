#! /bin/sh
# Helper file to build and deploy to the innoactive registry.

version='0.1.0'
REGISTRY_HOST='registry.docker.innoactive.de'
docker login --username=${DOCKER_REGISTRY_USERNAME} --password=${DOCKER_REGISTRY_PASSWORD} ${REGISTRY_HOST}

tag=${REGISTRY_HOST}'/docker-postgres-backup-local:'${version}
docker build -t ${tag} .
docker push ${tag}