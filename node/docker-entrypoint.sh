#!/bin/bash
mysql_host="db_url"
mysql_port=3306

while ! nc $mysql_host $mysql_port; do  
  >&2 echo "Mysql is unavailable"
  sleep 1
done

echo "Start nodejs"  
node  /src/server.js