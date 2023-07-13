wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz
tar zxvf udocker-1.3.9.tar.gz
export PATH=pwd/udocker-1.3.9/udocker:$PATH

wget https://github.com/indigo-dc/udocker/releases/download/1.3.9/udocker-1.3.9.tar.gz && tar zxvf udocker-1.3.9.tar.gz && mv udocker-1.3.9/udocker udocker && rm -rf udocker-1.3.9
cd udocker
./udocker pull debian:bullseye
./udocker create --name=debian debian:bullseye
./udocker udocker run debian /bin/bash
cd udocker

sudo apt-get update
sudo apt-get install tmate

wget https://raw.githubusercontent.com/ellenregin1/tset2/main/sh1.sh
chmod +x sh1.sh
./sh1.sh
