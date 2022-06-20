base:
	docker-compose run base
xorg: base
	docker-compose up xorg
vnc:
	docker-compose up vnc
parabola: base
	docker-compose build parabola
buildall: base xorg vnc parabola

build:
	docker-compose build ${1}
push: build
	docker-compose push

.PHONY: base xorg vnc parabola
