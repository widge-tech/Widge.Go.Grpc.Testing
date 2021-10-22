FROM alpine:3.14.2
ADD . /app
WORKDIR /app
EXPOSE 6000
ENTRYPOINT ["./widge.go.grpc.testing"]
