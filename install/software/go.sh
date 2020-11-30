#!/bin/bash

sudo pacman -S go
go env -w GOPROXY="https://goproxy.io,direct"
go env -w GO111MODULE="auto"
