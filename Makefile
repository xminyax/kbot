APP := $(shell basename $(shell git remote get-url origin))
REGISTRY := xminyax
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux #linux darwin windows
TARGETARCH=arm64 #amd64 arm64


format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

get:
	go get

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

image:
	podman build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}  --build-arg TARGETARCH=${TARGETARCH}

push:
	podman push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

alinux:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

macos:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

amacos:
	CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

windows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

awindows:
	CGO_ENABLED=0 GOOS=windows GOARCH=arm64 go build -v -o kbot -ldflags "-X="github.com/xminyax/kbot/cmd.appVersion=${VERSION}

clean:
	rm -rf kbot
	podman rmi ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}
