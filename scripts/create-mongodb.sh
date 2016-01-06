#service mongodb status
#mongo --eval 'use admin'
#mongo --eval 'db.createUser({ user: "admin", pwd: "admin", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})'

sudo apt-get install -y libcurl4-openssl-dev libsasl2-dev
echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`
service nginx restart
service php5-fpm restart