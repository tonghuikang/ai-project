IMAGE_NAME	= qjqqyy/thesis-build
LATEXMK		= docker run $(DOCKER_RUN_ARGS) $(IMAGE_NAME)
DOCKER_RUN_ARGS	= --rm --volume "$(CURDIR):/data"

dummy:

thesis.pdf: thesis.tex thesis.bib $(shell find chapters -type f)
	$(LATEXMK)

clean:
	$(LATEXMK) -CA

docker-interactive:
	docker run -it --entrypoint ash $(DOCKER_RUN_ARGS) $(IMAGE_NAME)

docker-build:
	docker build -t $(IMAGE_NAME) .
	yes | docker image prune
