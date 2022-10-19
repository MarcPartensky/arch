base: buildbase
	docker-compose run base
xorg: buildxorg
	docker-compose up xorg
vnc: buildvnc
	docker-compose up vnc
parabola: buildparabola
	docker-compose up parabola
artix: buildartix
	docker-compose up artix

buildbase:
	docker-compose build base
buildxorg: buildbase
	docker-compose build xorg
buildvnc: buildxorg
	docker-compose build vnc
buildparabola: buildbase
	docker-compose build parabola
buildartix:
	docker-compose build artix

buildall: buildbase buildxorg buildvnc buildparabola

updateall:
	docker pull archlinux
	docker-compose build --no-cache base
	docker-compose build --no-cache xorg
	docker-compose build --no-cache vnc
	docker-compose build --no-cache parabola
	docker-compose push

push: buildall
	docker-compose push

.PHONY: base xorg vnc parabola
