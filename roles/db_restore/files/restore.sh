#!/bin/bash
BACKUP_DIR="/var/backups/sql/"
IP=$(hostname -I | awk '{print $1}')
ROLE=$(curl -s ${IP}:8008/ | jq -r '.role')
DB_NAME="AttendanceJournal"
if [ "$ROLE" = "primary" ]; then
	psql -h localhost -U postgres -d postgres -t -A -c "create database \"${DB_NAME}"\"
	FILES=$(ls "${BACKUP_DIR}")
for FILE in $FILES; do
  psql -h localhost -U postgres -d ${DB_NAME} -f ${BACKUP_DIR}${FILE}
done
fi 
