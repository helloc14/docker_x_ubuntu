cp ~/openjdk-11_linux-x64_bin ./ -r
cp ~/Android ./ -r
cp ~/qt-unified-linux-x64-4.5.2-online.run ./

docker build -t x_ubuntu:min .

