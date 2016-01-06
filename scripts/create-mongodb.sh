#service mongodb status
#mongo --eval 'use admin'
#mongo --eval 'db.createUser({ user: "admin", pwd: "admin", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})'

apt-get install -y libcurl4-openssl-dev libsasl2-dev

pecl install -f mongodb-3.0.8

if [ "$(cat /etc/php5/cli/conf.d/20-mongo.ini | grep 'mongodb.so')" ];
    then
        echo "extension already loaded"
    else
        #echo 'extension = mongodb.so' >> ~/etc/php5/cli/conf.d/20-mongo.ini;
        echo "need to load extension cli"
fi

if [ "$(cat /etc/php5/fpm/conf.d/20-mongo.ini | grep 'mongodb.so')" ];
    then
        echo "extension already loaded"
    else
        #echo 'extension = mongodb.so' >> ~/etc/php5/fpm/conf.d/20-mongo.ini;
           echo "need to load extension in fpm"
fi

#echo 'db.createUser({user: "admin", pwd: "admin", roles: []);' | mongo admin

#mongo --eval 'use admin'
#mongo --eval 'db.createUser({ user: "admin", pwd: "admin", roles: [ db:  "admin"]})'

#echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`

service nginx restart
service php5-fpm restart