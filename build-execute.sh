#!/bin/bash

# 创建 build 目录，如果不存在的话
mkdir -p build

# Linux amd64
GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o build/license-linux-amd64 ./main.go
# Linux arm64
GOOS=linux GOARCH=arm64 go build -ldflags="-s -w" -o build/license-linux-arm64 ./main.go
# FreeBSD amd64
GOOS=freebsd GOARCH=amd64 go build -ldflags="-s -w" -o build/license-freebsd-amd64 ./main.go
# Windows amd64
GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o build/license-windows-amd64.exe ./main.go
# macOS arm
GOOS=darwin GOARCH=arm64 go build -ldflags="-s -w" -o build/license-macos-arm64 ./main.go
