result = bin
container_name = $(shell basename ${PWD})
common = $(shell echo ${PWD})/..
downloads := cmake.sh qtcreator.7z qtcreator_sdktool.7z
work_dir := /var/fpwork2

function download
    ifeq(,$(wildcard $(1)))
        ifeq(,$(wildcard ../$(1)))
            wget -O ../$(1) $(2)
        endif
        cp ../$(1) .
    endif
    touch $(1)
endef

cmake.sh:
	$(eval $(call download,cmake.sh,https://cmake.org/files/LatestRelease/cmake-3.13.4-Linux-x86_64.sh))

qtcreator.7z:
	$(eval $(call download,qtcreator.7z,https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.8.2-0qtcreator.7z))

qtcreator_sdktool.7z:
	$(eval $(call download,qtcreator_sdktool.7z,https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.8.2-0qtcreator_sdktool.7z))

start.sh:
	cp ../start.sh .

dockerfile:
	mkdir -p ${result}; m4 Dockerfile.m4 > ${result}/Dockerfile

build: dockerfile ${downloads}
	DOCKER_BUILDKIT=1 docker build -t ${container_name} -f ${result}/Dockerfile .

shell:
	docker exec -it $(shell docker ps -qf ancestor=${container_name}) /bin/bash

run: build start.sh
	xhost local:root
	docker run ${custom_run_flags} --cpus $(shell nproc) -v ${common}/qtc-settings/QtProject:/root/.config/QtProject \
		-v ${HOME}/.ssh:/root/.ssh -v ${work_dir}:${work_dir} \
	 	--entrypoint /start.sh --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
		-ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm \
		--device /dev/dri ${container_name}

clean:
	rm cmake.sh qtcreator.7z qtcreator_sdktool.7z

