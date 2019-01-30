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
	docker run ${custom_run_flags} -v ${common}/qtc-settings/QtProject:/root/.config/QtProject \
		-v ${HOME}/.ssh:/root/.ssh \
	 	--entrypoint /start.sh --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
		-ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm \
		--device /dev/dri ${container_name}

# next steps:
# 1. install autojump, clang-format, compilers, git, valgrind, gperf.
# 2. figure out whether to commit from container to git - I guess, yes
# 3. .ssh config, git config etc.
# 4. volumes for working on the code.
# 5. establish lifecycle of containers/images. One image will be used for a group of projects
# 6. deal with qtc-settings' synchronization. It will become clear after some time spent working on it.
#    separation of settings might be required to properly solve the issue.
# 7. custom container with required dependencies for each project? SDK-like image?
# 8. some convenience scripts e.g. clang-format recursive, using thread sanitizer, running tests etc.
# 9. Start working on code and see what else is needed. Images will evolve along with projects.
# 10. Fonts? Design improvements on the system level? Larger cursor