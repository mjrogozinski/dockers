COPY cmake.sh /
RUN chmod +x cmake.sh
RUN ./cmake.sh --skip-license --prefix=/usr && rm ./cmake.sh
