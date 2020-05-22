#!/bin/bash
echo "安装的mysql版本 {{ MYSQL_VER }}"
echo "DATA_DIR {{ DATA_DIR }}"

echo "指定你需要的初始化相关内容"

#change root password
{{ BASE_DIR }}/bin/mysql -S /tmp/mysql{{ MYSQL_PORT }}.sock -e "alter user user() identified by 'passwd'"
