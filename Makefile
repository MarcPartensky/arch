run: build
	docker run -it --rm marcpartensky/arch
build:
	docker-compose build
