## docker_kafka_eagle

单节点的一个kafka容器环境，包括zookeeper、kafka、kafka eagle。

### Prerequisites 项目使用条件

安装docker和docker-compose即可

### Usage 使用

修改docker-compose.yml文件中的192.168.1.35为实际IP，然后
```
docker-compose up -d
```
浏览器打开http://YourIP:8048/ke 用户名admin，密码123456

注：kafka eagle通过jmx获取kafka服务信息时可能会报No route to host (Host unreachable)，是防火墙问题，方案如下：
```
#1 关闭防火墙
systemctl stop firewalld.service
#2 防火墙添加开放端口
firewall-cmd --zone=public --add-port=9999/tcp --permanent
firewall-cmd --reload 
```

### reference 参考

kafka-docker https://github.com/wurstmeister/kafka-docker

kafka eagle https://github.com/smartloli/kafka-eagle

### Screenshot 截图
![image](http://cdn.guitang.fun/kafka_eagle_main.png)
![image](http://cdn.guitang.fun/kafka_eagle_query.png)
