docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=<password>' \
-p 1433:1433 \
-v sqlvolume:/var/opt/mssql \
--name mssql2022 \
--detach \
--restart=always \
-d mcr.microsoft.com/mssql/server:2022-latest