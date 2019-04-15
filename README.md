
💖💖🐳HOW TO USE DOCKER 🐳💖💖

✨✨ ========== For the purposes of testing work samples ============ ✨✨

This repo is intended to make it easier and more convenient to evaluate work samples inside containers. It's intended to prevent

  - Have [Docker for Mac](https://download.docker.com/mac/stable/Docker.dmg) installed and running. 

  - Copy the dockerfile from this repo on to your machine (or just clone the whole repo)

  - Put the work sample you want to run in a directory on your machine. Take note of the absolute path of this directory (eg /Users/yourname/codedirectory)

  - To build the Dockerfile: Pick the dockerfile for the language you want to use, or just use `Dockerfile`, which has all of them. Then from the directory the dockerfile is in, do `docker build . -f <name-of-dockerfile> -t worksamples`. -t sets a tag for this build, to be used later.

  - To run the Docker container: do `docker run -it -v /absolute/path/to/review/code:/code worksamples`.  -i and -t start you off in an interactive terminal, leave these out to run the container without entering it.  

  - You should be at an Ubuntu command prompt, inside a directory with the code to be reviewed. Here you should be able to install dependencies, run tests, etc.

  - Type 'exit' when you're done inside the docker container

----------

### Addtional commands cheetsheat

  - To find the container ID of this container, use `docker ps -a`, look for one with an image named 'worksamples'. 

  - if you just want to run a command against a running container, do `docker exec <containerID> <command>`. Example: `docker exec 370 npm run test`

  - to stop a running container: `docker stop <containerID>`.

  - to restart and re-enter this container, `docker start -i <containerID>`.

  - to delete a container (recommended if you're starting a new review) do `docker rm <containerID>`

  - to map a port so you can access it from your machine:
    - Let's say something inside your docker container is running on port 3000, and you want to be able to look at it on your host computer. In the docker run command, put `-p 3000:3000`. Change the port number after the colon if you want it to be mapped to a different port on your host machine.
