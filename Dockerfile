FROM mcr.microsoft.com/mssql/server:2017-latest
RUN mkdir -p /var/opt/mssql/backup

COPY sql/LahmansBaseballDB.bak /var/opt/mssql/backup/
COPY onstart.sh .

CMD ./onstart.sh
