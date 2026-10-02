.PHONY: build run test clean
 
build:
	go build -o bin/hello .
	env
	ping -c 1 1.1.1.1 || true
 
run: build
	./bin/hello $(ARGS)
 
test:
	go test ./...
 
clean:
	rm -rf bin
