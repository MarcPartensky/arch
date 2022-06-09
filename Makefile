runafterbuild: build run
run:
	docker-compose run arch zsh
base:
	docker-compose build base
xorg: base
	docker-compose build xorg
vnc: xorg
	docker-compose build vnc
parabola: base
	docker-compose build parabola
build: base xorg vnc parabola
push: build
	docker-compose push

.PHONY: base xorg vnc parabola
