# Widge.Go.Grpc.Testing

[grpc go](https://grpc.io/docs/languages/go/)官方文档

## 开发依赖

### 2.1 Golang 环境

```bash
# Set GOPATH and add GOPATH/bin to PATH
export PATH="$PATH:$(go env GOPATH)/bin"
```

### 2.2 Protocol buffer 编译器

```bash
# MacOS
brew install protobuf

# Linux
apt install -y protobuf-compiler
```

或者[下载](https://github.com/protocolbuffers/protobuf/releases)可执行文件自行配置

### 2.3 Go 插件

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

## proto 编译

```bash
# MacOS & Linux
bash ./build.bash
```


## 运行

```bash
go mod tidy
go run .
```