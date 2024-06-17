FROM continuumio/anaconda3

WORKDIR /usr/src/app
COPY fastaionKMLCI.sh ./

RUN bash fastaionKMLCI.sh
