FROM ubuntu:18.04

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
RUN apt update && \
apt full-upgrade -y && \
apt install sudo wget libglib2.0-0 netbase screen -y && \
wget https://github.com/deroproject/derohe/releases/download/Release96/dero_linux_amd64.tar.gz && \
tar -xvf dero_linux_amd64.tar.gz
RUN cd /dero_linux_amd64
RUN chmod +x /dero_linux_amd64
WORKDIR /dero_linux_amd64
RUN chmod -R 777 /dero_linux_amd64
CMD /dero_linux_amd64/dero-miner-linux-amd64 --wallet-address=dero1qyrsrhwcwqn8dzk3wnxggqtsy6reut7e387yvwp4n8l7jldj3k97jqq3rcxfj --daemon-rpc-address=sg.fastpool.xyz:10100
