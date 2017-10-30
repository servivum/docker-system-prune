# Docker System Prune

This image allows you to run `docker system prune` within your Swarm cluster to cleanup your Docker hosts.

# Requirements

- Docker (>= 17.10)
- Docker Swarm Mode
- Mounted Docker socket

# Usage

## With Service Command

```bash
docker \
  service create --name docker-system-prune \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    --mode global \
    --restart-delay 86400s \
    servivum/docker-system-prune 
```

The command runs the container once per node in the Swarm cluster (`--mode global`), restarts it every day (`--restart-delay 86400s`).

Notice: The Docker socket is necessary for the Docker CLI to execute the command in the host.

## With Stack File

Same as above, but the service is defined in the stack file format. Copy the stack file to the Swarm manager and run the command.

```bash
docker stack deploy -c docker-compose.yml docker-system-prune
```