RUN echo "root:root" | chpasswd

RUN  apt update \
  && apt install -y sudo \
  && rm -rf /var/lib/apt/lists/*

RUN adduser --shell /bin/bash syscmd(echo -n $(whoami))
RUN echo "syscmd(echo -n $(whoami)):syscmd(echo -n $(whoami))" | chpasswd
RUN sudo adduser syscmd(echo -n $(whoami)) sudo
USER syscmd(echo -n $(whoami))
RUN git config --global user.name syscmd(echo -n $(whoami))
RUN git config --global user.email syscmd(echo -n $(git config user.email))
RUN git config --global color.ui true

RUN echo 'alias qtc="/var/fpwork/tools/qtcreator/Tools/QtCreator/bin/qtcreator"' >> ~/.bashrc
RUN echo 'alias q="qtc ../CMakeLists.txt"' >> ~/.bashrc

WORKDIR /home/syscmd(echo -n $(whoami))