# *Support Android Cross compilation Docker*
  
**X_Ubuntu** 

## 系统要求
Ubutnu20.04

## 安装Docker
1. 自行

## 本机准备必要的文件，放在当前目录下
1. openjdk-11_linux-x64_bin
2. Android
3. qt-unified-linux-x64-4.5.2-online.run

### 镜像制作

## 1.编译镜像
```sh
./build.sh
```
## 2.启动镜像
```sh
 docker run -dit -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY  -e GDK_SCALE -e GDK_DPI_SCALE --name x_ubuntu x_ubuntu:min
 docker ps -a 
 docker exec -it container_id /bin/bash
```
## 3.进入容器，并手动安装部分软件
```sh
apt-get install libfontconfig1 fontconfig libfontconfig1-dev cmake ninja-build gnome-session gdm3 -y
cd /root
./qt-unified-linux-x64-4.5.2-online.run
```

## 4.Done








