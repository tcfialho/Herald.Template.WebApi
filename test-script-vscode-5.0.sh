dotnet new herald-api -n E_SQS_POSTGRE -o E_SQS_POSTGRE -f=net5.0 -q=sqs -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\E_SQS_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\E_SQS_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_POSTGRE\E_SQS_POSTGRE.Api\E_SQS_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_SQS_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_POSTGRE'
TASKKILL //IM "E_SQS_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n E_SQS_MYSQL -o E_SQS_MYSQL -f=net5.0 -q=sqs -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\E_SQS_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\E_SQS_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_MYSQL\E_SQS_MYSQL.Api\E_SQS_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_SQS_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_MYSQL'
TASKKILL //IM "E_SQS_MYSQL.Api.exe" //F //T

dotnet new herald-api -n E_SQS_SQLSERVER -o E_SQS_SQLSERVER -f=net5.0 -q=sqs -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\E_SQS_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\E_SQS_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_SQLSERVER\E_SQS_SQLSERVER.Api\E_SQS_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_SQS_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_SQLSERVER'
TASKKILL //IM "E_SQS_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n E_SQS_NONE -o E_SQS_NONE -f=net5.0 -q=sqs -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\E_SQS_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\E_SQS_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_SQS_NONE\E_SQS_NONE.Api\E_SQS_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_SQS_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_SQS_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}'
TASKKILL //IM "E_SQS_NONE.Api.exe" //F //T

dotnet new herald-api -n E_KAKFA_POSTGRE -o E_KAKFA_POSTGRE -f=net5.0 -q=kafka -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\E_KAKFA_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\E_KAKFA_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_POSTGRE\E_KAKFA_POSTGRE.Api\E_KAKFA_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_KAKFA_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_POSTGRE'
TASKKILL //IM "E_KAKFA_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n E_KAKFA_MYSQL -o E_KAKFA_MYSQL -f=net5.0 -q=kafka -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\E_KAKFA_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\E_KAKFA_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_MYSQL\E_KAKFA_MYSQL.Api\E_KAKFA_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_KAKFA_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_MYSQL'
TASKKILL //IM "E_KAKFA_MYSQL.Api.exe" //F //T

dotnet new herald-api -n E_KAKFA_SQLSERVER -o E_KAKFA_SQLSERVER -f=net5.0 -q=kafka -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\E_KAKFA_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\E_KAKFA_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_SQLSERVER\E_KAKFA_SQLSERVER.Api\E_KAKFA_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_KAKFA_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_SQLSERVER'
TASKKILL //IM "E_KAKFA_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n E_KAKFA_NONE -o E_KAKFA_NONE -f=net5.0 -q=kafka -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\E_KAKFA_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\E_KAKFA_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_KAKFA_NONE\E_KAKFA_NONE.Api\E_KAKFA_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_KAKFA_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_KAKFA_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "E_KAKFA_NONE.Api.exe" //F //T

dotnet new herald-api -n E_RABBITMQ_POSTGRE -o E_RABBITMQ_POSTGRE -f=net5.0 -q=rabbitmq -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\E_RABBITMQ_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\E_RABBITMQ_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_POSTGRE\E_RABBITMQ_POSTGRE.Api\E_RABBITMQ_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_RABBITMQ_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_POSTGRE'
TASKKILL //IM "E_RABBITMQ_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n E_RABBITMQ_MYSQL -o E_RABBITMQ_MYSQL -f=net5.0 -q=rabbitmq -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\E_RABBITMQ_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\E_RABBITMQ_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_MYSQL\E_RABBITMQ_MYSQL.Api\E_RABBITMQ_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_RABBITMQ_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_MYSQL'
TASKKILL //IM "E_RABBITMQ_MYSQL.Api.exe" //F //T

