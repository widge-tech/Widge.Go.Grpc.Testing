FROM golang:1.17.2
ADD . /app
WORKDIR /app
CMD ["go","run","./src/main.go"]
