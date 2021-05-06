all:
	mkdir -p ./
	docker-compose run --rm node bash -c "yarn install && yarn docs:build"
