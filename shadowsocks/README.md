# Tutorial
## Clone
```shell
git clone https://github.com/isleetao/dockerfile.git
```
## Build
```shell
cd dockerfile/shadowsocks/
docker build .
```
## Run
```shell
# default - port:10086 password:123456 method:rc4-md5
docker run -dt --name ss -p 10086:10086 [docker-image-id]
```

## Other Params
```shell
docker run -dt --name ss -p 8086:8086 [docker-image-id] -p 8086 -k 666666 -m aes-256-cfb
```

## Config File
Create a config file /etc/ssconfig.json. Example:
```json
{
    "server":"my_server_ip",
    "server_port":8388,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"mypassword",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
```
To run:
```shell
docker run -dt --name ss -p 8388:8388 [docker-image-id] -path /etc/ssconfig.json
```