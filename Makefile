.PHONY: build run test clean
 
build:
	go build -o bin/hello .
	env
 
run: build
	./bin/hello $(ARGS)
 
test:
	go test ./...
 
clean:
	rm -rf bin
