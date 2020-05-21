# ansible_install_msyql
install ansible fist 
copy file to /ect/ansible
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
