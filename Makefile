SHELL=/bin/bash

build:
	docker-compose build

db-start:
	docker-compose up

db-connect:
	sqlcmd -S localhost,1433 -U SA -P 'P@ssword1'
