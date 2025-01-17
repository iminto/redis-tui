Version := $(shell date "+%Y%m%d%H%M")
GitCommit := $(shell git rev-parse HEAD)
LDFLAGS := "-s -w -X main.Version=$(Version) -X main.GitCommit=$(GitCommit)"

run-dev: build 
	./bin/redis-tui -h localhost 2>xxx.log

run: build 
	./bin/redis-tui

build:
	go build -race -ldflags $(LDFLAGS) -o bin/redis-tui *.go

release:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -ldflags $(LDFLAGS) -o release/redis-tui-win.exe *.go
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags $(LDFLAGS) -o release/redis-tui-linux *.go

.PHONY: run-dev run build release

