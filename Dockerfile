# use ubuntu20.04
FROM ubuntu:20.04

RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal main restricted" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-updates main restricted" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal universe" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-updates universe" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-updates multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-security main restricted" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-security universe" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.bupt.edu.cn/ubuntu/ focal-security multiverse" >> /etc/apt/sources.list

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install --reinstall ca-certificates -y

RUN rm -rf /etc/apt/sources.list

RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal main restricted" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-updates main restricted" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal universe" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-updates universe" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-updates multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-security main restricted" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-security universe" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.bupt.edu.cn/ubuntu/ focal-security multiverse" >> /etc/apt/sources.list

RUN apt-get update -y
RUN apt-get upgrade -y

# install dependecy
RUN apt-get install -y git g++
RUN apt-get install -y libstdc++6 libncurses5 libsdl1.2debian
RUN apt-get install -y libxcb-xinerama0 libgl1-mesa-dev

#copy jdk
RUN mkdir /root/openjdk-11_linux-x64_bin
COPY ./openjdk-11_linux-x64_bin /root/openjdk-11_linux-x64_bin

# #copy Android
RUN mkdir /root/Android
COPY ./Android /root/Android

#get qt online installer
COPY ./qt-unified-linux-x64-4.5.2-online.run /root/qt-unified-linux-x64-4.5.2-online.run
RUN chmod +x /root/qt-unified-linux-x64-4.5.2-online.run
