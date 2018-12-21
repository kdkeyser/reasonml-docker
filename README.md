# ReasonML Docker

Docker container with all tools/dependencies for ReasonML / React development using Visual Studio Code

The included bash script builds the container and runs it with a number of practical features enabled:

- X forwarding, enables running X application in the container and get output on the X server running on the host. Useful for Visual Studio Code, Chrome, Firefox, ...
- SSH forwarding to host system, and mapping your .gitconfig into the container: allows to use Git/SSH with the settings/keys from you host system, within the container
- Exposes the "shared" directory in your home folder (host system) as "shared" directory in the container (/home/developer/shared)

## How to use?

1. Build & run the container

./run-docker.sh

You now are logged in to the container as the developer user. By default, tmux is running as the shell. 

## Useful tools:

- fish (nice terminal)
- tmux (spit screen terminal)
- code (Visual Studio Code, has ReasonML plugin preinstalled)
- firefox (browser to play with the results of your ReasonML projects)
- chrome (lets you get Google's opinion on your ReasonML projects)
- npm / yarn (package managers)




