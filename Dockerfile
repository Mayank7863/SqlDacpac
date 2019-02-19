FROM mcr.microsoft.com/mssql/server:latest

ENV PATH="/opt/mssql-tools/bin:/opt/mssql-tools/bin/sqlpackage/:${PATH}"

EXPOSE 1433

RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && apt-get install -y \
    apt-transport-https \
    apt-utils \
    libunwind8 \
    libicu55 \
    unzip \
    dotnet-runtime-2.2 \
    libunwind-dev

# Link provided on this page:
# https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download?view=sql-server-2017
ADD https://go.microsoft.com/fwlink/?linkid=2069122 /opt/mssql-tools/bin/sqlpackage/sqlpackage.zip

RUN unzip /opt/mssql-tools/bin/sqlpackage/sqlpackage.zip -d /opt/mssql-tools/bin/sqlpackage/
