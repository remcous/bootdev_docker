VERSION=0.2.0

build:
	go build -o goserver
	docker build . -t remcous/goserver:$(VERSION) -t remcous/goserver:latest

run:
	docker run -p 8080:8080 remcous/goserver:$(VERSION)

push:
	docker push remcous/goserver --all-tags

pull:
	docker pull remcous/goserver:$(VERSION)