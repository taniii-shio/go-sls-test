build:
	env GOOS=linux go build -ldflags="-s -w" -o bin/main src/handler/main.go

clean:
	rm -rf ./bin

deploy: clean build
	sls deploy --verbose --aws-profile go-sls-test
