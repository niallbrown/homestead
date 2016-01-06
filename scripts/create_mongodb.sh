mongo  --eval 'use admin'
if [ $? != 0 ]; then
    echo "db exists"
fi
mongo  --eval 'db.createUser({ user: "admin", pwd: "admin", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})'
if [ $? != 0 ]; then
      echo "db user exists"
    exit 0
fi