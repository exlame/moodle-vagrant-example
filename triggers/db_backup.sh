#!/bin/bash

mysql -u root -proot -e 'show databases' | grep -v -F "information_schema" | grep -v -F "performance_schema" | grep -v -F "mysql" | grep -v -F "test" | grep -v -F "Database" | while read dbname; do mysqldump -u root -proot "$dbname" > /vagrant/backups/"$dbname".sql && echo "Database $dbname backed up..."; done