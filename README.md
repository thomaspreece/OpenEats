# About 
This deployment adds SSL to OpenEats' Docker deployment, fixes a bug in file upload permissions and also increases the image size that is uploadable via the UI to 100mb.

To run correctly you'll need to download the following repos and run `./build.sh` in each:
```
git clone https://github.com/thomaspreece/openeats-api
cd openeats-api
./build.sh
cd ../
git clone https://github.com/thomaspreece/openeats-nginx-ssl
cd openeats-nginx-ssl
./build.sh
cd ../
```

And you'll also need to copy env_prod_example.list to env_prod.list and make changes to the file

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
