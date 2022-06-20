base:
	docker-compose up --build base
xorg:
	docker-compse build base
	docker-compose up --build xorg
vnc:
	docker-compse build base xorg
	docker-compose up --build vnc
parabola: base
	docker-compse build base xorg
	docker-compose up --build parabola
buildall: base xorg vnc parabola

build:
	docker-compose build ${1}
push: build
	docker-compose push

.PHONY: base xorg vnc parabola
