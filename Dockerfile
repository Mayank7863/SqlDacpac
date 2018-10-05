# A basic SQL server
FROM mcr.microsoft.com/mssql/server:latest

ENV ACCEPT_EULA="Y" \
    SA_PASSWORD="docker_Sql_Rocks_123" \
    MSSQL_PID="Developer" \
    PATH="/opt/mssql-tools/bin:/opt/mssql-tools/bin/sqlpackage/:${PATH}"

EXPOSE 1433

RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && apt-get install -y \
    apt-transport-https \
    apt-utils \
    libunwind8 \
    libicu55 \
    unzip \
    dotnet-runtime-2.1
    
ADD https://go.microsoft.com/fwlink/?linkid=873926 /opt/mssql-tools/bin/sqlpackage/sqlpackage.zip


COPY ./CustomerDB/bin/Debug/*.dacpac /opt/mssql-tools/bin/sqlpackage/
COPY ./*.sh /opt/mssql-tools/bin/sqlpackage/

RUN unzip /opt/mssql-tools/bin/sqlpackage/sqlpackage.zip -d /opt/mssql-tools/bin/sqlpackage/
