FROM ubuntu:latest

WORKDIR /root

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3

RUN mkdir A B C files
WORKDIR /root/files
RUN touch a.txt b.txt c.txt
WORKDIR /root

RUN git clone https://github.com/ParkEunHyeok/git_advanced_1.git