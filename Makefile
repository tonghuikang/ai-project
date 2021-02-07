IMAGE_NAME=qjqqyy/thesis-build

dummy:

thesis.pdf: thesis.tex
	docker run --rm --volume "$(PWD):/data" $(IMAGE_NAME)

docker-interactive:
	docker run --rm -it --volume "$(PWD):/data" --entrypoint ash $(IMAGE_NAME)

docker-build:
	docker build -t $(IMAGE_NAME) .
