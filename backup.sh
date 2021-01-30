source /mnt/Main/Docker/OpenEats/env_prod.list
now=`date`
sudo docker exec openeats_db_1 sh -c 'exec mysqldump openeats -uroot -p"$MYSQL_ROOT_PASSWORD"' > "/mnt/Main/Docker/OpenEats/database_backups/openeats-${now}.sql"
echo "OpenEats Backup Complete"
