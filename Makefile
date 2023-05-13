APP := $(shell basename $(shell git remote get-url origin))
REGISTRY := xminyax
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
#OS=linux #linux darwin windows
#ARCH=amd64 #amd64 arm64
CGO_ENABLED=0

format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

get:
	go get


linux:
	${MAKE} build OS=linux ARCH=${ARCH} 

macos:
	${MAKE} build OS=darwin ARCH=${ARCH}

windows:
	${MAKE} build OS=windows ARCH=${ARCH} CGO_ENABLED=1

build: format get
	CGO_ENABLED=${CGO_ENABLED} GOOS=${OS} GOARCH=${ARCH} go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

image:
	podman build . -t ${REGISTRY}/${APP}:${VERSION}-${ARCH} --build-arg CGO_ENABLED=${CGO_ENABLED} --build-arg ARCH=${ARCH} --build-arg OS=${OS}

push:
	podman push ${REGISTRY}/${APP}:${VERSION}-${ARCH}

clean:
	rm -rf kbot
	podman rmi ${REGISTRY}/${APP}:${VERSION}-${ARCH}
