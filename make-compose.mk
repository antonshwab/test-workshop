compose-build:
	docker-compose build

compose:
	docker-compose up

compose-down:
	docker-compose down

compose-setup: development-setup compose-build app-install app-db-prepare

compose-logs:
	docker-compose logs -f --tail=100

compose-stop:
	docker-compose stop

compose-restart:
	docker-compose restart