dotnet new herald-api -n E_RABBITMQ_SQLSERVER -o E_RABBITMQ_SQLSERVER -f=net5.0 -q=rabbitmq -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\E_RABBITMQ_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\E_RABBITMQ_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_SQLSERVER\E_RABBITMQ_SQLSERVER.Api\E_RABBITMQ_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_RABBITMQ_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_SQLSERVER'
TASKKILL //IM "E_RABBITMQ_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n E_RABBITMQ_NONE -o E_RABBITMQ_NONE -f=net5.0 -q=rabbitmq -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\E_RABBITMQ_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\E_RABBITMQ_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_RABBITMQ_NONE\E_RABBITMQ_NONE.Api\E_RABBITMQ_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_RABBITMQ_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_RABBITMQ_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "E_RABBITMQ_NONE.Api.exe" //F //T

dotnet new herald-api -n E_AZURE_POSTGRE -o E_AZURE_POSTGRE -f=net5.0 -q=azure -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\E_AZURE_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\E_AZURE_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_POSTGRE\E_AZURE_POSTGRE.Api\E_AZURE_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_AZURE_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_POSTGRE'
TASKKILL //IM "E_AZURE_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n E_AZURE_MYSQL -o E_AZURE_MYSQL -f=net5.0 -q=azure -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\E_AZURE_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\E_AZURE_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_MYSQL\E_AZURE_MYSQL.Api\E_AZURE_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_AZURE_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_MYSQL'
TASKKILL //IM "E_AZURE_MYSQL.Api.exe" //F //T

dotnet new herald-api -n E_AZURE_SQLSERVER -o E_AZURE_SQLSERVER -f=net5.0 -q=azure -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\E_AZURE_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\E_AZURE_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_SQLSERVER\E_AZURE_SQLSERVER.Api\E_AZURE_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_AZURE_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_SQLSERVER'
TASKKILL //IM "E_AZURE_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n E_AZURE_NONE -o E_AZURE_NONE -f=net5.0 -q=azure -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\E_AZURE_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\E_AZURE_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_AZURE_NONE\E_AZURE_NONE.Api\E_AZURE_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_AZURE_NONE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/E_AZURE_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "E_AZURE_NONE.Api.exe" //F //T

dotnet new herald-api -n E_NONE_POSTGRE -o E_NONE_POSTGRE -f=net5.0 -q=none -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\E_NONE_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\E_NONE_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_POSTGRE\E_NONE_POSTGRE.Api\E_NONE_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_POSTGRE/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_POSTGRE'
TASKKILL //IM "E_NONE_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n E_NONE_MYSQL -o E_NONE_MYSQL -f=net5.0 -q=none -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\E_NONE_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\E_NONE_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_MYSQL\E_NONE_MYSQL.Api\E_NONE_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_MYSQL/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_MYSQL'
TASKKILL //IM "E_NONE_MYSQL.Api.exe" //F //T

dotnet new herald-api -n E_NONE_SQLSERVER -o E_NONE_SQLSERVER -f=net5.0 -q=none -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\E_NONE_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\E_NONE_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_SQLSERVER\E_NONE_SQLSERVER.Api\E_NONE_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_SQLSERVER/21331410'
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_SQLSERVER'
TASKKILL //IM "E_NONE_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n E_NONE_NONE -o E_NONE_NONE -f=net5.0 -q=none -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\E_NONE_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\E_NONE_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\E_NONE_NONE\E_NONE_NONE.Api\E_NONE_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/E_NONE_NONE/21331410'
TASKKILL //IM "E_NONE_NONE.Api.exe" //F //T

dotnet new herald-api -n NE_SQS_POSTGRE -o NE_SQS_POSTGRE -f=net5.0 -ne -q=sqs -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\NE_SQS_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\NE_SQS_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_POSTGRE\NE_SQS_POSTGRE.Api\NE_SQS_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_SQS_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_SQS_POSTGRE'
TASKKILL //IM "NE_SQS_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n NE_SQS_MYSQL -o NE_SQS_MYSQL -f=net5.0 -ne -q=sqs -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\NE_SQS_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\NE_SQS_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_MYSQL\NE_SQS_MYSQL.Api\NE_SQS_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_SQS_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_SQS_MYSQL'
TASKKILL //IM "NE_SQS_MYSQL.Api.exe" //F //T

