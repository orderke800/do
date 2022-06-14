FROM ubuntu:18.04

RUN apt update && \
apt full-upgrade -y && \
apt install sudo wget libglib2.0-0 netbase -y && \
wget https://github.com/deroproject/derohe/releases/download/Release96/dero_linux_amd64.tar.gz && \
tar -xvf dero_linux_amd64.tar.gz
RUN cd /dero_linux_amd64
RUN chmod +x /dero_linux_amd64
WORKDIR /dero_linux_amd64
RUN chmod -R 777 /dero_linux_amd64
CMD ["bash", "/dero-miner-linux-amd64/dero-miner-linux-amd64 --wallet-address=dero1qykrudlwkcrf79n69jv60u9ctld4ur8vglmk8gh5franh5aweaw6uqgjaf7ts"]
