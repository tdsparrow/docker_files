FROM tdsparrow/base:xenial

RUN apt-get update; apt-get install -y --no-install-recommends golang

