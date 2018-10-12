USER = "$(shell id -u):$(shell id -g)"

app-test:
	docker-compose run app mix test

app-bash:
	docker-compose run app --user=$(USER) app bash

app-bash-root:
	docker-compose run app bash

app-install:
	docker-compose run app mix deps.get

app-db-drop:
	docker-compose run app mix ecto.drop

app-db-prepare:
	docker-compose run app mix ecto.create
	docker-compose run app mix ecto.migrate

app-credo:
	docker-compose run app mix credo

app-console:
	docker-compose run app iex -S mix
