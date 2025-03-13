#/bin/bash
rpm -Uvh https://repo.zabbix.com/zabbix/7.2/release/rocky/8/noarch/zabbix-release-latest-7.2.el8.noarch.rpm
dnf clean all
dnf install zabbix-agent
hostnamectl
echo "Server=192.168.8.40" >>/etc/zabbix/zabbix_agentd.conf
systemctl restart zabbix-agent && systemctl enable zabbix-agent
