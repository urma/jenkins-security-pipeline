# Automated Security Pipeline
## Docker Swarm Setup
In order to stack the various services required by the pipeline stack, we use Docker Swarm. If your Docker host is not part of a swarm already, you need to run:
```
$ docker swarm init
```
## Docker Stack
Deploying the stack is done using `docker swarm deploy`:
```
$ docker stack deploy security-pipeline --compose-file docker-compose.yml
```
