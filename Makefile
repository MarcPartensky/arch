runafterbuild: build run
run:
	docker-compose run arch zsh
arch:
	docker-compose build arch
vnc:
	docker-compose build arch_vnc
parabola:
	docker-compose build parabola
build: arch vnc parabola
push: build
	docker-compose push

.PHONY: base vnc parabola
