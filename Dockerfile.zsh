RUN  apt update \
  && apt install -y zsh wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
RUN chmod +x install.sh
RUN ./install.sh && rm ./install.sh

RUN echo 'ZSH_THEME="robbyrussell"' >> ~/.zshrc
