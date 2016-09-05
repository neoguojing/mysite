#!/bin/bash

python ../manage.py collectstatic
python ../manage.py syncdb
python ../manage.py makemigrations
python ../manage.py migrate
#mysql -u root -p weixin >db_x
mysqldump -u root -p weixin > weixin.db
sed -i 's/latin1/utf8/' weixin.db
exit 0 
