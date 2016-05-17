FROM debian:jessie
MAINTAINER Dario Caruso <darioyzf@gmail.com>

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get autoclean -y
RUN apt-get autoremove -y
RUN apt-get install transmission-daemon -y
RUN mkdir /downloads
RUN mkdir /downloads/incomplete
CMD 'transmission-daemon -f'