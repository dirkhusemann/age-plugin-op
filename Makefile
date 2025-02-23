# Makefile for age-plgin-op
#
# Copied from https://github.com/Foxboron/age-plugin-tpm/blob/master/Makefile

all: build

build: age-plugin-op

age-plugin-op:
	mkdir -p dist
	go build -o dist/age-plugin-op ./cmd/age-plugin-op

.PHONY: age-plugin-op

test:
	go test ./...

check:
	staticcheck ./...
	go vet ./...

.PHONY: test
