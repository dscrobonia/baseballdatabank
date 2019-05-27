SHELL=/bin/bash

build:
	sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=P@ssword1' -p 1433:1433 --name baseballdatabank -d mcr.microsoft.com/mssql/server:2017-latest

start:
	docker start baseballdatabank

connect:
	sqlcmd -S localhost,1433 -U SA -P 'P@ssword1'
