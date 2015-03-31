FROM ubuntu:14.04

ADD dropbox-lnx.x86_64-3.2.9.tar.gz /
ADD dropbox.py /

RUN apt-get install -qy python

RUN mkdir /data
RUN sed -i 's/\/root/\/data/' /etc/passwd

VOLUME /data
ENV HOME /data

CMD /.dropbox-dist/dropboxd
