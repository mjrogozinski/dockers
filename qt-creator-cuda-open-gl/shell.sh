#!/bin/bash
docker exec -it $(docker ps -qf ancestor=$(basename $PWD)) /bin/bash
