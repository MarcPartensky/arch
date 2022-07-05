base: buildbase
	docker-compose up base
xorg: buildxorg
	docker-compose up xorg
vnc: buildvnc
	docker-compose up vnc
parabola: buildparabola
	docker-compose up parabola

buildbase:
	docker-compose build base
buildxorg: buildbase
	docker-compose build xorg
buildvnc: buildxorg
	docker-compose build vnc
buildparabola: buildbase
	docker-compose build parabola

buildall: base xorg vnc parabola

push: buildall
	docker-compose push

.PHONY: base xorg vnc parabola
