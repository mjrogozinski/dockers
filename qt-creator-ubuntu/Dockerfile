FROM ubuntu:latest

RUN apt update && apt install -y freeglut3-dev mesa-utils software-properties-common \
 	&& rm -rf /var/lib/apt/lists/*
RUN add-apt-repository ppa:ubuntu-x-swat/updates
RUN apt-get dist-upgrade -y

RUN ln -snf /usr/share/zoneinfo/Europe /etc/localtime && echo Europe > /etc/timezone

RUN apt update && apt-get install -y wget libdbus-1-3 qtcreator p7zip-full \
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