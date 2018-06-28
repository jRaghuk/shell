docker ps
containers=$(sudo docker ps | awk '{if(NR>1) print $NF}') 
docker ps
for container in $containers
do
  docker kill $container
  docker rm -v $container
done
docker build -f dockerfile_mysql -t sql_docker .    
docker build -f dockerfile_app -t app_docker .   
docker run -d --name=sql_image sql_docker      
docker run -p 8080:8080 --name spring-app --link sql_image:mysql -d app_docker
docker ps
