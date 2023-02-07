# wireguard-install
wireguard install step

## 1.wireguard install
- ubuntu
```
apt-get update
apt-get install wireguard-dkms wireguard-tools
```

- 其他安装方法请参考官网，我只提供我实践过的方式[wireguard 官网地址](https://www.wireguard.com/install/#ubuntu-module-tools)

## 2.配置wireguard
```
wget https://github.com/tq102412/wireguard-install/blob/main/wg.sh
chmod 777 ./wg.sh
./wg.sh

# 注意后续输出的client配置文件，后面要用
```

## 3.配置客户端
- 在本地建一个`client.conf`然后把上文的配置项`copy`进去，修改里面的服务器地址为公网地址
- [客户端下载地址](https://www.wireguard.com/install/#ubuntu-module-tools)

## 4.添加更多的client(按需)
```
wget https://github.com/tq102412/wireguard-install/blob/main/clients.sh
chmod 777 ./clients.sh
./clients.sh
```

## 5.开启系统转发数据包
```
vi /etc/sysctl.conf
net.ipv4.ip_forward = 1
sysctl -p
```

## 6.重启wireguard
```
wg-quick down wg0
wg-quick up wg0
```

## 注意
- 一个client只能在同时在一个地方登录
- 如果连接不上请重试几次，并检查服务器的安全策略
