# Makefile

# Variables
IMAGE_NAME = node-pde
CONTAINER_NAME = node-pde-container

# Docker commands
build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it --rm --name $(CONTAINER_NAME) -v $(PWD):/app -p 3000:3000 $(IMAGE_NAME)

shell:
	docker run -it -p 3000:3000 $(IMAGE_NAME) /bin/ash

stop:
	docker stop $(CONTAINER_NAME)

clean:
	docker rm $(CONTAINER_NAME)

# Other tasks
install:
	npm install

start:
	npm start

test:
	npm test

