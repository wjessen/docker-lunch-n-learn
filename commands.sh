
# install:
# https://docs.docker.com/desktop/mac/install/
# install windows:
# https://docs.docker.com/desktop/windows/install/
# install linux:
# https://docs.docker.com/desktop/linux/install/

# run hello-world
docker run hello-world

# build Dockerfile
docker build -t docker-lunch .

# Ports: <HOST>:<CONTAINER>
# docker run <image>
docker run --init --name dl-container -p 3000:3000 docker-lunch

# detached mode
docker run -d --name dl-container -p 3000:3000 docker-lunch

# view running containers:
docker container ls
docker ps
# to view all containers, running or stopped, append --all

# exec
docker container exec docker-lunch-1 ls -als /

# logs
docker logs

# local dir volumes
docker run --init --name dl-container -p 3000:3000 -v $PWD/stuff:/app/stuff docker-lunch
# named volumes
docker run --init --name dl-container -p 3000:3000 -v lunch:/app/stff docker-lunch

# references:
# volumes: https://docs.docker.com/storage/volumes/
# dockerfile: https://docs.docker.com/engine/reference/builder
# presentation on how to make your own container software: https://youtu.be/Utf-A4rODH8
