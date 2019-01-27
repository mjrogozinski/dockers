result = bin
container_name = $(shell basename ${PWD})
common = $(shell echo ${PWD})/..

dockerfile:
	mkdir -p ${result}; m4 Dockerfile.m4 > ${result}/Dockerfile
	
build: dockerfile
	DOCKER_BUILDKIT=1 docker build -t ${container_name} -f ${result}/Dockerfile .

shell:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/bash

run: build
	xhost local:root
	docker run ${custom_run_flags} -v ${common}/qtc-settings/QtProject:/root/.config/QtProject\
	 	--entrypoint /var/fpwork/tools/qtcreator-latest/Tools/QtCreator/bin/qtcreator -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm --device /dev/dri ${container_name}