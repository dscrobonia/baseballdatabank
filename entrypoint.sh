#!/bin/bash
set -m

echo 'Starting SQL server in background...'
/opt/mssql/bin/sqlservr &

# wait for the server to get up
#sleep 20

echo 'Restoring LahmansBaseballDB to SQL server...'
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'P@ssword1' \
 -Q 'RESTORE DATABASE LahmansBaseballDB FROM DISK = "/var/opt/mssql/backup/LahmansBaseballDB.bak" WITH MOVE "LahmansBaseballDB" TO "/var/opt/mssql/data/LahmansBaseballDB.mdf", MOVE "LahmansBaseballDB_Log" TO "/var/opt/mssql/data/LahmansBaseballDB.ldf"'

echo 'Bringing server back to foreground...'
fg %1
