FROM ubuntu:16.04

MAINTAINER Kay.Yan <kay.yan@daocloud.io>

ENV TERM dumb

RUN apt-get update && \
    apt-get install -y siege apache2-utils fio netperfmeter iperf sysbench

RUN curl -L -o /usr/local/src/gotty.tar.gz https://github.com/yudai/gotty/releases/download/v0.0.13/gotty_linux_amd64.tar.gz && \
    tar -zxvf /usr/local/src/gotty.tar.gz && \
    mv gotty /bin/gotty && \
    chmod +x /bin/gotty


EXPOSE 8080

ENTRYPOINT ["/bin/gotty"]