sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/webchain-network/webchain-miner.git
cd webchain-miner
-DWITH_HTTPD=OFF
cmake
make -j$(nproc)
./webchain-miner -o pool.webchain.network:3333 -u 0xe0E2A01843DB1636AaED247da3a8757EcDe89f6E -p x
