runafterbuild: build run
run:
	docker-compose run arch zsh
arch:
	docker-compose build arch
xorg: arch
	docker-compose build arch_xorg
vnc: arch
	docker-compose build arch_vnc
parabola: arch
	docker-compose build parabola
build: arch xorg vnc parabola
push: build
	docker-compose push

.PHONY: base xorg vnc parabola
