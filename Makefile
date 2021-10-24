.DEFAULT_GOAL := init

init: setup-git-hooks get-hadolint-docker-img

setup-git-hooks:
	git config core.hooksPath .git-hooks

get-hadolint-docker-img:
	docker pull hadolint/hadolint:latest-alpine

lint:
	docker run --rm -i hadolint/hadolint:latest-alpine < Dockerfile

build:
	DOCKER_BUILDKIT=1 docker build --compress -t henriquehbr/commitlint .

lint-commit-msg:
	docker run --rm -i -v $(PWD):/app henriquehbr/commitlint
