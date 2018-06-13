#!/bin/bash

var_sql=sql-501
var_spr=spr-501
sql_name=sqldb-501
container_name=madamdb-501



docker build -f Sqldockerfile -t $var_sql .
docker build -f dockerfile -t $var_spr .
docker run -d --name=$sql_name $var_sql
docker ps
docker run -p 8080:8080 --name $container_name --link $sql_name:mysql -d $var_spr


docker ps
