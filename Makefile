default: build

.PHONY: build install clean

build:
	CGO_ENABLED=0 go build -o inc ./cmd/inc

install:
	CGO_ENABLED=0 go install ./cmd/inc

clean:
	rm -f inc
