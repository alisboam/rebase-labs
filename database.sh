#!/bin/sh

docker run --network docker_app -it app rake db:create
docker run --network docker_app -it app rake db:migrate