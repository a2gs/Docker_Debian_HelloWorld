#Andre Augusto Giannotti Scota

ARG VERSION=0.1

FROM debian:latest

COPY ./src/hw.c /home/testApp/
COPY ./src/makefile /home/testApp/

WORKDIR /home/testApp/

RUN apt-get update && apt-get install -y gcc make

RUN make

CMD ["./hw"]
