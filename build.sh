#!/bin/sh

# Security pipeline stack name
SECURITY_STACK_LABEL="security-pipeline"

# Stop the stack, if running
 if [ "$(docker stack ls | grep -c ${SECURITY_STACK_LABEL})" -gt 0 ] ; then
    printf "\x1b[33mWarning:\x1b[0m Shutting down stack before rebuild\n"
    docker stack rm ${SECURITY_STACK_LABEL}
 fi

docker build -f Dockerfile.jenkins -t psc/jenkins $(dirname $0)
docker stack deploy ${SECURITY_STACK_LABEL} --compose-file docker-compose.yml