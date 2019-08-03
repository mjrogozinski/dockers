result = bin
container_name = $(shell basename ${PWD})
user = $(shell whoami)
common = $(shell echo ${PWD})/..
downloads := cmake.sh qtcreator.7z qtcreator_sdktool.7z
work_dir := $(shell echo ${PWD})/work
container_work_dir := /home/${user}/work
repos_dir := /work/repos
container_repos_dir := /work/repos
start_dir := $(shell echo ${PWD})/start
container_start_dir := /start

include ${common}/functions.mk

cmake.sh:
	$(call download,cmake.sh,https://cmake.org/files/LatestRelease/cmake-3.15.0-Linux-x86_64.sh)

qtcreator.7z:
	$(call download,qtcreator.7z,https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.9.2-0qtcreator.7z)

qtcreator_sdktool.7z:
	$(call download,qtcreator_sdktool.7z,https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.9.2-0qtcreator_sdktool.7z)

common-dockerfiles:
	cd ${common}; m4 Dockerfile.qtc-cpp.m4 > Dockerfile.qtc-cpp; m4 Dockerfile.proxy.m4 > Dockerfile.proxy; \
	m4 Dockerfile.user.m4 > Dockerfile.user

dockerfile: common-dockerfiles
	mkdir -p ${result}; m4 Dockerfile.m4 > ${result}/Dockerfile

build-docker: dockerfile ${downloads} ${custom_downloads}
	DOCKER_BUILDKIT=1 docker build -t ${container_name} -f ${result}/Dockerfile .

build: build-docker
	mkdir -p ${work_dir}
	xhost local:root
	docker run ${custom_run_flags} --cpus $(shell nproc) \
		-v ${common}/qtc-settings/QtProject:/home/${user}/.config/QtProject \
		-v ${HOME}/.ssh:/root/.ssh -v ${HOME}/.ssh:/home/${user}/.ssh -v ${work_dir}:${container_work_dir} \
		-v ${repos_dir}:${container_repos_dir} -e REPOS=${container_repos_dir} -e WORK=${container_work_dir} \
		-v ${start_dir}:${container_start_dir} \
		--entrypoint ${container_start_dir}/build.sh --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
		-ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm \
		--device /dev/dri ${container_name}

bash:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/bash

zsh:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/zsh

shell:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/zsh

run: build
	docker run ${custom_run_flags} --cpus $(shell nproc) \
		-v ${common}/qtc-settings/QtProject:/home/${user}/.config/QtProject \
		-v ${HOME}/.ssh:/root/.ssh -v ${HOME}/.ssh:/home/${user}/.ssh -v ${work_dir}:${container_work_dir} \
		-v ${repos_dir}:${container_repos_dir} -e REPOS=${container_repos_dir} -e WORK=${container_work_dir} \
		-v ${start_dir}:${container_start_dir} \
	 	--entrypoint ${container_start_dir}/start.sh --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
		-ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm \
		--device /dev/dri ${container_name}

clean:
	rm ${downloads} ${custom_downloads} ${common}/Dockerfile.qtc-cpp ${common}/Dockerfile.proxy ${common}/Dockerfile.user

