#!/bin/bash
set -e
sudo apt-get update && sudo apt-get install -y jq make wget tar curl
tar -xzf migrations.tar.gz
curl -o cloud-sql-proxy https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.8.2/cloud-sql-proxy.linux.amd64
chmod +x cloud-sql-proxy
curl -L https://github.com/golang-migrate/migrate/releases/download/v4.17.0/migrate.linux-amd64.tar.gz | tar xvz
sudo mv migrate /usr/local/bin/
chmod +x run_migrations.sh
./run_migrations.sh
