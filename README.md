# ReasonML Docker

Docker container with all tools/dependencies for ReasonML / React development using Visual Studio Code

docker-compose is used as an easy way to build the container and apply some settings:

- X forwarding, enables running X application in the container and get output on the X server running on the host. Useful for Visual Studio Code, Chrome, Firefox, ...
- SSH forwarding to host system, and mapping your .gitconfig into the container: allows to use Git/SSH with the settings/keys from you host system, within the container
- Exposes the "shared" directory in your home folder (host system) as "shared" directory in the container (/home/developer/shared)

## How to use?

1. Build & run the container

./run-docker-compose

This script will expose some SSH related environment variables to the container

2. Get a terminal on the running container

In a different terminal, do:

docker exec -it reasonmldocker_dev_1 /bin/bash

You now are logged in to the container as the developer user. 

Useful tools:

- fish (nice terminal)
- tmux (spit screen terminal)
- code (Visual Studio Code, has ReasonML plugin preinstalled)
- firefox (browser to play with the results of your ReasonML projects)
- chrome (lets you get Google's opinion on your ReasonML projects)
- npm / yarn (package managers)




