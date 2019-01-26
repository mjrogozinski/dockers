FROM nvidia/cudagl:10.0-devel

ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES},display

RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-samples-$CUDA_PKG_VERSION && \
    rm -rf /var/lib/apt/lists/*

RUN ln -snf /usr/share/zoneinfo/Europe /etc/localtime && echo Europe > /etc/timezone

RUN  apt-get update \
  && apt-get install -y wget libdbus-1-3 \
  && rm -rf /var/lib/apt/lists/*

RUN apt update && apt-get install -y libxcb-keysyms1-dev libxcb-image0-dev \
    libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync0-dev libxcb-xfixes0-dev \
    libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev \
    libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxfixes-dev \
    libxi-dev libxrender-dev libxcb1-dev libx11-xcb-dev libxcb-glx0-dev x11vnc \
    xauth build-essential mesa-common-dev libglu1-mesa-dev libxkbcommon-dev \
    libxcb-xkb-dev libxslt1-dev p7zip-full \
    && rm -rf /var/lib/apt/lists/*

# RUN wget -q https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.8.1-0qtcreator.7z
# RUN wget -q https://download.qt.io/online/qtsdkrepository/linux_x64/desktop/tools_qtcreator/qt.tools.qtcreator/4.8.1-0qtcreator_sdktool.7z

COPY 4.8.1-0qtcreator.7z /
COPY 4.8.1-0qtcreator_sdktool.7z /

RUN mkdir -p /var/fpwork/tools/qtcreator-4.8.1
RUN ln -sf /var/fpwork/tools/qtcreator-4.8.1 /var/fpwork/tools/qtcreator-latest
RUN 7z x 4.8.1-0qtcreator.7z -o/var/fpwork/tools/qtcreator-latest && rm 4.8.1-0qtcreator.7z
RUN 7z x 4.8.1-0qtcreator_sdktool.7z -o/var/fpwork/tools/qtcreator-latest && rm 4.8.1-0qtcreator_sdktool.7z

RUN useradd -ms /bin/bash rogozins
RUN su rogozins
RUN chown -R rogozins /var/fpwork
RUN mkdir -p /var/fpwork/dev

ENTRYPOINT /var/fpwork/tools/qtcreator-latest/Tools/QtCreator/bin/qtcreator

