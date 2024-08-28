#!/bin/bash

# 修改ssh配置以允许root登录
sed -i 's/#PermitRootLogin[^\n]*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin[^\n]*/PermitRootLogin yes/' /etc/ssh/sshd_config

# 启用密码验证
sed -i 's/PasswordAuthentication[^\n]*/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 重启ssh服务
sudo service ssh restart

echo "SSH configuration updated and service restarted."