dotnet new herald-api -n NE_SQS_SQLSERVER -o NE_SQS_SQLSERVER -f=net5.0 -ne -q=sqs -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\NE_SQS_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\NE_SQS_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_SQLSERVER\NE_SQS_SQLSERVER.Api\NE_SQS_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_SQS_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_SQS_SQLSERVER'
TASKKILL //IM "NE_SQS_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n NE_SQS_NONE -o NE_SQS_NONE -f=net5.0 -ne -q=sqs -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\NE_SQS_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\NE_SQS_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_SQS_NONE\NE_SQS_NONE.Api\NE_SQS_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_SQS_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "NE_SQS_NONE.Api.exe" //F //T

dotnet new herald-api -n NE_KAKFA_POSTGRE -o NE_KAKFA_POSTGRE -f=net5.0 -ne -q=kafka -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\NE_KAKFA_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\NE_KAKFA_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_POSTGRE\NE_KAKFA_POSTGRE.Api\NE_KAKFA_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_KAKFA_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_KAKFA_POSTGRE'
TASKKILL //IM "NE_KAKFA_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n NE_KAKFA_MYSQL -o NE_KAKFA_MYSQL -f=net5.0 -ne -q=kafka -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\NE_KAKFA_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\NE_KAKFA_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_MYSQL\NE_KAKFA_MYSQL.Api\NE_KAKFA_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_KAKFA_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_KAKFA_MYSQL'
TASKKILL //IM "NE_KAKFA_MYSQL.Api.exe" //F //T

dotnet new herald-api -n NE_KAKFA_SQLSERVER -o NE_KAKFA_SQLSERVER -f=net5.0 -ne -q=kafka -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\NE_KAKFA_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\NE_KAKFA_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_SQLSERVER\NE_KAKFA_SQLSERVER.Api\NE_KAKFA_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_KAKFA_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_KAKFA_SQLSERVER'
TASKKILL //IM "NE_KAKFA_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n NE_KAKFA_NONE -o NE_KAKFA_NONE -f=net5.0 -ne -q=kafka -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\NE_KAKFA_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\NE_KAKFA_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_KAKFA_NONE\NE_KAKFA_NONE.Api\NE_KAKFA_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_KAKFA_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "NE_KAKFA_NONE.Api.exe" //F //T

dotnet new herald-api -n NE_RABBITMQ_POSTGRE -o NE_RABBITMQ_POSTGRE -f=net5.0 -ne -q=rabbitmq -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\NE_RABBITMQ_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\NE_RABBITMQ_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_POSTGRE\NE_RABBITMQ_POSTGRE.Api\NE_RABBITMQ_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_RABBITMQ_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_RABBITMQ_POSTGRE'
TASKKILL //IM "NE_RABBITMQ_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n NE_RABBITMQ_MYSQL -o NE_RABBITMQ_MYSQL -f=net5.0 -ne -q=rabbitmq -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\NE_RABBITMQ_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\NE_RABBITMQ_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_MYSQL\NE_RABBITMQ_MYSQL.Api\NE_RABBITMQ_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_RABBITMQ_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_RABBITMQ_MYSQL'
TASKKILL //IM "NE_RABBITMQ_MYSQL.Api.exe" //F //T

dotnet new herald-api -n NE_RABBITMQ_SQLSERVER -o NE_RABBITMQ_SQLSERVER -f=net5.0 -ne -q=rabbitmq -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\NE_RABBITMQ_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\NE_RABBITMQ_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_SQLSERVER\NE_RABBITMQ_SQLSERVER.Api\NE_RABBITMQ_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_RABBITMQ_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_RABBITMQ_SQLSERVER'
TASKKILL //IM "NE_RABBITMQ_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n NE_RABBITMQ_NONE -o NE_RABBITMQ_NONE -f=net5.0 -ne -q=rabbitmq -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\NE_RABBITMQ_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\NE_RABBITMQ_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_RABBITMQ_NONE\NE_RABBITMQ_NONE.Api\NE_RABBITMQ_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_RABBITMQ_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "NE_RABBITMQ_NONE.Api.exe" //F //T

