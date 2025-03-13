#/bin/bash
wget https://repo.zabbix.com/zabbix/7.2/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.2+ubuntu22.04_all.deb
dpkg -i zabbix-release_latest_7.2+ubuntu22.04_all.deb
apt update
apt install zabbix-agent2 -y
echo "Server=192.168.8.40" >>/etc/zabbix/zabbix_agent2.conf
systemctl restart zabbix-agent
systemctl restart zabbix-agent2
systemctl enable zabbix-agent2
