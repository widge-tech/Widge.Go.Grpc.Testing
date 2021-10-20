# Golang

## 环境配置

### 安装

安装golang，并把`${GOPATH}/bin`加入到环境变量中

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
export GOPROXY="https://goproxy.cn"
# echo 'export GOPROXY="https://goproxy.cn"' >> .zprofile
```

## 概念说明

## 模块机制

golang 不同于其他语言的项目组织形式，有`GOROOT`和`GOPATH`两个路径，一般项目会放在`GOPATH`的 src 里面，或者使用 Go Modules 模块机制，摆脱对项目路径的要求。

Go Modules 是 Go 1.11 版本之后引入的，Go 1.11 之前使用 `$GOPATH` 机制。Go Modules 可以算作是较为完善的包管理工具。同时支持代理，国内也能享受高速的第三方包镜像服务。

初始化的模块名称推荐取当前项目在 git 仓库中的路径，比如当前项目地址为`https://github.com/jerry/eat`，则 go mod 初始化的名称为`github.com/jerry/eat`

```bash
go mod init github.com/jerry/eat
```

### 发布模块

[Go.dev](https://go.dev/) is a companion website to golang.org. Golang.org is the home of the open source project and distribution

#### Adding a package

Data for the site is downloaded from proxy.golang.org. We monitor the Go Module Index regularly for new packages to add to pkg.go.dev. If you don’t see a package on pkg.go.dev, you can add it by doing one of the following:

- Visiting that page on pkg.go.dev, and clicking the “Request” button. For example:
  https://pkg.go.dev/example.com/my/module

- Making a request to proxy.golang.org for the module version, to any endpoint specified by the Module proxy protocol. For example:
  https://proxy.golang.org/example.com/my/module/@v/v1.0.0.info

- Downloading the package via the go command. For example:
  GOPROXY=https://proxy.golang.org GO111MODULE=on go get example.com/my/module@v1.0.0

#### Removing a package

If you would like to hide versions of a module on pkg.go.dev, as well as from the go command, you should retract them. Retracting a module version involves adding a retract directive to your go.mod file and publishing a new version. See the Go blog post New module changes in Go 1.16 and the modules reference for details.

If you cannot retract your module, you can file a request for the pkgsite team to remove your package.

## 打包
