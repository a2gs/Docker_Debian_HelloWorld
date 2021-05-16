#Andre Augusto Giannotti Scota

ARG VERSION=0.1

FROM debian:latest

COPY ./src/hw.c /home/testApp/
COPY ./src/makefile /home/testApp/

WORKDIR /home/testApp/

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install gcc make

RUN make

CMD ["./hw"]
