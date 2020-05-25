#!/bin/bash
#该脚本中增加MySQL实例启动后需要初始化的一些信息，如：创建用户，创建数据库等。
echo "安装的mysql版本 {{ MYSQL_VER }}"
echo "DATA_DIR {{ DATA_DIR }}"

echo "指定你需要的初始化相关内容"

#change root password，该用户只能通过socket连接
{{ BASE_DIR }}/bin/mysql -S /tmp/mysql{{ MYSQL_PORT }}.sock -e "alter user user() identified by 'passwd'"
#创建可以通过TCP连接登录的用户，并增加权限。
{{ BASE_DIR }}/bin/mysql -S /tmp/mysql{{ MYSQL_PORT }}.sock -uroot -p8085782 -e "create user tian identified by 'passwd'"
{{ BASE_DIR }}/bin/mysql -S /tmp/mysql{{ MYSQL_PORT }}.sock -uroot -p8085782 -e "grant all on *.* to tian with grant option"
