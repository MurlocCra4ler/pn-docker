FROM ubuntu:focal

RUN apt update
RUN apt upgrade
RUN apt install -y git build-essential
WORKDIR /home
RUN git clone https://github.com/MurlocCra4ler/pn-monitor.git
WORKDIR /home/pn-monitor
RUN make

CMD ./monitor