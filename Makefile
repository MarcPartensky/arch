base: buildbase
	docker-compose run -it base
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

buildall: buildbase buildxorg buildvnc buildparabola

push: buildall
	docker-compose push

.PHONY: base xorg vnc parabola
