run: build
	docker-compose run arch zsh
build:
	docker-compose build arch
push: build
	docker-compose push arch
