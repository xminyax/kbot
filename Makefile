APP := $(shell basename $(shell git remote get-url origin))
REGISTRY := minyax
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
OS=linux
#linux darwin windows
ARCH=amd64
#amd64 arm64
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
	docker build . -t ${REGISTRY}:${VERSION}-${OS}-${ARCH} --build-arg CGO_ENABLED=${CGO_ENABLED} --build-arg ARCH=${ARCH} --build-arg OS=${OS}

push:
	docker push ${REGISTRY}:${VERSION}-${OS}-${ARCH}

pushdoc:
	docker push ${REGISTRY}/${APP}:${VERSION}-${OS}-${ARCH}

imagedoc:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${OS}-${ARCH} --build-arg CGO_ENABLED=${CGO_ENABLED} --build-arg TARGETARCH=${ARCH} --build-arg TARGETOS=${TOS}

clean:
	rm -rf kbot
	docker rmi ${REGISTRY}:${VERSION}-${OS}-${ARCH}
