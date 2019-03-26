ENV http_proxy "syscmd(echo -n $http_proxy)"
ENV https_proxy "syscmd(echo -n $https_proxy)"
ENV ftp_proxy "syscmd(echo -n $ftp_proxy)"
ENV auto_proxy "syscmd(echo -n $auto_proxy)"
ENV rsync_proxy "syscmd(echo -n $rsync_proxy)"

RUN apt update && apt install -y git\
 	&& rm -rf /var/lib/apt/lists/*

RUN git config --global http.proxy $http_proxy
RUN git config --global https.proxy $https_proxy