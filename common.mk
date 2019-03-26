result = bin
container_name = $(shell basename ${PWD})
common = $(shell echo ${PWD})/..
downloads := cmake.sh qtcreator.7z qtcreator_sdktool.7z
work_dir := /var/fpwork2

include ${common}/functions.mk

cmake.sh:
	$(call download,cmake.sh,https://cmake.org/files/LatestRelease/cmake-3.14.0-Linux-x86_64.sh)

qtcreator.7z:
	$(call download,qtcreator.7z,https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.8.2-0qtcreator.7z)

qtcreator_sdktool.7z:
	$(call download,qtcreator_sdktool.7z,https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.8.2-0qtcreator_sdktool.7z)

start.sh:
	cp ../start.sh .

common-dockerfiles:
	cd ${common}; m4 Dockerfile.qtc-cpp.m4 > Dockerfile.qtc-cpp; m4 Dockerfile.proxy.m4 > Dockerfile.proxy

dockerfile: common-dockerfiles
	mkdir -p ${result}; m4 Dockerfile.m4 > ${result}/Dockerfile

build: dockerfile ${downloads} ${custom_downloads}
	DOCKER_BUILDKIT=1 docker build -t ${container_name} -f ${result}/Dockerfile .

bash:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/bash

zsh:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/zsh

shell:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/zsh

run: build start.sh
	xhost local:root
	docker run ${custom_run_flags} --cpus $(shell nproc) -v ${common}/qtc-settings/QtProject:/root/.config/QtProject \
		-v ${HOME}/.ssh:/root/.ssh -v ${work_dir}:${work_dir} \
	 	--entrypoint /start.sh --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
		-ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm \
		--device /dev/dri ${container_name}

clean:
	rm cmake.sh qtcreator.7z qtcreator_sdktool.7z ${common}/Dockerfile.qtc-cpp

