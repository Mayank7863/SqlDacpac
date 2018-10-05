#!/bin/sh
echo deploying dacpac
dotnet /opt/mssql-tools/bin/sqlpackage/sqlpackage.dll /Action:Publish /SourceFile:/opt/mssql-tools/bin/sqlpackage/CustomerDB.dacpac /p:CreateNewDatabase=true /tsn:localhost /tu:SA /tp:docker_Sql_Rocks_123 /tdn:CustomerDB