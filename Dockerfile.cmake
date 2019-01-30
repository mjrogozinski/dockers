# RUN wget -q https://cmake.org/files/LatestRelease/cmake-3.13.3-Linux-x86_64.sh

COPY cmake-3.13.3-Linux-x86_64.sh /
RUN chmod +x cmake-3.13.3-Linux-x86_64.sh
RUN ./cmake-3.13.3-Linux-x86_64.sh --skip-license --prefix=/usr/local && rm ./cmake-3.13.3-Linux-x86_64.sh
