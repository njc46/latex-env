
build:
	docker build -f Dockerfile -t latex-env:latest . --platform linux/amd64

tag:
	docker tag latex-env:latest njc2/latex-env:latest

push:
	docker push njc2/latex-env:latest

publish: build tag push
