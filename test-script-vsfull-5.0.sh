dotnet new herald-api -n E_SQS_POSTGRE -o E_SQS_POSTGRE -f=net5.0 -q=sqs -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_SQS_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_POSTGRE'

dotnet new herald-api -n E_SQS_MYSQL -o E_SQS_MYSQL -f=net5.0 -q=sqs -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_SQS_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_MYSQL'

dotnet new herald-api -n E_SQS_SQLSERVER -o E_SQS_SQLSERVER -f=net5.0 -q=sqs -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_SQS_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_SQLSERVER'

dotnet new herald-api -n E_SQS_NONE -o E_SQS_NONE -f=net5.0 -q=sqs -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_SQS_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_SQS_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}'

dotnet new herald-api -n E_KAKFA_POSTGRE -o E_KAKFA_POSTGRE -f=net5.0 -q=kafka -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_KAKFA_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_POSTGRE'

dotnet new herald-api -n E_KAKFA_MYSQL -o E_KAKFA_MYSQL -f=net5.0 -q=kafka -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_KAKFA_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_MYSQL'

dotnet new herald-api -n E_KAKFA_SQLSERVER -o E_KAKFA_SQLSERVER -f=net5.0 -q=kafka -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_KAKFA_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_SQLSERVER'

dotnet new herald-api -n E_KAKFA_NONE -o E_KAKFA_NONE -f=net5.0 -q=kafka -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\.docker\docker-compose.override.http.yml" up -d --build  
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_KAKFA_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_KAKFA_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n E_RABBITMQ_POSTGRE -o E_RABBITMQ_POSTGRE -f=net5.0 -q=rabbitmq -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_RABBITMQ_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_POSTGRE'

dotnet new herald-api -n E_RABBITMQ_MYSQL -o E_RABBITMQ_MYSQL -f=net5.0 -q=rabbitmq -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_RABBITMQ_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_MYSQL'

dotnet new herald-api -n E_RABBITMQ_SQLSERVER -o E_RABBITMQ_SQLSERVER -f=net5.0 -q=rabbitmq -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_RABBITMQ_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_SQLSERVER'

dotnet new herald-api -n E_RABBITMQ_NONE -o E_RABBITMQ_NONE -f=net5.0 -q=rabbitmq -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_RABBITMQ_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_RABBITMQ_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n E_AZURE_POSTGRE -o E_AZURE_POSTGRE -f=net5.0 -q=azure -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_AZURE_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_POSTGRE'

dotnet new herald-api -n E_AZURE_MYSQL -o E_AZURE_MYSQL -f=net5.0 -q=azure -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_AZURE_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_MYSQL'

dotnet new herald-api -n E_AZURE_SQLSERVER -o E_AZURE_SQLSERVER -f=net5.0 -q=azure -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_AZURE_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_SQLSERVER'

dotnet new herald-api -n E_AZURE_NONE -o E_AZURE_NONE -f=net5.0 -q=azure -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_AZURE_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/E_AZURE_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n E_NONE_POSTGRE -o E_NONE_POSTGRE -f=net5.0 -q=none -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_POSTGRE'

dotnet new herald-api -n E_NONE_MYSQL -o E_NONE_MYSQL -f=net5.0 -q=none -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_MYSQL'

dotnet new herald-api -n E_NONE_SQLSERVER -o E_NONE_SQLSERVER -f=net5.0 -q=none -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_SQLSERVER'

dotnet new herald-api -n E_NONE_NONE -o E_NONE_NONE -f=net5.0 -q=none -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/E_NONE_NONE/21331410'

dotnet new herald-api -n NE_SQS_POSTGRE -o NE_SQS_POSTGRE -f=net5.0 -ne -q=sqs -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_SQS_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_SQS_POSTGRE'

dotnet new herald-api -n NE_SQS_MYSQL -o NE_SQS_MYSQL -f=net5.0 -ne -q=sqs -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_SQS_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_SQS_MYSQL'

dotnet new herald-api -n NE_SQS_SQLSERVER -o NE_SQS_SQLSERVER -f=net5.0 -ne -q=sqs -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_SQS_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_SQS_SQLSERVER'

dotnet new herald-api -n NE_SQS_NONE -o NE_SQS_NONE -f=net5.0 -ne -q=sqs -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_SQS_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n NE_KAKFA_POSTGRE -o NE_KAKFA_POSTGRE -f=net5.0 -ne -q=kafka -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_KAKFA_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_KAKFA_POSTGRE'

dotnet new herald-api -n NE_KAKFA_MYSQL -o NE_KAKFA_MYSQL -f=net5.0 -ne -q=kafka -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_KAKFA_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_KAKFA_MYSQL'

dotnet new herald-api -n NE_KAKFA_SQLSERVER -o NE_KAKFA_SQLSERVER -f=net5.0 -ne -q=kafka -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_KAKFA_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_KAKFA_SQLSERVER'

dotnet new herald-api -n NE_KAKFA_NONE -o NE_KAKFA_NONE -f=net5.0 -ne -q=kafka -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_KAKFA_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n NE_RABBITMQ_POSTGRE -o NE_RABBITMQ_POSTGRE -f=net5.0 -ne -q=rabbitmq -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_RABBITMQ_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_RABBITMQ_POSTGRE'

dotnet new herald-api -n NE_RABBITMQ_MYSQL -o NE_RABBITMQ_MYSQL -f=net5.0 -ne -q=rabbitmq -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_RABBITMQ_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_RABBITMQ_MYSQL'

dotnet new herald-api -n NE_RABBITMQ_SQLSERVER -o NE_RABBITMQ_SQLSERVER -f=net5.0 -ne -q=rabbitmq -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_RABBITMQ_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_RABBITMQ_SQLSERVER'

dotnet new herald-api -n NE_RABBITMQ_NONE -o NE_RABBITMQ_NONE -f=net5.0 -ne -q=rabbitmq -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_RABBITMQ_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n NE_AZURE_POSTGRE -o NE_AZURE_POSTGRE -f=net5.0 -ne -q=azure -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_AZURE_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_AZURE_POSTGRE'

dotnet new herald-api -n NE_AZURE_MYSQL -o NE_AZURE_MYSQL -f=net5.0 -ne -q=azure -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_AZURE_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_AZURE_MYSQL'

dotnet new herald-api -n NE_AZURE_SQLSERVER -o NE_AZURE_SQLSERVER -f=net5.0 -ne -q=azure -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_AZURE_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_AZURE_SQLSERVER'

dotnet new herald-api -n NE_AZURE_NONE -o NE_AZURE_NONE -f=net5.0 -ne -q=azure -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'http://localhost:5000/NE_AZURE_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 

dotnet new herald-api -n NE_NONE_POSTGRE -o NE_NONE_POSTGRE -f=net5.0 -ne -q=none -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_NONE_POSTGRE'

dotnet new herald-api -n NE_NONE_MYSQL -o NE_NONE_MYSQL -f=net5.0 -ne -q=none -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_NONE_MYSQL'

dotnet new herald-api -n NE_NONE_SQLSERVER -o NE_NONE_SQLSERVER -f=net5.0 -ne -q=none -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'http://localhost:5000/NE_NONE_SQLSERVER'

dotnet new herald-api -n NE_NONE_NONE -o NE_NONE_NONE -f=net5.0 -ne -q=none -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\.docker\docker-compose.yml' -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\.docker\docker-compose.override.yml' -f  "C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\.docker\docker-compose.override.http.yml" up -d --build 
sleep 10;
