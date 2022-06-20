base:
	docker-compose up --build base
xorg: base
	docker-compose up --build xorg
vnc:
	docker-compose up --build vnc
parabola: base
	docker-compose up --build parabola
buildall: base xorg vnc parabola

build:
	docker-compose build ${1}
push: build
	docker-compose push

.PHONY: base xorg vnc parabola
