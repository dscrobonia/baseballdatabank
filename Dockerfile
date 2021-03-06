FROM mcr.microsoft.com/mssql/server:2017-latest
RUN mkdir -p /var/opt/mssql/backup

COPY sql/LahmansBaseballDB.bak /var/opt/mssql/backup/
COPY entrypoint.sh .

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=P@ssword1

CMD ./entrypoint.sh
