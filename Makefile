default: build

test:
	go test ./...

build:
	go build

install: build
	mkdir -p ~/.tflint.d/plugins
	mv ./tflint-ruleset-template ~/.tflint.d/plugins

release:
	go run ./tools/release/main.go
