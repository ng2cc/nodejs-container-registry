cd /app

sed -i "s/DB_IP = 'wbdb.c1wcssiiki5n.ap-northeast-1.rds.amazonaws.com';/DB_IP = '${DB_IP}';/g" /app/config/config.js
sed -i "s/USER_NAME = 'myuser';/USER_NAME = '${USER_NAME}';/g" /app/config/config.js
sed -i "s/USER_PASSWORD = 'mypassword!';/USER_PASSWORD = '${USER_PASSWORD}';/g" /app/config/config.js
sed -i "s/DATABASE_NAME = 'wbdb';/DATABASE_NAME = '${DATABASE_NAME}';/g" /app/config/config.js
sed -i "s/TABLE_NAME = 'USER';/TABLE_NAME = '${TABLE_NAME}';/g" /app/config/config.js

node server.js
