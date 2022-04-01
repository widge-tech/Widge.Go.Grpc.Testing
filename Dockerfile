FROM alpine:3.15.0
ADD . /app
WORKDIR /app
EXPOSE 6000
ENTRYPOINT ["./widge.go.grpc.testing"]
