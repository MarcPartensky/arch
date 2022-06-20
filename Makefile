base:
	docker-compose run base
xorg: base
	docker-compose up xorg
vnc:
	docker-compose up vnc
parabola: base
	docker-compose build parabola
build: base xorg vnc parabola
push: build
	docker-compose push

.PHONY: base xorg vnc parabola
