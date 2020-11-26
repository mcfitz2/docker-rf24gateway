FROM alpine:latest
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
RUN git clone https://github.com/tmrh20/RF24Gateway.git && cd RF24Gateway && make -B -C ${ROOT_PATH}/RF24Gateway && make install -C ${ROOT_PATH}/RF24Gateway
