# Golang

## 环境配置

### 安装

> 通过安装包安装（MacOS | Windows）

下载 golang [官方](https://golang.org)（[镜像](https://golang.google.cn/)）安装文件并安装

> 通过 [homebrew](https://brew.sh/) 安装（MacOS）

```bash
brew install golang
```

> 通过 [chocolatey](https://chocolatey.org/) 安装（Windows）

```bash
choco install golang
```

### 代理

第三方包的下载将通过国内镜像，避免出现官方网址被屏蔽的问题。

```bash
go env -w GOPROXY=https://goproxy.cn,direct
```

或者设置环境变量

```bash
export GOPROXY=https://goproxy.cn
```

## 运行案例

### 模块机制

Go Modules 是 Go 1.11 版本之后引入的，Go 1.11 之前使用 `$GOPATH` 机制。Go Modules 可以算作是较为完善的包管理工具。同时支持代理，国内也能享受高速的第三方包镜像服务。

初始化的模块名称推荐取当前项目在 git 仓库中的路径，比如当前项目地址为`https://github.com/jerry/eat`，则 go mod 初始化的名称为`github.com/jerry/eat`

```bash
go mod init github.com/jerry/eat
```

## 打包
