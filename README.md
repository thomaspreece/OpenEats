# Running

Start OpenEats:
```
sudo docker-compose -f docker-prod.yml -f docker-prod.version.yml -f docker-prod.override.yml up -d
```

Stop OpenEats:
```
sudo docker-compose -f docker-prod.yml -f docker-prod.version.yml -f docker-prod.override.yml down
```

Backup Database:
```
source env_prod.yml
sudo docker exec openeats_db_1 sh -c 'exec mysqldump openeats -uroot -p"$MYSQL_ROOT_PASSWORD"' > openeats.sql
```
