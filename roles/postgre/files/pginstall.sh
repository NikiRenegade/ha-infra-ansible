#!/bin/bash
echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list

curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/postgresql.gpg

apt update

apt install -y postgresql-16 postgresql-contrib-16

if [ ! -d /etc/postgresql/16/main ]; then
    pg_createcluster 16 main --start
fi
