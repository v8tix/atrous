include .envrc

# ==================================================================================== #
# HELPERS
# ==================================================================================== #

## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

# ==================================================================================== #
# DEVELOPMENT
# ==================================================================================== #

## cntr/run: runs the container in the background
.PHONY: cntr/run
cntr/run:
	@./executables/run.sh

## cntr/attach: attaches the running container
.PHONY: cntr/attach
cntr/attach:
	@./executables/attach.sh

## cntr/stop: stop the running container
.PHONY: cntr/stop
cntr/stop:
	@./executables/stop.sh

## cntr/delete: stop and delete the image
.PHONY: cntr/delete
cntr/delete: cntr/stop
	@./executables/delete.sh

# ==================================================================================== #
# BUILD
# ==================================================================================== #
## cntr/build: builds the container image
.PHONY: cntr/build
cntr/build:
	@./build/build.sh

## cntr/push: push the container image to Docker Hub
.PHONY: cntr/push
cntr/push:
	@./executables/push_docker.sh







