INSPEC_VERSION := 1.14.1

all: build push

build:
	docker build . -t willejs/inspec:latest -t willejs/inspec:${INSPEC_VERSION} --build-arg "INSPEC_VERSION=${INSPEC_VERSION}"

push:
	docker push willejs/inspec:latest
	docker push willejs/inspec:${INSPEC_VERSION}
