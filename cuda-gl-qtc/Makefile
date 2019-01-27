result = bin
container_name = $(shell basename ${PWD})

dockerfile:
	mkdir -p ${result}; m4 Dockerfile.m4 > ${result}/Dockerfile

build: dockerfile
	DOCKER_BUILDKIT=1 nvidia-docker build -t ${container_name} -f ${result}/Dockerfile .

run: build
	xhost local:root
	nvidia-docker run --entrypoint /var/fpwork/tools/qtcreator-latest/Tools/QtCreator/bin/qtcreator -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm --device /dev/dri ${container_name}

shell:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/bash



