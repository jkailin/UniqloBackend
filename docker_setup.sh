#!/bin/bash

docker stop uniqlo
docker image build -t uniqlo .
docker container run --publish 8000:8080 --detach --rm --name uniqlo uniqlo
docker logs -f uniqlo
