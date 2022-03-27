runafterbuild: build run
run:
	docker-compose run arch zsh
build:
	docker-compose build arch
	docker-compose build arch_vnc
push: build
	docker-compose push
