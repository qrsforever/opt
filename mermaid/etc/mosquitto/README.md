---

title: README
date: 2018-02-27 13:25:02
tags: [  ]
categories: [  ]

---

# 创建连接用户名密码

```
mosquitto_passwd -c /opt/mermaid/etc/mosquitto/password.txt "air-1&9RrZXcGctqe"
```

# 运行
```
mosquitto -v -c /opt/mermaid/etc/mosquitto/mosquitto.1883.conf
mosquitto -v -c /opt/mermaid/etc/mosquitto/mosquitto.8883.conf
```
