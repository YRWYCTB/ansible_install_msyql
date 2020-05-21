# ansible_install_msyql
1、install ansible fist 

2、copy file to /ect/ansible

the dir is as follows
```
[root@dzst150 ansible]# pwd
```
/etc/ansible
```
[root@dzst150 ansible]# tree ./
./
|-- ansible.cfg
|-- hosts
|-- mysql.yml
`-- roles
    |-- zst_mysql57
    |   |-- files
    |   |   |-- mysql-5.7.30-linux-glibc2.12-x86_64.tar.gz
    |   |   `-- read.me
    |   |-- tasks
    |   |   |-- install.yml
    |   |   |-- main.yml
    |   |   `-- prepare.yml
    |   |-- templates
    |   |   |-- after_start.sh
    |   |   `-- my.cnf
    |   `-- vars
    |       `-- main.yml
    |-- zst_mysql57_ubuntu
    |   |-- tasks
    |   |   |-- install.yml
    |   |   |-- main.yml
    |   |   `-- prepare.yml
    |   |-- templates
    |   |   |-- after_start.sh
    |   |   `-- my.cnf
    |   `-- vars
    |       `-- main.yml
    `-- zst_mysql8
        |-- files
        |   `-- read.me
        |-- tasks
        |   |-- install.yml
        |   |-- main.yml
        |   `-- prepare.yml
        |-- templates
        |   |-- after_start.sh
        |   `-- my.cnf
        `-- vars
            `-- main.yml
```
3、cp mysql packages to files dir

4、edit hosts,add destination ip or hostname to hosts
```sh
cat host
```
[mysql]
172.18.0.160

5、edit mysql.yml
```sh
cat myslq.yml
```
---
- hosts: mysql
  roles:
  - zst_mysql57

6、configure ssh trust to destination hosts

7、edit variables
```sh
[root@dzst150 roles]# cat zst_mysql57/vars/main.yml 
```
定义mysql安装中的变量

MYSQL_VER: 5.7.30

MYSQL_VER_MAIN: "{{ MYSQL_VER.split('.')[0] }}.{{ MYSQL_VER.split('.')[1] }}"

DOWNLOAD_URL: https://mirrors.cloud.tencent.com/mysql/downloads/MySQL-{{ MYSQL_VER_MAIN }}/mysql-{{ MYSQL_VER }}-linux-glibc2.12-x86_64.tar.gz

MYSQL_USER: mysql

MYSQL_PORT: 3307

MYSQL_PASSWD: 123456789

SOURCE_DIR: /software

BASE_DIR: /usr/local/mysql57

DATA_BASE: /data/mysql/mysql{{ MYSQL_PORT }}

DATA_DIR: /data/mysql/mysql{{ MYSQL_PORT }}/data

8、run command 
```sh
ansible-playbook mysql.yml
```
