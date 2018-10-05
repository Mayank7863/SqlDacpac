docker build -t customerdb .
Start-Process -FilePath docker -ArgumentList "run -itp 1433:1433 --name customer_sql customerdb"
Write-Warning "Giving Sql a few seconds to start up"
Start-Sleep -s 20
docker exec -it customer_sql sh "opt/mssql-tools/bin/sqlpackage/deploydacpac.sh"