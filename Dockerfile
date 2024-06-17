FROM ubuntu:latest

WORKDIR /usr/src/app
COPY fastaionKMLCI.sh ./

RUN bash fastaionKMLCI.sh