dotnet new herald-api -n NE_AZURE_POSTGRE -o NE_AZURE_POSTGRE -f=net5.0 -ne -q=azure -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\NE_AZURE_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\NE_AZURE_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_POSTGRE\NE_AZURE_POSTGRE.Api\NE_AZURE_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_AZURE_POSTGRE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_AZURE_POSTGRE'
TASKKILL //IM "NE_AZURE_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n NE_AZURE_MYSQL -o NE_AZURE_MYSQL -f=net5.0 -ne -q=azure -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\NE_AZURE_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\NE_AZURE_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_MYSQL\NE_AZURE_MYSQL.Api\NE_AZURE_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_AZURE_MYSQL' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_AZURE_MYSQL'
TASKKILL //IM "NE_AZURE_MYSQL.Api.exe" //F //T

dotnet new herald-api -n NE_AZURE_SQLSERVER -o NE_AZURE_SQLSERVER -f=net5.0 -ne -q=azure -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\NE_AZURE_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\NE_AZURE_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_SQLSERVER\NE_AZURE_SQLSERVER.Api\NE_AZURE_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_AZURE_SQLSERVER' -H 'Content-Type: application/json' -d '{"description": "string"}' 
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_AZURE_SQLSERVER'
TASKKILL //IM "NE_AZURE_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n NE_AZURE_NONE -o NE_AZURE_NONE -f=net5.0 -ne -q=azure -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\NE_AZURE_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\NE_AZURE_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_AZURE_NONE\NE_AZURE_NONE.Api\NE_AZURE_NONE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'POST' 'https://localhost:5001/NE_AZURE_NONE' -H 'Content-Type: application/json' -d '{"description": "string"}' 
TASKKILL //IM "NE_AZURE_NONE.Api.exe" //F //T

dotnet new herald-api -n NE_NONE_POSTGRE -o NE_NONE_POSTGRE -f=net5.0 -ne -q=none -d=postgre
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\NE_NONE_POSTGRE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\NE_NONE_POSTGRE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_POSTGRE\NE_NONE_POSTGRE.Api\NE_NONE_POSTGRE.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_NONE_POSTGRE'
TASKKILL //IM "NE_NONE_POSTGRE.Api.exe" //F //T

dotnet new herald-api -n NE_NONE_MYSQL -o NE_NONE_MYSQL -f=net5.0 -ne -q=none -d=mysql
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\NE_NONE_MYSQL.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\NE_NONE_MYSQL.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_MYSQL\NE_NONE_MYSQL.Api\NE_NONE_MYSQL.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_NONE_MYSQL'
TASKKILL //IM "NE_NONE_MYSQL.Api.exe" //F //T

dotnet new herald-api -n NE_NONE_SQLSERVER -o NE_NONE_SQLSERVER -f=net5.0 -ne -q=none -d=sqlserver
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\NE_NONE_SQLSERVER.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\NE_NONE_SQLSERVER.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_SQLSERVER\NE_NONE_SQLSERVER.Api\NE_NONE_SQLSERVER.Api.csproj" &>/dev/null &
sleep 10;
curl -k -s -o /dev/null -w "Code: %{http_code}" -X 'GET' 'https://localhost:5001/NE_NONE_SQLSERVER'
TASKKILL //IM "NE_NONE_SQLSERVER.Api.exe" //F //T

dotnet new herald-api -n NE_NONE_NONE -o NE_NONE_NONE -f=net5.0 -ne -q=none -d=none
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker network prune --force
docker-compose -f 'C:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\.docker\docker-compose.yml' up -d --build
dotnet clean "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\NE_NONE_NONE.sln"
dotnet build "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\NE_NONE_NONE.sln"
nohup dotnet "run" "--project" "c:\Users\tcfialho\TestHeraldWebApi\NE_NONE_NONE\NE_NONE_NONE.Api\NE_NONE_NONE.Api.csproj" &>/dev/null &
sleep 10;
TASKKILL //IM "NE_NONE_NONE.Api.exe" //F //T