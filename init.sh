!#/bin/bash
/etc/init.d/mysql start
mysql -uroot -e "create database stepic_web;"
mysql -uroot -e "create user 'box'@'localhost' idetified by 'box';"
mysql -uroot -e "grant all privileges on stepik_web.* to 'box'@'localhost';"
./manage.py makemigrations
./manage.py migrate
