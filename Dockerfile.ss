FROM ubuntu:vivid

ADD sources.list.vivid /etc/apt/sources.list

RUN apt-get update; apt-get install -y --no-install-recommends python-pip iproute2

RUN pip install shadowsocks

ENTRYPOINT sslocal -s $SS_SERVER -p $SS_SERVER_PORT -b 0.0.0.0 -l 9055 -k $SS_PASS

