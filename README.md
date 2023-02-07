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
wget 
chmod 777 ./wg.sh
./wg.sh
```

## 3.添加更多的client(按需)
- 下载生成client的脚本
```
wget 
chmod 777 ./clients.sh
./clients.sh
```

## 4.开启系统转发数据包
```
vi /etc/sysctl.conf
net.ipv4.ip_forward = 1
sysctl -p
```

## 注意
- 一个client只能在同时在一个地方登录
