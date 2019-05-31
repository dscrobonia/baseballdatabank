SHELL=/bin/bash
PASSWORD='P@ssword1'

build:
	docker-compose build

db-start:
	docker-compose up

db-connect:
	sqlcmd -S localhost,1433 -U SA -P ${PASSWORD}
