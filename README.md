#!/bin/bash

#编译
./confluence_docker_bulid.sh
#启动容器
./confluence_docker_start.sh
#停止容器
./confluence_docker_stop.sh

#mysql环境需要另外创建，mysqld.cnf必须包含如下配置，官方这样写的，亲测没问题
character-set-server=utf8
collation-server=utf8_bin
default-storage-engine=INNODB
max_allowed_packet=256M
innodb_log_file_size=2GB
sql_mode = NO_AUTO_VALUE_ON_ZERO
transaction-isolation=READ-COMMITTED
binlog_format=row
