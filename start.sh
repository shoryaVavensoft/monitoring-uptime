#!/bin/sh
mkdir -p /app/data
cat > /app/data/db-config.json <<EOF
{
  "type": "mariadb",
  "hostname": "$DB_HOST",
  "port": $DB_PORT,
  "username": "$DB_USER",
  "password": "$DB_PASS",
  "dbName": "$DB_NAME"
}
EOF
exec node server/server.js
