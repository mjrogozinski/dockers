FROM nvidia/cudagl:10.2-devel

ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES},display

RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-samples-$CUDA_PKG_VERSION xorg-dev libglu1-mesa-dev && \
    rm -rf /var/lib/apt/lists/*

include(../Dockerfile.qtc-cpp)
ENV QT_SCALE_FACTOR=1.5

