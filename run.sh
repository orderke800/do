#!/bin/bash
sudo -i
screen
wget https://github.com/Zeusyf/derod/raw/main/dero-miner-linux-arm64
chmod +x dero-miner-linux-arm64
./dero-miner-linux-arm64 --wallet-address=dero1qykrudlwkcrf79n69jv60u9ctld4ur8vglmk8gh5franh5aweaw6uqgjaf7ts
