#!make
IMAGE_NAME=radioastro/docker

.PHONY: all build run force-build

all: build run

build:
	docker build -t $(IMAGE_NAME) .

force-build:
	docker build --pull -t $(IMAGE_NAME) --no-cache=true .

run:
	docker run -ti $(IMAGE_NAME) 
